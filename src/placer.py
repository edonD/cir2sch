"""
Component placement engine for analog schematics.

Strategy:
1. Detect building blocks (diff pair, current mirror, cascode, inverter, cross-coupled)
2. Group connected blocks into vertical stacks (PMOS top, NMOS bottom)
3. Place remaining transistors in PMOS/NMOS bands
4. Place passives near their connections
5. Place sources compactly
6. Array detection for regular structures
"""

import math
import re
from collections import defaultdict
from dataclasses import dataclass, field
from parser import Circuit, Component, Net

GRID = 10
H_SPACING = 220
V_SPACING = 180
BLOCK_GAP = 60

# Y bands
VDD_Y = -550
PMOS_Y = -400
MID_Y = -280
NMOS_Y = -150
GND_Y = 50


@dataclass
class Placement:
    x: float = 0
    y: float = 0
    rotation: int = 0
    flip: int = 0


@dataclass
class PlacedCircuit:
    circuit: Circuit
    placements: dict = field(default_factory=dict)


@dataclass
class BuildingBlock:
    type: str
    components: list
    center_x: float = 0
    center_y: float = 0


def _snap(val: float) -> int:
    return round(val / GRID) * GRID


def _find_resistor_connected_net(circuit: Circuit, net_name: str) -> set:
    """Find nets reachable from net_name through a single resistor."""
    result = set()
    if net_name not in circuit.nets:
        return result
    for cn, pn in circuit.nets[net_name].connections:
        comp = circuit.components.get(cn)
        if comp and comp.type == "resistor":
            other_pin = "pin2" if pn == "pin1" else "pin1"
            other_net = comp.pins.get(other_pin, "")
            if other_net and _classify_net(circuit, other_net) == "signal":
                result.add(other_net)
    return result


def detect_building_blocks(circuit: Circuit) -> list[BuildingBlock]:
    """Detect common analog building blocks from the circuit topology."""
    blocks = []
    comps = circuit.components
    used = set()

    mosfets_n = {n: c for n, c in comps.items() if c.type == "mosfet_n"}
    mosfets_p = {n: c for n, c in comps.items() if c.type == "mosfet_p"}
    all_fets = {**mosfets_n, **mosfets_p}

    # Cross-coupled pairs (highest priority)
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

    # CMOS inverters
    for nname, nm in list(mosfets_n.items()):
        for pname, pm in list(mosfets_p.items()):
            if nname in used or pname in used:
                continue
            if nm.pins["gate"] == pm.pins["gate"] and nm.pins["drain"] == pm.pins["drain"]:
                blocks.append(BuildingBlock(type="inverter", components=[pname, nname]))
                used.update([nname, pname])

    # Transmission gates (NMOS + PMOS sharing drain and source, different gates)
    for nname, nm in list(mosfets_n.items()):
        for pname, pm in list(mosfets_p.items()):
            if nname in used or pname in used:
                continue
            if nm.pins["drain"] == pm.pins["drain"] and nm.pins["source"] == pm.pins["source"]:
                if nm.pins["gate"] != pm.pins["gate"]:
                    blocks.append(BuildingBlock(type="tgate", components=[pname, nname]))
                    used.update([nname, pname])

    # Differential pairs (including degenerated: sources connect through resistors)
    for fets, suffix in [(mosfets_n, "n"), (mosfets_p, "p")]:
        for name1, m1 in list(fets.items()):
            for name2, m2 in list(fets.items()):
                if name1 >= name2 or name1 in used or name2 in used:
                    continue
                g1, g2 = m1.pins["gate"], m2.pins["gate"]
                if g1 == g2 or g1 == m1.pins["drain"] or g2 == m2.pins["drain"]:
                    continue
                # Direct shared source
                if m1.pins["source"] == m2.pins["source"]:
                    blocks.append(BuildingBlock(type=f"diff_pair_{suffix}", components=[name1, name2]))
                    used.update([name1, name2])
                    continue
                # Degenerated: sources connect through resistors to common node
                s1_nets = _find_resistor_connected_net(circuit, m1.pins["source"])
                s2_nets = _find_resistor_connected_net(circuit, m2.pins["source"])
                if s1_nets & s2_nets:
                    blocks.append(BuildingBlock(type=f"diff_pair_{suffix}", components=[name1, name2]))
                    used.update([name1, name2])

    # Matched load pairs (same gate, same type, not diode-connected)
    for name1, m1 in list(all_fets.items()):
        for name2, m2 in list(all_fets.items()):
            if name1 >= name2 or name1 in used or name2 in used:
                continue
            if m1.type != m2.type:
                continue
            if m1.pins["gate"] == m2.pins["gate"]:
                d1 = m1.pins["gate"] == m1.pins["drain"]
                d2 = m2.pins["gate"] == m2.pins["drain"]
                if not d1 and not d2:
                    mt = "matched_pair_n" if m1.type == "mosfet_n" else "matched_pair_p"
                    blocks.append(BuildingBlock(type=mt, components=[name1, name2]))
                    used.update([name1, name2])

    # Current mirrors
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
                    mt = "current_mirror_n" if m1.type == "mosfet_n" else "current_mirror_p"
                    if d1:
                        blocks.append(BuildingBlock(type=mt, components=[name1, name2]))
                    else:
                        blocks.append(BuildingBlock(type=mt, components=[name2, name1]))
                    used.update([name1, name2])

    return blocks


