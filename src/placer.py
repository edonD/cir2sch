"""
Component placement engine for analog schematics.

Uses a combination of:
1. Building block detection (diff pair, current mirror, cascode, inverter)
2. Hierarchical rule-based placement (VDD top, GND bottom, signal L→R)
3. Connectivity-aware positioning (place connected components nearby)
4. Array detection for regular structures (e.g., bitcell arrays)
"""

import math
import re
from collections import defaultdict
from dataclasses import dataclass, field
from parser import Circuit, Component, Net

# xschem coordinate grid — snap to multiples of 10
GRID = 10
# Spacing between components
H_SPACING = 260   # horizontal spacing between components
V_SPACING = 200   # vertical spacing between components
BLOCK_GAP = 100   # extra gap between building blocks

# Layout Y bands (negative Y is up in xschem)
VDD_Y = -600
PMOS_Y = -400
MID_Y = -300
NMOS_Y = -150
GND_Y = 50


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

    # --- Detect cross-coupled pairs first (highest priority) ---
    all_fets = {**mosfets_n, **mosfets_p}
    for name1, m1 in list(all_fets.items()):
        for name2, m2 in list(all_fets.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.type != m2.type:
                continue
            if m1.pins["gate"] == m2.pins["drain"] and m2.pins["gate"] == m1.pins["drain"]:
                cc_type = "cross_coupled_n" if m1.type == "mosfet_n" else "cross_coupled_p"
                blocks.append(BuildingBlock(type=cc_type, components=[name1, name2]))
                used.update([name1, name2])

    # --- Detect CMOS inverters ---
    for nname, nm in list(mosfets_n.items()):
        for pname, pm in list(mosfets_p.items()):
            if nname in used or pname in used:
                continue
            if nm.pins["gate"] == pm.pins["gate"] and nm.pins["drain"] == pm.pins["drain"]:
                blocks.append(BuildingBlock(type="inverter", components=[pname, nname]))
                used.update([nname, pname])

    # --- Detect differential pairs ---
    for fets, suffix in [(mosfets_n, "n"), (mosfets_p, "p")]:
        for name1, m1 in list(fets.items()):
            for name2, m2 in list(fets.items()):
                if name1 >= name2 or name1 in used or name2 in used:
                    continue
                if m1.pins["source"] == m2.pins["source"]:
                    gate1, gate2 = m1.pins["gate"], m2.pins["gate"]
                    if gate1 != gate2 and gate1 != m1.pins["drain"] and gate2 != m2.pins["drain"]:
                        blocks.append(BuildingBlock(
                            type=f"diff_pair_{suffix}",
                            components=[name1, name2]
                        ))
                        used.update([name1, name2])

    # --- Detect current mirrors ---
    for name1, m1 in list(all_fets.items()):
        for name2, m2 in list(all_fets.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.type != m2.type:
                continue
            if m1.pins["gate"] == m2.pins["gate"]:
                d1 = m1.pins["gate"] == m1.pins["drain"]
                d2 = m2.pins["gate"] == m2.pins["drain"]
                if d1 or d2:
                    mirror_type = "current_mirror_n" if m1.type == "mosfet_n" else "current_mirror_p"
                    if d1:
                        blocks.append(BuildingBlock(type=mirror_type, components=[name1, name2]))
                    else:
                        blocks.append(BuildingBlock(type=mirror_type, components=[name2, name1]))
                    used.update([name1, name2])

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


def _detect_array_pattern(circuit: Circuit) -> dict:
    """Detect if components form a regular array pattern."""
    array_pattern = re.compile(r'^(.*?)_?r(\d+)_?c(\d+)$', re.IGNORECASE)
    prefix_counts = defaultdict(list)

    for name in circuit.components:
        m = array_pattern.match(name)
        if m:
            prefix = m.group(1)
            row, col = int(m.group(2)), int(m.group(3))
            prefix_counts[prefix].append((row, col, name))

    best_prefix = None
    best_count = 0
    for prefix, items in prefix_counts.items():
        if len(items) > best_count:
            best_count = len(items)
            best_prefix = prefix

    if best_prefix and best_count >= 4:
        items = prefix_counts[best_prefix]
        rows = max(r for r, c, n in items) + 1
        cols = max(c for r, c, n in items) + 1
        grid = {}
        for r, c, n in items:
            grid[(r, c)] = n
        return {"rows": rows, "cols": cols, "prefix": best_prefix, "grid": grid}

    return {}


def _find_tail_source(circuit: Circuit, diff_pair_block: BuildingBlock) -> str | None:
    """Find the tail current source transistor for a differential pair."""
    c1_name = diff_pair_block.components[0]
    c1 = circuit.components[c1_name]
    shared_source = c1.pins["source"]

    for name, comp in circuit.components.items():
        if name in diff_pair_block.components:
            continue
        if comp.type in ("mosfet_n", "mosfet_p"):
            if comp.pins["drain"] == shared_source:
                return name
    return None


def _find_load_pair(circuit: Circuit, diff_pair_block: BuildingBlock) -> list[str]:
    """Find PMOS load transistors connected to a NMOS diff pair's drains."""
    c1_name, c2_name = diff_pair_block.components
    c1, c2 = circuit.components[c1_name], circuit.components[c2_name]
    drain1, drain2 = c1.pins["drain"], c2.pins["drain"]

    loads = []
    for name, comp in circuit.components.items():
        if name in diff_pair_block.components:
            continue
        if comp.type == "mosfet_p":
            if comp.pins["drain"] == drain1 or comp.pins["drain"] == drain2:
                loads.append(name)
    return loads


def place_circuit(circuit: Circuit) -> PlacedCircuit:
    """Place all components in a circuit."""
    result = PlacedCircuit(circuit=circuit)

    # Check for array pattern first
    array_info = _detect_array_pattern(circuit)
    if array_info and len(array_info.get("grid", {})) > 8:
        return _place_array_circuit(circuit, array_info)

    blocks = detect_building_blocks(circuit)

    # Track which components are in blocks
    block_comps = set()
    for b in blocks:
        block_comps.update(b.components)

    # Track components that get placed as part of block context
    context_placed = set()

    # Classify remaining components
    sources = []
    pmos_free = []
    nmos_free = []
    passives = []
    subcircuits = []
    other = []

    for name, comp in circuit.components.items():
        if name in block_comps:
            continue
        if comp.type in ("voltage_source", "current_source"):
            sources.append(name)
        elif comp.type == "mosfet_p":
            pmos_free.append(name)
        elif comp.type == "mosfet_n":
            nmos_free.append(name)
        elif comp.type in ("resistor", "capacitor"):
            passives.append(name)
        elif comp.type == "subcircuit":
            subcircuits.append(name)
        else:
            other.append(name)

    # === Stage 1: Place building blocks with their context ===
    cur_x = 300

    for block in blocks:
        if block.type.startswith("diff_pair"):
            c1, c2 = block.components[0], block.components[1]
            is_n = "n" in block.type

            if is_n:
                pair_y = NMOS_Y
            else:
                pair_y = PMOS_Y

            # Place the pair symmetrically
            half_w = H_SPACING // 2
            result.placements[c1] = Placement(x=_snap(cur_x - half_w), y=_snap(pair_y))
            result.placements[c2] = Placement(x=_snap(cur_x + half_w), y=_snap(pair_y), flip=1)
            block.center_x = cur_x
            block.center_y = pair_y

            # Place tail current source directly below
            if is_n:
                tail = _find_tail_source(circuit, block)
                if tail and tail not in result.placements:
                    result.placements[tail] = Placement(x=_snap(cur_x), y=_snap(pair_y + V_SPACING))
                    context_placed.add(tail)

                # Place PMOS loads above the diff pair
                loads = _find_load_pair(circuit, block)
                for i, load_name in enumerate(loads):
                    if load_name not in result.placements:
                        lx = cur_x - half_w if i == 0 else cur_x + half_w
                        result.placements[load_name] = Placement(x=_snap(lx), y=_snap(PMOS_Y))
                        context_placed.add(load_name)

            cur_x += H_SPACING * 2 + BLOCK_GAP

        elif block.type.startswith("current_mirror"):
            c1, c2 = block.components[0], block.components[1]
            y = NMOS_Y if "n" in block.type else PMOS_Y
            half_w = H_SPACING // 2
            result.placements[c1] = Placement(x=_snap(cur_x - half_w), y=_snap(y))
            result.placements[c2] = Placement(x=_snap(cur_x + half_w), y=_snap(y))
            block.center_x = cur_x
            block.center_y = y
            cur_x += H_SPACING * 2 + BLOCK_GAP

        elif block.type.startswith("cross_coupled"):
            c1, c2 = block.components[0], block.components[1]
            y = NMOS_Y if "n" in block.type else PMOS_Y
            half_w = H_SPACING // 2
            result.placements[c1] = Placement(x=_snap(cur_x - half_w), y=_snap(y))
            result.placements[c2] = Placement(x=_snap(cur_x + half_w), y=_snap(y), flip=1)
            block.center_x = cur_x
            block.center_y = y
            cur_x += H_SPACING * 2 + BLOCK_GAP

        elif block.type == "inverter":
            cp, cn = block.components[0], block.components[1]
            result.placements[cp] = Placement(x=_snap(cur_x), y=_snap(PMOS_Y))
            result.placements[cn] = Placement(x=_snap(cur_x), y=_snap(NMOS_Y))
            block.center_x = cur_x
            block.center_y = MID_Y
            cur_x += H_SPACING + BLOCK_GAP

    # === Stage 2: Place remaining PMOS near top, NMOS near bottom ===
    px = cur_x
    for name in pmos_free:
        if name not in result.placements and name not in context_placed:
            result.placements[name] = Placement(x=_snap(px), y=_snap(PMOS_Y))
            px += H_SPACING

    nx = cur_x
    for name in nmos_free:
        if name not in result.placements and name not in context_placed:
            result.placements[name] = Placement(x=_snap(nx), y=_snap(NMOS_Y))
            nx += H_SPACING

    # === Stage 3: Place passives near connected components ===
    for name in passives:
        if name in result.placements:
            continue
        pos = _find_centroid_of_neighbors(circuit, name, result)
        if pos:
            cx, cy = pos
            # Place nearby but offset slightly to avoid overlap
            candidate_x = _snap(cx + 120)
            candidate_y = _snap(cy)
            # Check if this would overlap
            if _is_occupied(result, candidate_x, candidate_y, 100):
                candidate_x = _snap(cx + H_SPACING)
            result.placements[name] = Placement(x=candidate_x, y=candidate_y)
        else:
            max_x = max((p.x for p in result.placements.values()), default=cur_x)
            result.placements[name] = Placement(x=_snap(max_x + H_SPACING), y=_snap(MID_Y))

    # === Stage 4: Place sources ===
    # Group voltage sources: place test/bias sources to the left
    src_x = 50
    src_y = MID_Y
    for name in sources:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(src_x), y=_snap(src_y))
            src_y += V_SPACING

    # === Stage 5: Place subcircuit instances in a grid ===
    if subcircuits:
        cols = max(1, int(math.sqrt(len(subcircuits))))
        sub_x_start = max((p.x for p in result.placements.values()), default=300) + H_SPACING
        for i, name in enumerate(subcircuits):
            row = i // cols
            col = i % cols
            result.placements[name] = Placement(
                x=_snap(sub_x_start + col * H_SPACING),
                y=_snap(-300 + row * V_SPACING)
            )

    # === Stage 6: Place remaining ===
    max_x = max((p.x for p in result.placements.values()), default=cur_x)
    ox = max_x + H_SPACING
    oy = MID_Y
    for name in other:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(ox), y=_snap(oy))
            oy += V_SPACING

    # === Stage 7: Resolve any overlaps ===
    _resolve_overlaps(result)

    return result


