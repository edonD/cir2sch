"""
Wire router for xschem schematics.

Generates orthogonal wire segments (N records) connecting component pins.
Uses Manhattan routing with net labels for long-distance connections.
Chooses L-route direction to minimize wire crossings.
"""

from dataclasses import dataclass
from parser import Circuit
from placer import PlacedCircuit, Placement, _classify_net, GRID, _snap, H_SPACING


@dataclass
class Wire:
    """An orthogonal wire segment."""
    x1: int
    y1: int
    x2: int
    y2: int
    net: str


@dataclass
class Label:
    """A net label placed at a specific location."""
    x: int
    y: int
    net: str
    direction: int = 0


# Pin offsets relative to component origin for xschem symbols
# From nmos4.sym / pmos4.sym: drain at (20,-30), gate at (-20,0), source at (20,30), bulk at (20,0)
MOSFET_PIN_OFFSETS = {
    "gate":   (-20, 0),
    "drain":  (20, -30),
    "source": (20, 30),
    "bulk":   (20, 0),
}

MOSFET_PIN_OFFSETS_FLIPPED = {
    "gate":   (20, 0),
    "drain":  (-20, -30),
    "source": (-20, 30),
    "bulk":   (-20, 0),
}

PASSIVE_PIN_OFFSETS = {
    "pin1": (0, -30),
    "pin2": (0, 30),
}

SOURCE_PIN_OFFSETS = {
    "positive": (0, -30),
    "negative": (0, 30),
}

BJT_PIN_OFFSETS = {
    "collector": (0, -30),
    "base":      (-20, 0),
    "emitter":   (0, 30),
    "substrate": (20, 0),
}


def _get_pin_offset(comp_type: str, pin_name: str, flip: int = 0) -> tuple[int, int]:
    if comp_type in ("mosfet_n", "mosfet_p"):
        offsets = MOSFET_PIN_OFFSETS_FLIPPED if flip else MOSFET_PIN_OFFSETS
        return offsets.get(pin_name, (0, 0))
    elif comp_type in ("resistor", "capacitor"):
        return PASSIVE_PIN_OFFSETS.get(pin_name, (0, 0))
    elif comp_type in ("voltage_source", "current_source"):
        return SOURCE_PIN_OFFSETS.get(pin_name, (0, 0))
    elif comp_type in ("bjt_pnp", "bjt_npn"):
        return BJT_PIN_OFFSETS.get(pin_name, (0, 0))
    return (0, 0)


def _get_pin_position(placed: PlacedCircuit, comp_name: str, pin_name: str) -> tuple[int, int]:
    comp = placed.circuit.components[comp_name]
    p = placed.placements[comp_name]
    dx, dy = _get_pin_offset(comp.type, pin_name, p.flip)
    return (_snap(p.x + dx), _snap(p.y + dy))


def _segments_cross(w1_x1, w1_y1, w1_x2, w1_y2, w2_x1, w2_y1, w2_x2, w2_y2) -> bool:
    """Check if two orthogonal wire segments cross."""
    h1 = (w1_y1 == w1_y2)
    v1 = (w1_x1 == w1_x2)
    h2 = (w2_y1 == w2_y2)
    v2 = (w2_x1 == w2_x2)

    if h1 and v2:
        if (min(w1_x1, w1_x2) < w2_x1 < max(w1_x1, w1_x2) and
            min(w2_y1, w2_y2) < w1_y1 < max(w2_y1, w2_y2)):
            return True
    elif v1 and h2:
        if (min(w2_x1, w2_x2) < w1_x1 < max(w2_x1, w2_x2) and
            min(w1_y1, w1_y2) < w2_y1 < max(w1_y1, w1_y2)):
            return True
    return False


def _count_crossings_for_route(existing_wires: list[Wire], new_segments: list[tuple]) -> int:
    """Count how many existing wires the new segments would cross."""
    count = 0
    for seg in new_segments:
        nx1, ny1, nx2, ny2 = seg
        for w in existing_wires:
            if _segments_cross(w.x1, w.y1, w.x2, w.y2, nx1, ny1, nx2, ny2):
                count += 1
    return count