def _classify_net(circuit: Circuit, net_name: str) -> str:
    low = net_name.lower()
    if low in ('vdd', 'vcc', 'avdd'):
        return "supply"
    if low in ('vss', 'gnd', '0'):
        return "ground"
    if 'bias' in low:
        return "bias"
    return "signal"


def _block_signal_nets(circuit: Circuit, block: BuildingBlock) -> set:
    """Get signal nets connected to a building block."""
    nets = set()
    for comp_name in block.components:
        comp = circuit.components[comp_name]
        for pin, net in comp.pins.items():
            if _classify_net(circuit, net) == "signal":
                nets.add(net)
    return nets


def _group_connected_blocks(circuit: Circuit, blocks: list[BuildingBlock]) -> list[list[BuildingBlock]]:
    """Group building blocks that share signal nets into stacks."""
    if not blocks:
        return []

    # Build adjacency
    n = len(blocks)
    block_nets = [_block_signal_nets(circuit, b) for b in blocks]
    adj = defaultdict(set)

    for i in range(n):
        for j in range(i + 1, n):
            if block_nets[i] & block_nets[j]:
                adj[i].add(j)
                adj[j].add(i)

    # BFS to find connected components
    visited = set()
    groups = []
    for i in range(n):
        if i in visited:
            continue
        group = []
        queue = [i]
        visited.add(i)
        while queue:
            node = queue.pop(0)
            group.append(blocks[node])
            for neighbor in adj[node]:
                if neighbor not in visited:
                    visited.add(neighbor)
                    queue.append(neighbor)
        groups.append(group)

    return groups


def _is_p_type(block: BuildingBlock) -> bool:
    """Check if a block is PMOS-based (or mixed like inverter/tgate)."""
    return block.type.endswith("_p") or block.type in ("inverter", "tgate")


def _is_symmetric_block(block: BuildingBlock) -> bool:
    """Check if a block should have its second component flipped (symmetric pair)."""
    return block.type.startswith("diff_pair") or block.type.startswith("cross_coupled") or \
           block.type.startswith("matched_pair")


def _sort_nmos_blocks_by_stacking(circuit: Circuit, n_blocks: list[BuildingBlock]) -> tuple[list, list]:
    """Sort NMOS blocks into top and bottom based on stacking relationships.

    If block A's source net == block B's drain net (via any component path),
    then A is "above" B in the stack. Returns (top_blocks, bottom_blocks).
    """
    # Get source and drain nets for each block
    block_sources = {}
    block_drains = {}
    for block in n_blocks:
        sources = set()
        drains = set()
        for comp_name in block.components:
            comp = circuit.components[comp_name]
            sources.add(comp.pins["source"])
            drains.add(comp.pins["drain"])
        block_sources[id(block)] = sources
        block_drains[id(block)] = drains

    # Check if any block's source connects to another block's drain
    # or to a free transistor's drain (through nets)
    top = []
    bottom = []

    for block in n_blocks:
        is_top = False
        src_nets = block_sources[id(block)]
        for other in n_blocks:
            if other is block:
                continue
            # If this block's source connects to other's drain → this is on top
            drain_nets = block_drains[id(other)]
            if src_nets & drain_nets:
                is_top = True
                break

        # Also check if source connects to any free transistor's drain
        if not is_top:
            for name, comp in circuit.components.items():
                if name in block.components:
                    continue
                if comp.type in ("mosfet_n", "mosfet_p"):
                    if comp.pins.get("drain") in src_nets:
                        is_top = True
                        break

        if is_top:
            top.append(block)
        else:
            bottom.append(block)

    return top, bottom


def _find_tail_source(circuit: Circuit, diff_pair_block: BuildingBlock) -> str | None:
    """Find tail current source for a diff pair, including degenerated pairs."""
    c1 = circuit.components[diff_pair_block.components[0]]
    shared_source = c1.pins["source"]

    # Direct connection: drain == shared source
    for name, comp in circuit.components.items():
        if name in diff_pair_block.components:
            continue
        if comp.type in ("mosfet_n", "mosfet_p"):
            if comp.pins["drain"] == shared_source:
                return name

    # Degenerated: source connects through resistor to common node with tail
    common_nets = _find_resistor_connected_net(circuit, shared_source)
    for common_net in common_nets:
        for name, comp in circuit.components.items():
            if name in diff_pair_block.components:
                continue
            if comp.type in ("mosfet_n", "mosfet_p"):
                if comp.pins["drain"] == common_net:
                    return name
    return None


def _find_load_pair(circuit: Circuit, diff_pair_block: BuildingBlock) -> list[str]:
    c1, c2 = [circuit.components[n] for n in diff_pair_block.components]
    drains = {c1.pins["drain"], c2.pins["drain"]}
    loads = []
    for name, comp in circuit.components.items():
        if name in diff_pair_block.components:
            continue
        if comp.type == "mosfet_p" and comp.pins["drain"] in drains:
            loads.append(name)
    return loads


def _detect_array_pattern(circuit: Circuit) -> dict:
    array_pattern = re.compile(r'^(.*?)_?r(\d+)_?c(\d+)$', re.IGNORECASE)
    prefix_counts = defaultdict(list)
    for name in circuit.components:
        m = array_pattern.match(name)
        if m:
            prefix_counts[m.group(1)].append((int(m.group(2)), int(m.group(3)), name))

    best_prefix = max(prefix_counts, key=lambda p: len(prefix_counts[p]), default=None)
    if best_prefix and len(prefix_counts[best_prefix]) >= 4:
        items = prefix_counts[best_prefix]
        grid = {(r, c): n for r, c, n in items}
        return {
            "rows": max(r for r, c, n in items) + 1,
            "cols": max(c for r, c, n in items) + 1,
            "prefix": best_prefix,
            "grid": grid
        }
    return {}