def _is_occupied(placed: PlacedCircuit, x: int, y: int, min_dist: int) -> bool:
    """Check if a position is too close to existing placements."""
    for p in placed.placements.values():
        dx = abs(p.x - x)
        dy = abs(p.y - y)
        if dx < min_dist and dy < min_dist:
            return True
    return False


def _place_array_circuit(circuit: Circuit, array_info: dict) -> PlacedCircuit:
    """Place a circuit with a regular array structure."""
    result = PlacedCircuit(circuit=circuit)
    grid = array_info["grid"]
    rows = array_info["rows"]
    cols = array_info["cols"]

    cell_h = H_SPACING
    cell_v = V_SPACING

    array_left = 500
    array_top = -200
    array_comps = set(grid.values())

    for (r, c), name in grid.items():
        result.placements[name] = Placement(
            x=_snap(array_left + c * cell_h),
            y=_snap(array_top + r * cell_v)
        )

    # Place periphery
    periphery = [n for n in circuit.components if n not in array_comps]
    col_periphery = defaultdict(list)
    row_periphery = defaultdict(list)
    unplaced = []

    for name in periphery:
        placed_col = _find_array_column(name, circuit, grid, cols)
        placed_row = _find_array_row(name, circuit, grid, rows)
        if placed_col is not None:
            col_periphery[placed_col].append(name)
        elif placed_row is not None:
            row_periphery[placed_row].append(name)
        else:
            unplaced.append(name)

    for col, names in col_periphery.items():
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left + col * cell_h),
                y=_snap(array_top - (i + 1) * V_SPACING)
            )

    for row, names in row_periphery.items():
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left - (i + 1) * H_SPACING),
                y=_snap(array_top + row * cell_v)
            )

    ux = array_left
    uy = array_top + rows * cell_v + V_SPACING
    for name in unplaced:
        result.placements[name] = Placement(x=_snap(ux), y=_snap(uy))
        ux += H_SPACING
        if ux > array_left + cols * cell_h:
            ux = array_left
            uy += V_SPACING

    return result


