"""
Component placement engine for analog schematics.

Uses a combination of:
1. Building block detection (diff pair, current mirror, etc.)
2. Hierarchical rule-based placement (VDD top, GND bottom, signal L→R)
3. Force-directed refinement for wire minimization
"""

import math
from dataclasses import dataclass, field
from parser import Circuit, Component, Net

# xschem coordinate grid — snap to multiples of 10
GRID = 10
# Spacing between components
H_SPACING = 200   # horizontal spacing between components
V_SPACING = 160   # vertical spacing between components
# Supply rail positions
VDD_Y = -600
GND_Y = 0


@dataclass
class Placement:
    """Placement result for a single component."""
    x: float = 0
    y: float = 0
    rotation: int = 0   # 0-3 (0°, 90°, 180°, 270°)
    flip: int = 0        # 0 or 1 (horizontal mirror)


@dataclass
class PlacedCircuit:
    """Circuit with placement information."""
    circuit: Circuit
    placements: dict = field(default_factory=dict)  # comp_name -> Placement


@dataclass
class BuildingBlock:
    """Detected analog building block."""
    type: str           # diff_pair, current_mirror, cascode, inverter, cross_coupled, etc.
    components: list    # Component names in this block
    center_x: float = 0
    center_y: float = 0


def _snap(val: float) -> int:
    """Snap a coordinate to the grid."""
    return round(val / GRID) * GRID


