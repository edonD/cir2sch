"""
Wire router for xschem schematics.

Generates orthogonal wire segments (N records) connecting component pins.
Uses Manhattan routing with net labels for long-distance connections.
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
    direction: int = 0  # 0=right, 1=down, 2=left, 3=up


# Pin offsets relative to component origin for xschem sky130 symbols
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
    - Supply/ground nets: always use labels (VDD/GND symbols)
    - Short nets (2 connections, close): direct L-shaped wire
    - Medium nets (2-4 connections): star topology from centroid
    - Long or many-connection nets: use labels for clarity
    """
    wires = []
    labels = []
    circuit = placed.circuit

    # Wire distance threshold — use wires for nearby connections, labels for far ones
    LABEL_DISTANCE = 1200

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

        # For nets with many connections (>6), use labels for clarity
        if len(conns) > 6:
            for cn, pn in conns:
                x, y = _get_pin_position(placed, cn, pn)
                labels.append(Label(x=x, y=y, net=net_name))
            continue

        # Compute positions for all connections
        positions = []
        for cn, pn in conns:
            x, y = _get_pin_position(placed, cn, pn)
            positions.append((x, y))

        # Check total span
        xs = [x for x, y in positions]
        ys = [y for x, y in positions]
        span = (max(xs) - min(xs)) + (max(ys) - min(ys))

        # If span too large, use labels
        if span > LABEL_DISTANCE:
            for (x, y) in positions:
                labels.append(Label(x=x, y=y, net=net_name))
            continue

        # For 2-connection nets: direct L-route
        if len(conns) == 2:
            x1, y1 = positions[0]
            x2, y2 = positions[1]
            _add_l_route(wires, x1, y1, x2, y2, net_name)

        # For 3-4 connection nets: star from centroid
        else:
            cx = sum(x for x, y in positions) // len(positions)
            cy = sum(y for x, y in positions) // len(positions)
            cx, cy = _snap(cx), _snap(cy)

            for (x, y) in positions:
                if x != cx or y != cy:
                    _add_l_route(wires, x, y, cx, cy, net_name)

    return wires, labels


def _add_l_route(wires: list[Wire], x1: int, y1: int, x2: int, y2: int, net: str):
    """Add an L-shaped route between two points (horizontal first, then vertical)."""
    if x1 == x2 and y1 == y2:
        return
    if x1 == x2 or y1 == y2:
        # Straight line
        wires.append(Wire(x1=x1, y1=y1, x2=x2, y2=y2, net=net))
    else:
        # L-route: horizontal to x2, then vertical to y2
        wires.append(Wire(x1=x1, y1=y1, x2=x2, y2=y1, net=net))
        wires.append(Wire(x1=x2, y1=y1, x2=x2, y2=y2, net=net))