def _find_array_column(comp_name: str, circuit: Circuit, grid: dict, cols: int) -> int | None:
    """Check if a component connects to a specific array column's nets."""
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())

    col_connections = defaultdict(int)
    for (r, c), arr_name in grid.items():
        arr_comp = circuit.components[arr_name]
        arr_nets = set(arr_comp.pins.values())
        shared = comp_nets & arr_nets
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            col_connections[c] += len(shared)

    if col_connections:
        return max(col_connections, key=col_connections.get)
    return None


def _find_array_row(comp_name: str, circuit: Circuit, grid: dict, rows: int) -> int | None:
    """Check if a component connects to a specific array row's nets."""
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())

    row_connections = defaultdict(int)
    for (r, c), arr_name in grid.items():
        arr_comp = circuit.components[arr_name]
        arr_nets = set(arr_comp.pins.values())
        shared = comp_nets & arr_nets
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            row_connections[r] += len(shared)

    if row_connections:
        return max(row_connections, key=row_connections.get)
    return None


def _find_centroid_of_neighbors(circuit: Circuit, comp_name: str, placed: PlacedCircuit) -> tuple | None:
    """Find the centroid of already-placed components connected to comp_name."""
    comp = circuit.components[comp_name]
    positions = []
    for pin_name, net_name in comp.pins.items():
        if _classify_net(circuit, net_name) in ("supply", "ground"):
            continue
        if net_name in circuit.nets:
            for cn, pn in circuit.nets[net_name].connections:
                if cn != comp_name and cn in placed.placements:
                    p = placed.placements[cn]
                    positions.append((p.x, p.y))
    if positions:
        cx = sum(x for x, y in positions) / len(positions)
        cy = sum(y for x, y in positions) / len(positions)
        return (cx, cy)
    return None


def _resolve_overlaps(placed: PlacedCircuit):
    """Push overlapping components apart."""
    names = list(placed.placements.keys())
    min_dist_x = 160
    min_dist_y = 100

    for _ in range(30):
        moved = False
        for i in range(len(names)):
            for j in range(i + 1, len(names)):
                p1, p2 = placed.placements[names[i]], placed.placements[names[j]]
                dx = abs(p2.x - p1.x)
                dy = abs(p2.y - p1.y)
                if dx < min_dist_x and dy < min_dist_y:
                    # Push apart horizontally
                    push_x = (min_dist_x - dx) / 2 + 10
                    if p2.x >= p1.x:
                        p1.x = _snap(p1.x - push_x)
                        p2.x = _snap(p2.x + push_x)
                    else:
                        p1.x = _snap(p1.x + push_x)
                        p2.x = _snap(p2.x - push_x)
                    moved = True
        if not moved:
            break


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