def detect_building_blocks(circuit: Circuit) -> list[BuildingBlock]:
    """Detect common analog building blocks from the circuit topology."""
    blocks = []
    comps = circuit.components
    used = set()

    mosfets_n = {n: c for n, c in comps.items() if c.type == "mosfet_n"}
    mosfets_p = {n: c for n, c in comps.items() if c.type == "mosfet_p"}

    # --- Detect differential pairs ---
    # Two MOSFETs of same type sharing the source net
    for name1, m1 in list(mosfets_n.items()):
        for name2, m2 in list(mosfets_n.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.pins["source"] == m2.pins["source"]:
                gate1, gate2 = m1.pins["gate"], m2.pins["gate"]
                # Both gates should be input-like (different nets, not self-connected)
                if gate1 != gate2 and gate1 != m1.pins["drain"] and gate2 != m2.pins["drain"]:
                    blocks.append(BuildingBlock(
                        type="diff_pair_n",
                        components=[name1, name2]
                    ))
                    used.update([name1, name2])

    for name1, m1 in list(mosfets_p.items()):
        for name2, m2 in list(mosfets_p.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.pins["source"] == m2.pins["source"]:
                gate1, gate2 = m1.pins["gate"], m2.pins["gate"]
                if gate1 != gate2 and gate1 != m1.pins["drain"] and gate2 != m2.pins["drain"]:
                    blocks.append(BuildingBlock(
                        type="diff_pair_p",
                        components=[name1, name2]
                    ))
                    used.update([name1, name2])

    # --- Detect current mirrors ---
    # Two MOSFETs of same type sharing gate net, one diode-connected
    all_fets = {**mosfets_n, **mosfets_p}
    for name1, m1 in list(all_fets.items()):
        for name2, m2 in list(all_fets.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.type != m2.type:
                continue
            if m1.pins["gate"] == m2.pins["gate"]:
                # Check if one is diode-connected (gate == drain)
                d1 = m1.pins["gate"] == m1.pins["drain"]
                d2 = m2.pins["gate"] == m2.pins["drain"]
                if d1 or d2:
                    mirror_type = "current_mirror_n" if m1.type == "mosfet_n" else "current_mirror_p"
                    # Put diode-connected first
                    if d1:
                        blocks.append(BuildingBlock(type=mirror_type, components=[name1, name2]))
                    else:
                        blocks.append(BuildingBlock(type=mirror_type, components=[name2, name1]))
                    used.update([name1, name2])

    # --- Detect cross-coupled pairs ---
    for name1, m1 in list(all_fets.items()):
        for name2, m2 in list(all_fets.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.type != m2.type:
                continue
            # Cross-coupled: gate1=drain2 AND gate2=drain1
            if m1.pins["gate"] == m2.pins["drain"] and m2.pins["gate"] == m1.pins["drain"]:
                cc_type = "cross_coupled_n" if m1.type == "mosfet_n" else "cross_coupled_p"
                blocks.append(BuildingBlock(type=cc_type, components=[name1, name2]))
                used.update([name1, name2])

    # --- Detect CMOS inverters ---
    for nname, nm in list(mosfets_n.items()):
        for pname, pm in list(mosfets_p.items()):
            if nname in used or pname in used:
                continue
            # Shared gate and shared drain
            if nm.pins["gate"] == pm.pins["gate"] and nm.pins["drain"] == pm.pins["drain"]:
                blocks.append(BuildingBlock(type="inverter", components=[pname, nname]))
                used.update([nname, pname])

    return blocks


def _classify_net(circuit: Circuit, net_name: str) -> str:
    """Classify a net as supply, ground, signal, or bias."""
    low = net_name.lower()
    if low in ('vdd', 'vcc', 'avdd'):
        return "supply"
    if low in ('vss', 'gnd', '0'):
        return "ground"
    if 'bias' in low:
        return "bias"
    return "signal"


def place_circuit(circuit: Circuit) -> PlacedCircuit:
    """Place all components in a circuit."""
    result = PlacedCircuit(circuit=circuit)
    blocks = detect_building_blocks(circuit)

    # Track which components are in blocks
    block_comps = set()
    for b in blocks:
        block_comps.update(b.components)

    # Separate components by type for layered placement
    sources = []
    pmos = []
    nmos = []
    passives = []
    other = []

    for name, comp in circuit.components.items():
        if comp.type in ("voltage_source", "current_source"):
            sources.append(name)
        elif comp.type == "mosfet_p":
            pmos.append(name)
        elif comp.type == "mosfet_n":
            nmos.append(name)
        elif comp.type in ("resistor", "capacitor"):
            passives.append(name)
        else:
            other.append(name)

    # === Stage 1: Place building blocks ===
    block_x = 400
    for block in blocks:
        if block.type.startswith("diff_pair"):
            # Place symmetrically around center
            c1, c2 = block.components[0], block.components[1]
            y = -300 if "n" in block.type else -400
            result.placements[c1] = Placement(x=_snap(block_x - H_SPACING // 2), y=_snap(y))
            result.placements[c2] = Placement(x=_snap(block_x + H_SPACING // 2), y=_snap(y), flip=1)
            block.center_x = block_x
            block.center_y = y
            block_x += H_SPACING * 2

        elif block.type.startswith("current_mirror"):
            c1, c2 = block.components[0], block.components[1]
            y = -200 if "n" in block.type else -500
            result.placements[c1] = Placement(x=_snap(block_x - H_SPACING // 2), y=_snap(y))
            result.placements[c2] = Placement(x=_snap(block_x + H_SPACING // 2), y=_snap(y))
            block.center_x = block_x
            block.center_y = y
            block_x += H_SPACING * 2

        elif block.type.startswith("cross_coupled"):
            c1, c2 = block.components[0], block.components[1]
            y = -350
            result.placements[c1] = Placement(x=_snap(block_x - H_SPACING // 2), y=_snap(y))
            result.placements[c2] = Placement(x=_snap(block_x + H_SPACING // 2), y=_snap(y), flip=1)
            block.center_x = block_x
            block.center_y = y
            block_x += H_SPACING * 2

        elif block.type == "inverter":
            cp, cn = block.components[0], block.components[1]
            result.placements[cp] = Placement(x=_snap(block_x), y=_snap(-450))
            result.placements[cn] = Placement(x=_snap(block_x), y=_snap(-300))
            block.center_x = block_x
            block.center_y = -375
            block_x += H_SPACING

    # === Stage 2: Place remaining transistors ===
    # PMOS near top, NMOS near bottom
    px = block_x
    for name in pmos:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(px), y=_snap(-450))
            px += H_SPACING

    nx = block_x
    for name in nmos:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(nx), y=_snap(-200))
            nx += H_SPACING

    # === Stage 3: Place passives ===
    # Compensation caps/resistors go near the output stage
    pass_x = max(px, nx) + H_SPACING
    pass_y = -350
    for name in passives:
        result.placements[name] = Placement(x=_snap(pass_x), y=_snap(pass_y))
        pass_y += V_SPACING

    # === Stage 4: Place sources on the left ===
    src_y = -200
    for name in sources:
        result.placements[name] = Placement(x=_snap(100), y=_snap(src_y))
        src_y += V_SPACING

    # === Stage 5: Place remaining components ===
    ox = pass_x + H_SPACING
    oy = -300
    for name in other:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(ox), y=_snap(oy))
            oy += V_SPACING

    # === Stage 6: Force-directed refinement ===
    result = _refine_placement(result)

    return result


def _refine_placement(placed: PlacedCircuit, iterations: int = 50) -> PlacedCircuit:
    """Refine placement using force-directed approach to minimize wire length."""
    circuit = placed.circuit
    placements = placed.placements

    # Skip if too few components
    if len(placements) < 3:
        return placed

    for _ in range(iterations):
        forces = {name: (0.0, 0.0) for name in placements}

        # Attractive forces: connected components pull toward each other
        for net_name, net in circuit.nets.items():
            # Skip supply/ground nets — they don't create layout forces
            ntype = _classify_net(circuit, net_name)
            if ntype in ("supply", "ground"):
                continue

            conns = [(cn, pn) for cn, pn in net.connections if cn in placements]
            for i in range(len(conns)):
                for j in range(i + 1, len(conns)):
                    c1, c2 = conns[i][0], conns[j][0]
                    p1, p2 = placements[c1], placements[c2]
                    dx = p2.x - p1.x
                    dy = p2.y - p1.y
                    dist = math.sqrt(dx * dx + dy * dy) + 1
                    # Spring force proportional to distance
                    force = 0.05 * dist
                    fx = force * dx / dist
                    fy = force * dy / dist
                    fx1, fy1 = forces[c1]
                    fx2, fy2 = forces[c2]
                    forces[c1] = (fx1 + fx, fy1 + fy)
                    forces[c2] = (fx2 - fx, fy2 - fy)

        # Repulsive forces: prevent overlap
        names = list(placements.keys())
        for i in range(len(names)):
            for j in range(i + 1, len(names)):
                p1, p2 = placements[names[i]], placements[names[j]]
                dx = p2.x - p1.x
                dy = p2.y - p1.y
                dist = math.sqrt(dx * dx + dy * dy) + 1
                if dist < H_SPACING:
                    repel = 2.0 * (H_SPACING - dist)
                    fx = repel * dx / dist if dx != 0 else repel
                    fy = repel * dy / dist if dy != 0 else repel
                    fx1, fy1 = forces[names[i]]
                    fx2, fy2 = forces[names[j]]
                    forces[names[i]] = (fx1 - fx, fy1 - fy)
                    forces[names[j]] = (fx2 + fx, fy2 + fy)

        # Apply forces with damping
        max_move = 20
        for name, (fx, fy) in forces.items():
            p = placements[name]
            dx = max(-max_move, min(max_move, fx))
            dy = max(-max_move, min(max_move, fy))
            p.x = _snap(p.x + dx)
            p.y = _snap(p.y + dy)

    return placed


if __name__ == "__main__":
    from parser import parse_netlist, print_circuit
    import sys
    if len(sys.argv) < 2:
        print("Usage: python placer.py <netlist.cir>")
        sys.exit(1)
    circuit = parse_netlist(sys.argv[1])
    blocks = detect_building_blocks(circuit)
    print(f"Detected {len(blocks)} building blocks:")
    for b in blocks:
        print(f"  {b.type}: {b.components}")
    placed = place_circuit(circuit)
    print(f"\nPlacements:")
    for name, p in placed.placements.items():
        print(f"  {name}: ({p.x}, {p.y}) rot={p.rotation} flip={p.flip}")