def _make_l_route_h_first(x1, y1, x2, y2) -> list[tuple]:
    """L-route: horizontal first, then vertical."""
    if x1 == x2 and y1 == y2:
        return []
    if x1 == x2 or y1 == y2:
        return [(x1, y1, x2, y2)]
    return [(x1, y1, x2, y1), (x2, y1, x2, y2)]


def _make_l_route_v_first(x1, y1, x2, y2) -> list[tuple]:
    """L-route: vertical first, then horizontal."""
    if x1 == x2 and y1 == y2:
        return []
    if x1 == x2 or y1 == y2:
        return [(x1, y1, x2, y2)]
    return [(x1, y1, x1, y2), (x1, y2, x2, y2)]


def route_nets(placed: PlacedCircuit) -> tuple[list[Wire], list[Label]]:
    """Route all nets in the placed circuit."""
    wires = []
    labels = []
    circuit = placed.circuit

    LABEL_DISTANCE = 600
    # Dynamic fan-out threshold: use labels more aggressively for very dense circuits
    num_comps = len(placed.placements)
    max_wire_fanout = 5 if num_comps <= 20 else 4

    for net_name, net in circuit.nets.items():
        conns = [(cn, pn) for cn, pn in net.connections if cn in placed.placements]
        if len(conns) < 2:
            if conns:
                x, y = _get_pin_position(placed, conns[0][0], conns[0][1])
                labels.append(Label(x=x, y=y, net=net_name))
            continue

        net_type = _classify_net(circuit, net_name)

        # Supply and ground: always use labels
        if net_type in ("supply", "ground"):
            for cn, pn in conns:
                x, y = _get_pin_position(placed, cn, pn)
                labels.append(Label(x=x, y=y, net=net_name))
            continue

        # Compute positions
        positions = []
        for cn, pn in conns:
            x, y = _get_pin_position(placed, cn, pn)
            positions.append((x, y))

        xs = [x for x, y in positions]
        ys = [y for x, y in positions]
        span = (max(xs) - min(xs)) + (max(ys) - min(ys))

        # For nets with too many connections or large span, use labels
        # But still wire-connect pins that are close together
        if len(conns) > max_wire_fanout or span > LABEL_DISTANCE:
            _label_with_local_wires(wires, labels, positions, net_name)
            continue

        # For 2-connection nets: direct L-route with crossing-aware direction
        if len(conns) == 2:
            x1, y1 = positions[0]
            x2, y2 = positions[1]
            _add_smart_l_route(wires, x1, y1, x2, y2, net_name)

        # For 3-4 connection nets: try chain routing, fall back to labels if too many crossings
        else:
            trial_wires = []
            _add_chain_route(trial_wires, positions, net_name)
            # Check if adding these wires would create crossings
            cross_count = sum(
                _count_crossings_for_route(wires, [(w.x1, w.y1, w.x2, w.y2)])
                for w in trial_wires
            )
            if cross_count <= 1:
                wires.extend(trial_wires)
            else:
                # Too many crossings — use labels instead
                for (x, y) in positions:
                    labels.append(Label(x=x, y=y, net=net_name))

    # Post-process: check for crossings and convert worst offenders to labels
    wires, labels = _eliminate_crossings(wires, labels)

    return wires, labels