def _detect_nmos_stacks(circuit: Circuit, nmos_names: list, placed: PlacedCircuit) -> list[tuple]:
    """Detect series-stacked NMOS pairs where source of top == drain of bottom."""
    stacks = []
    used = set()
    for n1 in nmos_names:
        if n1 in used:
            continue
        c1 = circuit.components[n1]
        for n2 in nmos_names:
            if n2 in used or n2 == n1:
                continue
            c2 = circuit.components[n2]
            # c1 source == c2 drain → c1 is on top, c2 on bottom
            if c1.pins["source"] == c2.pins["drain"] and \
               _classify_net(circuit, c1.pins["source"]) == "signal":
                stacks.append((n1, n2))
                used.update([n1, n2])
                break
            # c2 source == c1 drain → c2 is on top, c1 on bottom
            elif c2.pins["source"] == c1.pins["drain"] and \
                 _classify_net(circuit, c2.pins["source"]) == "signal":
                stacks.append((n2, n1))
                used.update([n1, n2])
                break
    return stacks


def _order_inverter_chain(circuit: Circuit, inv_blocks: list[BuildingBlock]) -> list[BuildingBlock]:
    """Order inverter blocks by signal flow: output of one feeds input of next.
    Returns ordered list, or empty list if not a chain."""
    if len(inv_blocks) < 2:
        return inv_blocks

    # For each inverter, find its input net (gate) and output net (drain)
    block_io = {}
    for block in inv_blocks:
        # Inverter: components[0]=PMOS, components[1]=NMOS
        comp = circuit.components[block.components[1]]  # NMOS
        gate_net = comp.pins["gate"]
        drain_net = comp.pins["drain"]
        block_io[id(block)] = (gate_net, drain_net)

    # Build chain: find the first inverter (whose input doesn't come from another inverter's output)
    all_outputs = {io[1] for io in block_io.values()}
    starts = [b for b in inv_blocks if block_io[id(b)][0] not in all_outputs]

    if len(starts) != 1:
        # Not a clean chain, just return in original order
        return inv_blocks

    chain = [starts[0]]
    remaining = set(id(b) for b in inv_blocks) - {id(starts[0])}

    while remaining:
        current_output = block_io[id(chain[-1])][1]
        found = False
        for block in inv_blocks:
            if id(block) in remaining and block_io[id(block)][0] == current_output:
                chain.append(block)
                remaining.remove(id(block))
                found = True
                break
        if not found:
            break

    return chain if len(chain) == len(inv_blocks) else inv_blocks


