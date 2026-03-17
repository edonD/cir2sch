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
H_SPACING = 260
V_SPACING = 200
BLOCK_GAP = 80

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

    # Differential pairs
    for fets, suffix in [(mosfets_n, "n"), (mosfets_p, "p")]:
        for name1, m1 in list(fets.items()):
            for name2, m2 in list(fets.items()):
                if name1 >= name2 or name1 in used or name2 in used:
                    continue
                if m1.pins["source"] == m2.pins["source"]:
                    g1, g2 = m1.pins["gate"], m2.pins["gate"]
                    if g1 != g2 and g1 != m1.pins["drain"] and g2 != m2.pins["drain"]:
                        blocks.append(BuildingBlock(type=f"diff_pair_{suffix}", components=[name1, name2]))
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
    """Check if a block is PMOS-based."""
    return "_p" in block.type or block.type == "inverter"


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
    c1 = circuit.components[diff_pair_block.components[0]]
    shared_source = c1.pins["source"]
    for name, comp in circuit.components.items():
        if name in diff_pair_block.components:
            continue
        if comp.type in ("mosfet_n", "mosfet_p"):
            if comp.pins["drain"] == shared_source:
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

    # === Stage 1: Group connected blocks and place as vertical stacks ===
    groups = _group_connected_blocks(circuit, blocks)
    cur_x = 300

    for group in groups:
        # Separate by type
        p_blocks = [b for b in group if _is_p_type(b)]
        n_blocks = [b for b in group if not _is_p_type(b)]

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
            px += H_SPACING * 2 + BLOCK_GAP

        # Place top NMOS blocks above bottom ones (between PMOS and NMOS bands)
        top_y = MID_Y  # Between PMOS and NMOS
        tx = cur_x
        for block in top_n:
            _place_block(result, block, tx, top_y)
            tx += H_SPACING * 2 + BLOCK_GAP

        # Place bottom NMOS blocks at NMOS_Y
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

            nx += H_SPACING * 2 + BLOCK_GAP

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

    for name in nmos_free:
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
            input_passives.append(name)
        else:
            other_passives.append(name)

    # Place supply-connected passives near the signal-side component
    for name in supply_passives:
        comp = circuit.components[name]
        pin1_type = _classify_net(circuit, comp.pins.get("pin1", ""))
        signal_pin = "pin2" if pin1_type in ("supply", "ground") else "pin1"
        pos = _find_pin_neighbor_pos(circuit, name, signal_pin, result)
        if pos:
            cx, cy = pos
            px = _snap(cx + 100)
            py = _snap(VDD_Y if pin1_type == "supply" or _classify_net(circuit, comp.pins.get("pin2", "")) == "supply" else GND_Y)
            if _is_occupied(result, px, py, 100):
                px = _snap(cx + H_SPACING)
            result.placements[name] = Placement(x=px, y=py)
        else:
            max_x = max((p.x for p in result.placements.values()), default=cur_x)
            result.placements[name] = Placement(x=_snap(max_x + H_SPACING), y=_snap(PMOS_Y))

    # Place inline passives between their connected components
    for name in inline_passives:
        pos = _find_centroid_of_neighbors(circuit, name, result)
        if pos:
            cx, cy = pos
            px = _snap(cx)
            py = _snap(cy)
            if _is_occupied(result, px, py, 100):
                px = _snap(cx + 130)
            result.placements[name] = Placement(x=px, y=py)

    # Place remaining passives near connections
    for name in input_passives + other_passives:
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

    # === Stage 4: Place sources compactly ===
    # Use a grid layout for sources instead of a column
    if sources:
        src_cols = min(3, len(sources))
        src_x_start = 50
        src_y_start = PMOS_Y
        for i, name in enumerate(sources):
            if name not in result.placements:
                row = i // src_cols
                col = i % src_cols
                result.placements[name] = Placement(
                    x=_snap(src_x_start + col * 160),
                    y=_snap(src_y_start + row * V_SPACING)
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

    # === Stage 7: Resolve overlaps ===
    _resolve_overlaps(result)

    return result


def _place_block(result: PlacedCircuit, block: BuildingBlock, center_x: float, y: float):
    """Place a building block centered at (center_x, y)."""
    half_w = H_SPACING // 2

    if block.type == "inverter":
        cp, cn = block.components[0], block.components[1]
        result.placements[cp] = Placement(x=_snap(center_x), y=_snap(PMOS_Y))
        result.placements[cn] = Placement(x=_snap(center_x), y=_snap(NMOS_Y))
        block.center_x = center_x
        block.center_y = MID_Y
    else:
        c1, c2 = block.components[0], block.components[1]
        flip_second = block.type.startswith("diff_pair") or block.type.startswith("cross_coupled")
        result.placements[c1] = Placement(x=_snap(center_x - half_w), y=_snap(y))
        result.placements[c2] = Placement(x=_snap(center_x + half_w), y=_snap(y), flip=int(flip_second))
        block.center_x = center_x
        block.center_y = y


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


def _resolve_overlaps(placed: PlacedCircuit):
    names = list(placed.placements.keys())
    min_dx = 150
    min_dy = 90

    for _ in range(40):
        moved = False
        for i in range(len(names)):
            for j in range(i + 1, len(names)):
                p1, p2 = placed.placements[names[i]], placed.placements[names[j]]
                dx = abs(p2.x - p1.x)
                dy = abs(p2.y - p1.y)
                if dx < min_dx and dy < min_dy:
                    push = (min_dx - dx) / 2 + 10
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

    # Compact spacing for array cells
    cell_h, cell_v = 180, 140
    array_left, array_top = 200, 0
    array_comps = set(grid.values())

    for (r, c), name in grid.items():
        result.placements[name] = Placement(
            x=_snap(array_left + c * cell_h),
            y=_snap(array_top + r * cell_v)
        )

    periphery = [n for n in circuit.components if n not in array_comps]
    col_per = defaultdict(list)
    row_per = defaultdict(list)
    unplaced = []

    for name in periphery:
        pc = _find_array_column(name, circuit, grid, cols)
        pr = _find_array_row(name, circuit, grid, rows)
        if pc is not None:
            col_per[pc].append(name)
        elif pr is not None:
            row_per[pr].append(name)
        else:
            unplaced.append(name)

    # Column periphery: place above array, close
    for col, names in col_per.items():
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left + col * cell_h),
                y=_snap(array_top - (i + 1) * 120)
            )

    # Row periphery: place to the right of array, close
    for row, names in row_per.items():
        for i, name in enumerate(names):
            result.placements[name] = Placement(
                x=_snap(array_left + cols * cell_h + 60 + i * 120),
                y=_snap(array_top + row * cell_v)
            )

    # Unplaced: compact grid below array
    ux = array_left
    uy = array_top + rows * cell_v + 100
    cols_limit = max(cols, 6)
    col_idx = 0
    for name in unplaced:
        result.placements[name] = Placement(x=_snap(ux + col_idx * 120), y=_snap(uy))
        col_idx += 1
        if col_idx >= cols_limit:
            col_idx = 0
            uy += 120

    return result


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