def _eliminate_crossings(wires: list[Wire], labels: list[Label]) -> tuple[list[Wire], list[Label]]:
    """Remove wires that create crossings, replacing them with labels."""
    # Find all crossing pairs
    crossing_nets = set()
    for i, w1 in enumerate(wires):
        for w2 in wires[i+1:]:
            if _segments_cross(w1.x1, w1.y1, w1.x2, w1.y2, w2.x1, w2.y1, w2.x2, w2.y2):
                # Convert the net with fewer total wires to labels
                count1 = sum(1 for w in wires if w.net == w1.net)
                count2 = sum(1 for w in wires if w.net == w2.net)
                if count1 <= count2:
                    crossing_nets.add(w1.net)
                else:
                    crossing_nets.add(w2.net)

    if not crossing_nets:
        return wires, labels

    # Move crossing net wires to labels
    new_wires = []
    for w in wires:
        if w.net in crossing_nets:
            labels.append(Label(x=w.x1, y=w.y1, net=w.net))
            labels.append(Label(x=w.x2, y=w.y2, net=w.net))
        else:
            new_wires.append(w)

    return new_wires, labels


def _label_with_local_wires(wires: list[Wire], labels: list[Label],
                            positions: list[tuple], net: str):
    """For nets using labels, still wire-connect pins that are close together.

    Groups pins within LOCAL_DIST of each other, wires each group,
    and adds a single label per group.
    """
    LOCAL_DIST = 300  # Max Manhattan distance to wire-connect
    n = len(positions)
    used = [False] * n

    for i in range(n):
        if used[i]:
            continue
        group = [i]
        used[i] = True
        # Find all pins close to this one (transitive closure)
        changed = True
        while changed:
            changed = False
            for j in range(n):
                if used[j]:
                    continue
                for gi in group:
                    dist = abs(positions[j][0] - positions[gi][0]) + abs(positions[j][1] - positions[gi][1])
                    if dist <= LOCAL_DIST:
                        group.append(j)
                        used[j] = True
                        changed = True
                        break

        group_pos = [positions[idx] for idx in group]

        if len(group_pos) == 1:
            labels.append(Label(x=group_pos[0][0], y=group_pos[0][1], net=net))
        else:
            # Wire-connect the group using chain routing
            _add_chain_route(wires, group_pos, net)
            # Add a single label at one end
            labels.append(Label(x=group_pos[0][0], y=group_pos[0][1], net=net))


def _add_smart_l_route(wires: list[Wire], x1: int, y1: int, x2: int, y2: int, net: str):
    """Add an L-shaped route, choosing direction that creates fewer crossings."""
    if x1 == x2 and y1 == y2:
        return
    if x1 == x2 or y1 == y2:
        wires.append(Wire(x1=x1, y1=y1, x2=x2, y2=y2, net=net))
        return

    # Try both L-route directions
    h_first = _make_l_route_h_first(x1, y1, x2, y2)
    v_first = _make_l_route_v_first(x1, y1, x2, y2)

    cross_h = _count_crossings_for_route(wires, h_first)
    cross_v = _count_crossings_for_route(wires, v_first)

    # Choose the one with fewer crossings (prefer vertical-first as tiebreaker
    # since analog schematics tend to have more horizontal wires)
    if cross_v <= cross_h:
        segments = v_first
    else:
        segments = h_first

    for seg in segments:
        wires.append(Wire(x1=seg[0], y1=seg[1], x2=seg[2], y2=seg[3], net=net))


def _add_chain_route(wires: list[Wire], positions: list[tuple], net: str):
    """Route multiple positions using a minimum spanning tree approach."""
    if len(positions) <= 1:
        return

    # Build MST using Prim's algorithm on Manhattan distances
    n = len(positions)
    in_tree = [False] * n
    in_tree[0] = True
    edges = []

    for _ in range(n - 1):
        best_dist = float('inf')
        best_i = -1
        best_j = -1
        for i in range(n):
            if not in_tree[i]:
                continue
            for j in range(n):
                if in_tree[j]:
                    continue
                dist = abs(positions[i][0] - positions[j][0]) + abs(positions[i][1] - positions[j][1])
                if dist < best_dist:
                    best_dist = dist
                    best_i = i
                    best_j = j
        if best_j >= 0:
            in_tree[best_j] = True
            edges.append((best_i, best_j))

    # Route each edge
    for i, j in edges:
        x1, y1 = positions[i]
        x2, y2 = positions[j]
        _add_smart_l_route(wires, x1, y1, x2, y2, net)