def place_circuit(circuit: Circuit) -> PlacedCircuit:
    """Place all components in a circuit."""
    result = PlacedCircuit(circuit=circuit)

    # Array circuits
    array_info = _detect_array_pattern(circuit)
    if array_info and len(array_info.get("grid", {})) > 8:
        return _place_array_circuit(circuit, array_info)

    blocks = detect_building_blocks(circuit)
    block_comps = set()
    for b in blocks:
        block_comps.update(b.components)

    context_placed = set()

    # Classify free components
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

    # === Stage 0.5: Detect and place cross-coupled latches ===
    cc_p_blocks = [b for b in blocks if b.type == "cross_coupled_p"]
    cc_n_blocks = [b for b in blocks if b.type == "cross_coupled_n"]
    latch_placed = set()

    if cc_p_blocks and cc_n_blocks:
        # Match cross-coupled P and N pairs that share the same output nets
        for cc_p in cc_p_blocks:
            for cc_n in cc_n_blocks:
                p0, p1 = circuit.components[cc_p.components[0]], circuit.components[cc_p.components[1]]
                n0, n1 = circuit.components[cc_n.components[0]], circuit.components[cc_n.components[1]]
                p_drains = {p0.pins["drain"], p1.pins["drain"]}
                n_drains = {n0.pins["drain"], n1.pins["drain"]}
                if p_drains == n_drains:
                    # Form two inverters: match P and N by shared drain
                    latch_x = 200
                    latch_pmos_y = PMOS_Y
                    latch_nmos_y = PMOS_Y + 180  # Tight vertical spacing
                    for pi, pcomp in enumerate([p0, p1]):
                        # Find matching N transistor (same drain)
                        for ni, ncomp_name in enumerate(cc_n.components):
                            nc = circuit.components[ncomp_name]
                            if nc.pins["drain"] == pcomp.pins["drain"]:
                                # Place as inverter: P on top, N on bottom
                                result.placements[cc_p.components[pi]] = Placement(
                                    x=_snap(latch_x), y=_snap(latch_pmos_y))
                                result.placements[ncomp_name] = Placement(
                                    x=_snap(latch_x), y=_snap(latch_nmos_y))
                                latch_placed.update([cc_p.components[pi], ncomp_name])
                                latch_x += 180  # Compact spacing for cross-coupled inverters
                                break

    # Place access transistors near their latch connections
    if latch_placed:
        # Find latch output nets (q, qb)
        latch_nets = {}  # net_name -> x position
        for lname in latch_placed:
            lcomp = circuit.components[lname]
            drain_net = lcomp.pins.get("drain", "")
            if drain_net and _classify_net(circuit, drain_net) == "signal":
                if lname in result.placements:
                    latch_nets[drain_net] = result.placements[lname].x

        # Find free NMOS that connect to latch nets via source (access transistors)
        access_placed = set()
        latch_center_x = sum(latch_nets.values()) / max(len(latch_nets), 1)
        for name in list(nmos_free):
            comp = circuit.components[name]
            src_net = comp.pins.get("source", "")
            if src_net in latch_nets:
                lx = latch_nets[src_net]
                # Place outward from latch center at the latch NMOS level
                latch_nmos_level = PMOS_Y + 180
                direction = -1 if lx < latch_center_x else 1
                for offset in [direction * 140, direction * 170, direction * 220]:
                    ax = _snap(lx + offset)
                    if not _is_occupied(result, ax, _snap(latch_nmos_level), 110):
                        result.placements[name] = Placement(x=ax, y=_snap(latch_nmos_level))
                        access_placed.add(name)
                        context_placed.add(name)
                        break

    # Place diff pairs connected to latch directly below it
    if latch_placed and latch_nets:
        latch_x_center = sum(latch_nets.values()) / max(len(latch_nets), 1)
        for block in blocks:
            if block.type.startswith("diff_pair"):
                # Check if this diff pair's drains connect to latch nets
                c0 = circuit.components[block.components[0]]
                c1 = circuit.components[block.components[1]]
                pair_drains = {c0.pins["drain"], c1.pins["drain"]}
                latch_net_names = set(latch_nets.keys())
                if pair_drains & latch_net_names:
                    # Place diff pair centered below the latch
                    dp_y = latch_nmos_y + 120 if 'latch_nmos_y' in dir() else NMOS_Y
                    _place_block(result, block, latch_x_center, dp_y)
                    block_comps.update(block.components)
                    context_placed.update(block.components)
                    # Place tail source below diff pair
                    tail = _find_tail_source(circuit, block)
                    if tail and tail not in result.placements:
                        result.placements[tail] = Placement(
                            x=_snap(latch_x_center), y=_snap(dp_y + V_SPACING))
                        context_placed.add(tail)

    # Remove latch blocks from the blocks list to avoid double-placement
    if latch_placed:
        blocks = [b for b in blocks if not any(c in latch_placed for c in b.components)]
        # Also remove diff pairs we already placed
        blocks = [b for b in blocks if not any(c in context_placed for c in b.components)]
        block_comps -= latch_placed

    # === Stage 1: Group connected blocks and place as vertical stacks ===
    groups = _group_connected_blocks(circuit, blocks)
    cur_x = max(200, max((p.x for p in result.placements.values()), default=0) + H_SPACING)

    for group in groups:
        # Separate by type
        p_blocks = [b for b in group if _is_p_type(b)]
        n_blocks = [b for b in group if not _is_p_type(b)]

        # Check if this group is an inverter chain
        inv_blocks = [b for b in group if b.type == "inverter"]
        if len(inv_blocks) >= 2:
            # Order inverters by signal flow (output of one → input of next)
            chain = _order_inverter_chain(circuit, inv_blocks)
            if chain:
                # Place inverter chain with tight spacing
                INV_SPACING = 260
                ix = cur_x
                for block in chain:
                    _place_block(result, block, ix, PMOS_Y)
                    ix += INV_SPACING
                cur_x = ix + BLOCK_GAP

                # Place non-inverter blocks normally
                for block in group:
                    if block not in chain:
                        if _is_p_type(block):
                            _place_block(result, block, cur_x, PMOS_Y)
                        else:
                            _place_block(result, block, cur_x, NMOS_Y)
                        cur_x += H_SPACING + BLOCK_GAP
                continue

        # For NMOS-only groups with multiple blocks, detect stacking
        # (e.g., Gilbert cell: top quad sources connect to bottom pair drains)
        if len(n_blocks) >= 2 and not p_blocks:
            top_n, bottom_n = _sort_nmos_blocks_by_stacking(circuit, n_blocks)
        else:
            top_n = []
            bottom_n = n_blocks

        # Place PMOS blocks at PMOS_Y
        px = cur_x
        for block in p_blocks:
            _place_block(result, block, px, PMOS_Y)
            # Use tighter spacing for single-column blocks (inverter/tgate)
            if block.type in ("inverter", "tgate"):
                px += 160  # Compact spacing for single-column blocks
            else:
                px += H_SPACING + BLOCK_GAP

        # Place bottom NMOS blocks FIRST (so top blocks can align above them)
        nx = cur_x
        for block in bottom_n:
            _place_block(result, block, nx, NMOS_Y)

            # Place tail source below NMOS diff pair
            if block.type.startswith("diff_pair_n"):
                tail = _find_tail_source(circuit, block)
                if tail and tail not in result.placements:
                    result.placements[tail] = Placement(x=_snap(nx), y=_snap(NMOS_Y + V_SPACING))
                    context_placed.add(tail)

                # Place PMOS loads above diff pair
                loads = _find_load_pair(circuit, block)
                half_w = H_SPACING // 2
                for i, load_name in enumerate(loads):
                    if load_name not in result.placements and load_name not in block_comps:
                        lx = nx - half_w if i == 0 else nx + half_w
                        result.placements[load_name] = Placement(x=_snap(lx), y=_snap(PMOS_Y))
                        context_placed.add(load_name)

            nx += H_SPACING + BLOCK_GAP

        # Place top NMOS blocks aligned above their bottom stacking partners
        top_y = MID_Y
        tx = cur_x
        for block in top_n:
            block_sources = set()
            for cn in block.components:
                block_sources.add(circuit.components[cn].pins["source"])
            aligned_x = None
            for bot_block in bottom_n:
                for cn in bot_block.components:
                    drain_net = circuit.components[cn].pins["drain"]
                    if drain_net in block_sources and cn in result.placements:
                        aligned_x = result.placements[cn].x
                        break
                if aligned_x is not None:
                    break

            if aligned_x is not None:
                _place_block(result, block, aligned_x, top_y)
            else:
                _place_block(result, block, tx, top_y)
            tx = max(tx, max(result.placements[c].x for c in block.components)) + BLOCK_GAP + H_SPACING // 2

        cur_x = max(px, tx, nx)

    # === Stage 2: Place remaining PMOS/NMOS near their connections ===
    for name in pmos_free:
        if name not in result.placements and name not in context_placed:
            pos = _find_centroid_of_neighbors(circuit, name, result)
            if pos:
                cx, cy = pos
                py = _snap(PMOS_Y)
                # Try centroid x, then offsets, to find non-overlapping position
                placed = False
                for offset in [0, -100, 100, -H_SPACING, H_SPACING]:
                    px = _snap(cx + offset)
                    if not _is_occupied(result, px, py, 130):
                        result.placements[name] = Placement(x=px, y=py)
                        placed = True
                        break
                if not placed:
                    # Place above (VDD_Y band) if PMOS_Y is full
                    py = _snap(VDD_Y)
                    for offset in [0, -100, 100, -H_SPACING, H_SPACING]:
                        px = _snap(cx + offset)
                        if not _is_occupied(result, px, py, 130):
                            result.placements[name] = Placement(x=px, y=py)
                            placed = True
                            break
                if not placed:
                    result.placements[name] = Placement(x=_snap(cx + H_SPACING * 2), y=_snap(PMOS_Y))
            else:
                result.placements[name] = Placement(x=_snap(cur_x), y=_snap(PMOS_Y))
                cur_x += H_SPACING

    # Detect series-stacked NMOS pairs (source of one == drain of another)
    nmos_stacks = _detect_nmos_stacks(circuit, nmos_free, result)
    stacked_set = set()
    for top_name, bot_name in nmos_stacks:
        stacked_set.update([top_name, bot_name])
        # Place stacked pair near gate connections, below the NMOS band
        pos = _find_centroid_of_neighbors(circuit, top_name, result)
        if not pos:
            pos = _find_centroid_of_neighbors(circuit, bot_name, result)
        cx = pos[0] if pos else cur_x
        # Use GND_Y as starting point for stacked pairs (well below NMOS)
        stack_y = GND_Y - 30
        px = _snap(cx)
        # Only check horizontal overlap at the stack level
        for offset in [0, 130, -130, H_SPACING]:
            test_x = _snap(cx + offset)
            if not _is_occupied(result, test_x, _snap(stack_y), 100):
                px = test_x
                break
        result.placements[top_name] = Placement(x=px, y=_snap(stack_y))
        result.placements[bot_name] = Placement(x=px, y=_snap(stack_y + 100))

    for name in nmos_free:
        if name in stacked_set:
            continue
        if name not in result.placements and name not in context_placed:
            pos = _find_centroid_of_neighbors(circuit, name, result)
            if pos:
                cx, cy = pos
                px = _snap(cx)
                py = _snap(NMOS_Y)
                # If the connected component is already at NMOS_Y, place below
                if abs(cy - NMOS_Y) < 50:
                    py = _snap(NMOS_Y + V_SPACING)
                if _is_occupied(result, px, py, 120):
                    px = _snap(cx + H_SPACING)
                if _is_occupied(result, px, py, 120):
                    py = _snap(py + V_SPACING // 2)
                result.placements[name] = Placement(x=px, y=py)
            else:
                result.placements[name] = Placement(x=_snap(cur_x), y=_snap(NMOS_Y))
                cur_x += H_SPACING

    # === Stage 3: Place passives smartly ===
    # Categorize passives:
    # - Supply-connected (one pin to VDD/GND): place near the signal pin's component
    # - Inline (both pins connect to placed components): place between them
    # - Input (one pin is interface/external): place to the left
    # - Other: place near centroid of neighbors
    supply_passives = []
    inline_passives = []
    input_passives = []
    other_passives = []

    for name in passives:
        if name in result.placements:
            continue
        comp = circuit.components[name]
        pin1_net = comp.pins.get("pin1", "")
        pin2_net = comp.pins.get("pin2", "")
        pin1_type = _classify_net(circuit, pin1_net)
        pin2_type = _classify_net(circuit, pin2_net)

        if pin1_type in ("supply", "ground") or pin2_type in ("supply", "ground"):
            supply_passives.append(name)
        elif _has_placed_neighbors(circuit, name, "pin1", result) and _has_placed_neighbors(circuit, name, "pin2", result):
            inline_passives.append(name)
        elif circuit.interface_pins and (pin1_net in circuit.interface_pins or pin2_net in circuit.interface_pins):
            # If the non-interface pin has placed neighbors, treat as inline
            if pin1_net in circuit.interface_pins and _has_placed_neighbors(circuit, name, "pin2", result):
                inline_passives.append(name)
            elif pin2_net in circuit.interface_pins and _has_placed_neighbors(circuit, name, "pin1", result):
                inline_passives.append(name)
            else:
                input_passives.append(name)
        else:
            other_passives.append(name)

    # Place supply-connected passives near the signal-side component centroid
    for name in supply_passives:
        comp = circuit.components[name]
        pin1_type = _classify_net(circuit, comp.pins.get("pin1", ""))
        pin2_type = _classify_net(circuit, comp.pins.get("pin2", ""))
        signal_pin = "pin2" if pin1_type in ("supply", "ground") else "pin1"
        # Use centroid of all placed neighbors on the signal pin
        pos = _find_pin_centroid(circuit, name, signal_pin, result)
        if not pos:
            pos = _find_pin_neighbor_pos(circuit, name, signal_pin, result)
        if pos:
            cx, cy = pos
            # Capacitors: place near signal connection, not at supply rail
            if comp.type == "capacitor":
                px = _snap(cx + 100)
                py = _snap(cy + 60)
                if _is_occupied(result, px, py, 100):
                    px = _snap(cx + 150)
            else:
                px = _snap(cx + 100)
                py = _snap(VDD_Y if pin1_type == "supply" or pin2_type == "supply" else GND_Y)
            if _is_occupied(result, px, py, 100):
                px = _snap(cx + H_SPACING)
            result.placements[name] = Placement(x=px, y=py)
        else:
            max_x = max((p.x for p in result.placements.values()), default=cur_x)
            result.placements[name] = Placement(x=_snap(max_x + H_SPACING), y=_snap(PMOS_Y))

    # Place inline passives between their two pin connections
    for name in inline_passives:
        comp = circuit.components[name]
        pos1 = _find_pin_centroid(circuit, name, "pin1", result)
        pos2 = _find_pin_centroid(circuit, name, "pin2", result)
        if pos1 and pos2:
            # Place at midpoint between the two pin connections
            cx = (pos1[0] + pos2[0]) / 2
            cy = (pos1[1] + pos2[1]) / 2
        elif pos1 or pos2:
            pos = pos1 or pos2
            cx, cy = pos[0] + 100, pos[1]
        else:
            pos = _find_centroid_of_neighbors(circuit, name, result)
            if pos:
                cx, cy = pos
            else:
                continue
        px = _snap(cx)
        py = _snap(cy)
        if _is_occupied(result, px, py, 100):
            px = _snap(cx + 130)
        result.placements[name] = Placement(x=px, y=py)

    # Place input passives in a compact group
    if input_passives:
        # Find the leftmost placed component
        min_x = min((p.x for p in result.placements.values()), default=300)
        ip_x = _snap(min_x - 150)
        ip_y = MID_Y
        # Group into series chains for vertical stacking
        chains = _find_resistor_chains(circuit, input_passives)
        for chain in chains:
            for name in chain:
                result.placements[name] = Placement(x=_snap(ip_x), y=_snap(ip_y))
                ip_y += 100
            ip_x -= 150
            ip_y = MID_Y

    # Place remaining passives near connections
    for name in other_passives:
        if name in result.placements:
            continue
        pos = _find_centroid_of_neighbors(circuit, name, result)
        if pos:
            cx, cy = pos
            candidate_x = _snap(cx + 130)
            candidate_y = _snap(cy)
            if _is_occupied(result, candidate_x, candidate_y, 120):
                candidate_x = _snap(cx + H_SPACING)
            if _is_occupied(result, candidate_x, candidate_y, 120):
                candidate_y = _snap(cy + V_SPACING // 2)
            result.placements[name] = Placement(x=candidate_x, y=candidate_y)
        else:
            max_x = max((p.x for p in result.placements.values()), default=cur_x)
            result.placements[name] = Placement(x=_snap(max_x + H_SPACING), y=_snap(MID_Y))

    # === Stage 4: Place sources compactly BELOW the circuit ===
    if sources:
        # Find the bottom and left of the circuit so far
        all_y = [p.y for p in result.placements.values()] if result.placements else [0]
        all_x = [p.x for p in result.placements.values()] if result.placements else [300]
        src_y_start = max(all_y) + 150
        src_x_start = min(all_x)
        # Use enough columns to fit in 2 rows max
        src_cols = len(sources)  # All in one row
        for i, name in enumerate(sources):
            if name not in result.placements:
                row = i // src_cols
                col = i % src_cols
                result.placements[name] = Placement(
                    x=_snap(src_x_start + col * 130),
                    y=_snap(src_y_start + row * 130)
                )

    # === Stage 5: Place subcircuit instances ===
    if subcircuits:
        cols = max(1, int(math.sqrt(len(subcircuits))))
        sub_x = max((p.x for p in result.placements.values()), default=300) + H_SPACING
        for i, name in enumerate(subcircuits):
            result.placements[name] = Placement(
                x=_snap(sub_x + (i % cols) * H_SPACING),
                y=_snap(-300 + (i // cols) * V_SPACING)
            )

    # === Stage 6: Remaining ===
    max_x = max((p.x for p in result.placements.values()), default=cur_x)
    ox = max_x + H_SPACING
    oy = MID_Y
    for name in other:
        if name not in result.placements:
            result.placements[name] = Placement(x=_snap(ox), y=_snap(oy))
            oy += V_SPACING

    # === Stage 7: Resolve overlaps (only for non-block components) ===
    _resolve_overlaps(result, frozen=block_comps | context_placed)

    return result


def _place_block(result: PlacedCircuit, block: BuildingBlock, center_x: float, y: float):
    """Place a building block centered at (center_x, y)."""
    half_w = H_SPACING // 2

    if block.type in ("inverter", "tgate"):
        cp, cn = block.components[0], block.components[1]
        # Tighter vertical spacing for inverters/tgates
        inv_pmos_y = y
        inv_nmos_y = y + 180
        result.placements[cp] = Placement(x=_snap(center_x), y=_snap(inv_pmos_y))
        result.placements[cn] = Placement(x=_snap(center_x), y=_snap(inv_nmos_y))
        block.center_x = center_x
        block.center_y = (inv_pmos_y + inv_nmos_y) / 2
    else:
        c1, c2 = block.components[0], block.components[1]
        flip_second = _is_symmetric_block(block)
        result.placements[c1] = Placement(x=_snap(center_x - half_w), y=_snap(y))
        result.placements[c2] = Placement(x=_snap(center_x + half_w), y=_snap(y), flip=int(flip_second))
        block.center_x = center_x
        block.center_y = y


def _find_resistor_chains(circuit: Circuit, passive_names: list) -> list[list[str]]:
    """Group passives into series chains (pin2 of one = pin1 of another)."""
    name_set = set(passive_names)
    # Build graph: net -> list of passives connected to it
    net_to_passives = defaultdict(list)
    for name in passive_names:
        comp = circuit.components[name]
        for pin in ["pin1", "pin2"]:
            net = comp.pins.get(pin, "")
            if net and _classify_net(circuit, net) not in ("supply", "ground"):
                net_to_passives[net].append((name, pin))

    # Find chains by following connections
    visited = set()
    chains = []
    for name in passive_names:
        if name in visited:
            continue
        chain = [name]
        visited.add(name)
        # BFS to find connected passives
        queue = [name]
        while queue:
            current = queue.pop(0)
            comp = circuit.components[current]
            for pin in ["pin1", "pin2"]:
                net = comp.pins.get(pin, "")
                for other_name, other_pin in net_to_passives.get(net, []):
                    if other_name not in visited and other_name in name_set:
                        visited.add(other_name)
                        chain.append(other_name)
                        queue.append(other_name)
        chains.append(chain)
    return chains


def _has_placed_neighbors(circuit: Circuit, comp_name: str, pin_name: str, placed: PlacedCircuit) -> bool:
    """Check if the given pin connects to any already-placed component."""
    comp = circuit.components[comp_name]
    net_name = comp.pins.get(pin_name, "")
    if _classify_net(circuit, net_name) in ("supply", "ground"):
        return False
    if net_name in circuit.nets:
        for cn, pn in circuit.nets[net_name].connections:
            if cn != comp_name and cn in placed.placements:
                return True
    return False


def _find_pin_centroid(circuit: Circuit, comp_name: str, pin_name: str, placed: PlacedCircuit) -> tuple | None:
    """Find centroid of all placed components connected to a specific pin."""
    comp = circuit.components[comp_name]
    net_name = comp.pins.get(pin_name, "")
    if net_name in circuit.nets:
        positions = []
        for cn, pn in circuit.nets[net_name].connections:
            if cn != comp_name and cn in placed.placements:
                p = placed.placements[cn]
                positions.append((p.x, p.y))
        if positions:
            return (sum(x for x, y in positions) / len(positions),
                    sum(y for x, y in positions) / len(positions))
    return None


def _find_pin_neighbor_pos(circuit: Circuit, comp_name: str, pin_name: str, placed: PlacedCircuit) -> tuple | None:
    """Find the position of the nearest placed component connected to a specific pin."""
    comp = circuit.components[comp_name]
    net_name = comp.pins.get(pin_name, "")
    if net_name in circuit.nets:
        for cn, pn in circuit.nets[net_name].connections:
            if cn != comp_name and cn in placed.placements:
                p = placed.placements[cn]
                return (p.x, p.y)
    return None


def _is_occupied(placed: PlacedCircuit, x: int, y: int, min_dist: int) -> bool:
    for p in placed.placements.values():
        if abs(p.x - x) < min_dist and abs(p.y - y) < min_dist:
            return True
    return False


def _find_centroid_of_neighbors(circuit: Circuit, comp_name: str, placed: PlacedCircuit) -> tuple | None:
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
        return (sum(x for x, y in positions) / len(positions),
                sum(y for x, y in positions) / len(positions))
    return None


def _resolve_overlaps(placed: PlacedCircuit, frozen: set = None):
    """Resolve component overlaps. Frozen components are not moved."""
    if frozen is None:
        frozen = set()
    names = list(placed.placements.keys())
    n = len(names)
    min_dx = 120
    min_dy = 70
    max_iters = 20 if n > 30 else 40

    for _ in range(max_iters):
        moved = False
        for i in range(len(names)):
            for j in range(i + 1, len(names)):
                # Skip if both are frozen
                if names[i] in frozen and names[j] in frozen:
                    continue
                p1, p2 = placed.placements[names[i]], placed.placements[names[j]]
                dx = abs(p2.x - p1.x)
                dy = abs(p2.y - p1.y)
                if dx < min_dx and dy < min_dy:
                    push = (min_dx - dx) / 2 + 10
                    i_frozen = names[i] in frozen
                    j_frozen = names[j] in frozen
                    if i_frozen and not j_frozen:
                        # Only push j
                        if p2.x >= p1.x:
                            p2.x = _snap(p2.x + push * 2)
                        else:
                            p2.x = _snap(p2.x - push * 2)
                    elif j_frozen and not i_frozen:
                        # Only push i
                        if p1.x >= p2.x:
                            p1.x = _snap(p1.x + push * 2)
                        else:
                            p1.x = _snap(p1.x - push * 2)
                    else:
                        # Push both
                        if p2.x >= p1.x:
                            p1.x = _snap(p1.x - push)
                            p2.x = _snap(p2.x + push)
                        else:
                            p1.x = _snap(p1.x + push)
                            p2.x = _snap(p2.x - push)
                    moved = True
        if not moved:
            break


def _place_array_circuit(circuit: Circuit, array_info: dict) -> PlacedCircuit:
    result = PlacedCircuit(circuit=circuit)
    grid = array_info["grid"]
    rows, cols = array_info["rows"], array_info["cols"]

    # Wider spacing for array cells — subcircuit boxes need room for labels
    cell_h, cell_v = 200, 150
    # Leave space on left for row periphery (WL/WWL sources)
    array_left = 500
    array_top = 0
    array_comps = set(grid.values())

    for (r, c), name in grid.items():
        result.placements[name] = Placement(
            x=_snap(array_left + c * cell_h),
            y=_snap(array_top + r * cell_v)
        )

    periphery = [n for n in circuit.components if n not in array_comps]
    col_per_above = defaultdict(list)  # subcircuits above (precharge)
    col_per_below = defaultdict(list)  # passives below (caps)
    row_per = defaultdict(list)
    unplaced = []

    for name in periphery:
        pc = _find_array_column(name, circuit, grid, cols)
        pr = _find_array_row(name, circuit, grid, rows)
        pc_unique = _count_unique_cols(name, circuit, grid)
        pr_unique = _count_unique_rows(name, circuit, grid)
        comp = circuit.components[name]

        # If connects to many columns but few rows → row periphery (e.g., wordline)
        # If connects to many rows but few columns → column periphery (e.g., bitline cap)
        if pr is not None and pc_unique > 2 and pr_unique <= 2:
            row_per[pr].append(name)
        elif pc is not None and pr_unique > 2 and pc_unique <= 2:
            # Split column periphery: passives below, subcircuits above
            if comp.type in ("capacitor", "resistor"):
                col_per_below[pc].append(name)
            else:
                col_per_above[pc].append(name)
        elif pc is not None:
            if comp.type in ("capacitor", "resistor"):
                col_per_below[pc].append(name)
            else:
                col_per_above[pc].append(name)
        elif pr is not None:
            row_per[pr].append(name)
        else:
            unplaced.append(name)

    # Column periphery above: subcircuits (precharge) aligned with columns
    for col, names in sorted(col_per_above.items()):
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left + col * cell_h),
                y=_snap(array_top - 100 - i * 100)
            )

    # Column periphery below: passives (capacitors) aligned with columns
    array_bottom = array_top + (rows - 1) * cell_v
    for col, names in sorted(col_per_below.items()):
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left + col * cell_h),
                y=_snap(array_bottom + 120 + i * 80)
            )

    # Row periphery: place to the LEFT of array (inputs flow left-to-right)
    for row, names in row_per.items():
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left - 120 - i * 120),
                y=_snap(array_top + row * cell_v)
            )

    # Unplaced (supply sources etc): single row below everything
    all_placed_y = [p.y for p in result.placements.values()] if result.placements else [0]
    uy = max(all_placed_y) + 200
    ux = array_left
    for i, name in enumerate(unplaced):
        result.placements[name] = Placement(x=_snap(ux + i * 140), y=_snap(uy))

    return result


