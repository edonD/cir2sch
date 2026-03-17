"""
Wire router for xschem schematics.

Generates orthogonal wire segments (N records) connecting component pins.
Uses Manhattan routing with net labels for long-distance connections.
"""

from dataclasses import dataclass
from parser import Circuit
from placer import PlacedCircuit, Placement, _classify_net, GRID, _snap


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
    direction: int = 0  # 0=right, 1=down, 2=left, 3=up


# Pin offsets relative to component origin for xschem sky130 symbols
# These are approximate — real offsets depend on the .sym file
MOSFET_PIN_OFFSETS = {
    "gate":   (-20, 0),
    "drain":  (0, -30),
    "source": (0, 30),
    "bulk":   (20, 0),
}

MOSFET_PIN_OFFSETS_FLIPPED = {
    "gate":   (20, 0),
    "drain":  (0, -30),
    "source": (0, 30),
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
    """Get the pin offset for a component type and pin name."""
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
    """Get absolute position of a component pin."""
    comp = placed.circuit.components[comp_name]
    p = placed.placements[comp_name]
    dx, dy = _get_pin_offset(comp.type, pin_name, p.flip)
    return (_snap(p.x + dx), _snap(p.y + dy))


def route_nets(placed: PlacedCircuit) -> tuple[list[Wire], list[Label]]:
    """Route all nets in the placed circuit.

    Strategy:
    - For nets with 2 connections: direct L-shaped wire
    - For supply/ground nets: use labels instead of long wires
    - For nets with 3+ connections: star topology from centroid with labels
    """
    wires = []
    labels = []
    circuit = placed.circuit

    for net_name, net in circuit.nets.items():
        # Filter to components that have placements
        conns = [(cn, pn) for cn, pn in net.connections if cn in placed.placements]
        if len(conns) < 2:
            # Single connection or unplaced — just add a label
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

        # For signal nets with 2 connections: direct L-route
        if len(conns) == 2:
            (c1, p1), (c2, p2) = conns
            x1, y1 = _get_pin_position(placed, c1, p1)
            x2, y2 = _get_pin_position(placed, c2, p2)

            # Manhattan distance
            dist = abs(x2 - x1) + abs(y2 - y1)

            # If too far apart, use labels instead
            if dist > 800:
                labels.append(Label(x=x1, y=y1, net=net_name))
                labels.append(Label(x=x2, y=y2, net=net_name))
                continue

            # L-shaped route: horizontal then vertical
            if x1 != x2 and y1 != y2:
                # Route via midpoint
                mid_x = x2
                wires.append(Wire(x1=x1, y1=y1, x2=mid_x, y2=y1, net=net_name))
                wires.append(Wire(x1=mid_x, y1=y1, x2=x2, y2=y2, net=net_name))
            else:
                # Straight line
                wires.append(Wire(x1=x1, y1=y1, x2=x2, y2=y2, net=net_name))

        # For nets with 3+ connections: use labels for clarity
        elif len(conns) <= 4:
            # Try star routing from centroid
            positions = [_get_pin_position(placed, cn, pn) for cn, pn in conns]
            cx = sum(x for x, y in positions) // len(positions)
            cy = sum(y for x, y in positions) // len(positions)
            cx, cy = _snap(cx), _snap(cy)

            for (x, y) in positions:
                if x != cx or y != cy:
                    # L-route to centroid
                    if x != cx and y != cy:
                        wires.append(Wire(x1=x, y1=y, x2=cx, y2=y, net=net_name))
                        wires.append(Wire(x1=cx, y1=y, x2=cx, y2=cy, net=net_name))
                    else:
                        wires.append(Wire(x1=x, y1=y, x2=cx, y2=cy, net=net_name))
        else:
            # Many connections — just use labels
            for cn, pn in conns:
                x, y = _get_pin_position(placed, cn, pn)
                labels.append(Label(x=x, y=y, net=net_name))

    return wires, labels