def _count_unique_cols(comp_name, circuit, grid):
    """Count how many unique columns a component connects to."""
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())
    cols_seen = set()
    for (r, c), arr_name in grid.items():
        shared = comp_nets & set(circuit.components[arr_name].pins.values())
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            cols_seen.add(c)
    return len(cols_seen)


def _count_unique_rows(comp_name, circuit, grid):
    """Count how many unique rows a component connects to."""
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())
    rows_seen = set()
    for (r, c), arr_name in grid.items():
        shared = comp_nets & set(circuit.components[arr_name].pins.values())
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            rows_seen.add(r)
    return len(rows_seen)


def _find_array_column(comp_name, circuit, grid, cols):
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())
    col_conn = defaultdict(int)
    for (r, c), arr_name in grid.items():
        shared = comp_nets & set(circuit.components[arr_name].pins.values())
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            col_conn[c] += len(shared)
    return max(col_conn, key=col_conn.get) if col_conn else None


def _find_array_row(comp_name, circuit, grid, rows):
    comp = circuit.components[comp_name]
    comp_nets = set(comp.pins.values())
    row_conn = defaultdict(int)
    for (r, c), arr_name in grid.items():
        shared = comp_nets & set(circuit.components[arr_name].pins.values())
        shared = {n for n in shared if _classify_net(circuit, n) == "signal"}
        if shared:
            row_conn[r] += len(shared)
    return max(row_conn, key=row_conn.get) if row_conn else None


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
