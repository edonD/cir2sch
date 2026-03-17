"""
SPICE .cir netlist parser.

Parses a SPICE netlist into a structured graph of components and nets.
Handles both generic SPICE (M1 d g s b NMOS ...) and SKY130 subcircuit
instantiation (XM1 d g s b sky130_fd_pr__nfet_01v8 W=... L=...).

Smart subcircuit handling:
- If the top-level has real circuit components, use those.
- If the top-level is just a testbench (only sources), parse the largest
  .subckt block as the main circuit.
"""

import re
from dataclasses import dataclass, field


@dataclass
class Component:
    """A single circuit component parsed from a netlist."""
    name: str
    type: str
    model: str
    pins: dict
    params: dict
    comment: str = ""


@dataclass
class Net:
    """A named electrical net connecting component pins."""
    name: str
    connections: list = field(default_factory=list)


@dataclass
class Circuit:
    """Parsed circuit representation."""
    title: str = ""
    components: dict = field(default_factory=dict)
    nets: dict = field(default_factory=dict)
    comments: list = field(default_factory=list)
    supply_voltage: float = 0.0
    subckt_name: str = ""  # Name of subcircuit if parsed from a .subckt block
    interface_pins: list = field(default_factory=list)  # Interface pin names


# SKY130 device type detection
SKY130_NMOS = re.compile(r'sky130_fd_pr__n\w*fet', re.IGNORECASE)
SKY130_PMOS = re.compile(r'sky130_fd_pr__p\w*fet', re.IGNORECASE)
SKY130_PNP = re.compile(r'sky130_fd_pr__pnp', re.IGNORECASE)
SKY130_NPN = re.compile(r'sky130_fd_pr__npn', re.IGNORECASE)
SKY130_RES = re.compile(r'sky130_fd_pr__res', re.IGNORECASE)
SKY130_CAP = re.compile(r'sky130_fd_pr__cap', re.IGNORECASE)
SKY130_DIODE = re.compile(r'sky130_fd_pr__diode', re.IGNORECASE)


def _parse_params(tokens: list[str]) -> dict:
    """Extract key=value parameters from token list."""
    params = {}
    for tok in tokens:
        if '=' in tok:
            k, v = tok.split('=', 1)
            params[k.strip()] = v.strip()
    return params


def _classify_sky130(model: str) -> str:
    """Classify a SKY130 subcircuit model into a component type."""
    if SKY130_NMOS.search(model):
        return "mosfet_n"
    if SKY130_PMOS.search(model):
        return "mosfet_p"
    if SKY130_PNP.search(model):
        return "bjt_pnp"
    if SKY130_NPN.search(model):
        return "bjt_npn"
    if SKY130_RES.search(model):
        return "resistor"
    if SKY130_CAP.search(model):
        return "capacitor"
    if SKY130_DIODE.search(model):
        return "diode"
    return "subcircuit"


def _add_net_connection(circuit: Circuit, net_name: str, comp_name: str, pin_name: str):
    """Register a connection between a component pin and a net."""
    if net_name not in circuit.nets:
        circuit.nets[net_name] = Net(name=net_name)
    circuit.nets[net_name].connections.append((comp_name, pin_name))


def _parse_mosfet(name: str, tokens: list[str], is_pmos: bool) -> Component:
    """Parse a MOSFET line: Mname drain gate source bulk MODEL params..."""
    pins = {
        "drain": tokens[1],
        "gate": tokens[2],
        "source": tokens[3],
        "bulk": tokens[4],
    }
    model = tokens[5] if len(tokens) > 5 else ("PMOS" if is_pmos else "NMOS")
    params = _parse_params(tokens[6:])
    ctype = "mosfet_p" if is_pmos else "mosfet_n"

    if model.upper() in ("PMOS", "PMOS1"):
        ctype = "mosfet_p"
    elif model.upper() in ("NMOS", "NMOS1"):
        ctype = "mosfet_n"

    return Component(name=name, type=ctype, model=model, pins=pins, params=params)


def _parse_subcircuit_instance(name: str, tokens: list[str]) -> Component:
    """Parse a subcircuit instance: Xname n1 n2 ... model params..."""
    net_tokens = []
    model = ""
    param_start = len(tokens)

    for i in range(1, len(tokens)):
        if '=' in tokens[i]:
            param_start = i
            break
        net_tokens.append(tokens[i])

    if net_tokens:
        model = net_tokens[-1]
        net_tokens = net_tokens[:-1]

    params = _parse_params(tokens[param_start:])
    ctype = _classify_sky130(model)

    if ctype in ("mosfet_n", "mosfet_p") and len(net_tokens) >= 4:
        pins = {
            "drain": net_tokens[0],
            "gate": net_tokens[1],
            "source": net_tokens[2],
            "bulk": net_tokens[3],
        }
    elif ctype in ("bjt_pnp", "bjt_npn") and len(net_tokens) >= 4:
        pins = {
            "collector": net_tokens[0],
            "base": net_tokens[1],
            "emitter": net_tokens[2],
            "substrate": net_tokens[3],
        }
    elif ctype == "diode" and len(net_tokens) >= 2:
        pins = {
            "anode": net_tokens[0],
            "cathode": net_tokens[1],
        }
    else:
        pins = {f"pin{i+1}": net for i, net in enumerate(net_tokens)}

    return Component(name=name, type=ctype, model=model, pins=pins, params=params)


def _parse_component_line(line: str) -> Component | None:
    """Parse a single component line, return Component or None."""
    tokens = line.split()
    if not tokens:
        return None

    name = tokens[0]
    first_char = name[0].upper()

    if first_char == 'V':
        if len(tokens) < 3:
            return None
        pins = {"positive": tokens[1], "negative": tokens[2]}
        value = ""
        params = {}
        rest = tokens[3:]
        for t in rest:
            if t.upper() in ('DC', 'AC'):
                continue
            if '=' in t:
                k, v = t.split('=', 1)
                params[k] = v
            elif not value:
                value = t
        params["value"] = value
        return Component(name=name, type="voltage_source", model="V", pins=pins, params=params)

    elif first_char == 'I':
        if len(tokens) < 3:
            return None
        pins = {"positive": tokens[1], "negative": tokens[2]}
        value = tokens[3] if len(tokens) > 3 else ""
        return Component(name=name, type="current_source", model="I", pins=pins, params={"value": value})

    elif first_char == 'M':
        if len(tokens) < 5:
            return None
        is_pmos = False
        if len(tokens) > 5:
            model_tok = tokens[5].upper()
            is_pmos = 'PMOS' in model_tok or 'PFET' in model_tok
        return _parse_mosfet(name, tokens, is_pmos)

    elif first_char == 'X':
        return _parse_subcircuit_instance(name, tokens)

    elif first_char == 'R':
        if len(tokens) < 3:
            return None
        pins = {"pin1": tokens[1], "pin2": tokens[2]}
        value = tokens[3] if len(tokens) > 3 else ""
        params = _parse_params(tokens[4:])
        params["value"] = value
        return Component(name=name, type="resistor", model="R", pins=pins, params=params)

    elif first_char == 'C':
        if len(tokens) < 3:
            return None
        pins = {"pin1": tokens[1], "pin2": tokens[2]}
        value = tokens[3] if len(tokens) > 3 else ""
        params = _parse_params(tokens[4:])
        params["value"] = value
        return Component(name=name, type="capacitor", model="C", pins=pins, params=params)

    # Skip behavioral sources (B prefix) - not real components for schematic
    elif first_char == 'E' or first_char == 'B':
        return None

    return None


def _preprocess_lines(raw_lines: list[str]) -> list[str]:
    """Merge continuation lines and return cleaned lines."""
    merged = []
    for line in raw_lines:
        stripped = line.rstrip()
        if stripped.startswith('+') and merged:
            merged[-1] += ' ' + stripped[1:].strip()
        else:
            merged.append(stripped)
    return merged


def _parse_block(lines: list[str], circuit: Circuit):
    """Parse component lines into a circuit, stopping at .control or end."""
    for line in lines:
        line = line.strip()

        if not line or line.startswith('*') or line.startswith('.'):
            if line.startswith('.') and 'control' in line.lower():
                break
            # Capture useful comments
            if line.startswith('*'):
                comment = line[1:].strip()
                if ('stage' in comment.lower() or 'bias' in comment.lower() or
                    comment.startswith('===') or 'core' in comment.lower() or
                    'port' in comment.lower() or 'pair' in comment.lower()):
                    # Store clean version
                    clean = comment.strip('= ').strip()
                    if clean and not clean.startswith('='):
                        circuit.comments.append(clean)
            continue

        # Remove inline comments
        if ';' in line:
            line = line[:line.index(';')]
        if '$' in line and '=$' not in line and '$&' not in line:
            line = line[:line.index('$')]

        comp = _parse_component_line(line)
        if comp:
            circuit.components[comp.name] = comp
            for pin_name, net_name in comp.pins.items():
                _add_net_connection(circuit, net_name, comp.name, pin_name)

            # Track supply voltage
            if comp.type == "voltage_source":
                if 'vdd' in comp.pins.get("positive", "").lower():
                    val = comp.params.get("value", "")
                    try:
                        circuit.supply_voltage = abs(float(val))
                    except ValueError:
                        pass


def parse_netlist(filepath: str) -> Circuit:
    """Parse a SPICE .cir file into a Circuit object.

    Strategy:
    1. First pass: collect all .subckt blocks and top-level lines
    2. Parse top-level components
    3. If top-level is mostly testbench (only sources), use the largest subcircuit instead
    """
    with open(filepath, 'r') as f:
        raw_lines = f.readlines()

    merged = _preprocess_lines(raw_lines)

    # First pass: separate subcircuits from top-level
    subckt_blocks = {}  # name -> (interface_pins, lines)
    top_level_lines = []
    title = ""

    current_subckt = None
    current_lines = []
    subckt_depth = 0

    for i, line in enumerate(merged):
        stripped = line.strip()

        # Title from first line
        if i == 0 and stripped.startswith('*'):
            title = stripped[1:].strip()
            continue

        upper = stripped.upper()

        if upper.startswith('.SUBCKT'):
            subckt_depth += 1
            if subckt_depth == 1:
                # Parse subcircuit header: .subckt name pin1 pin2 ...
                parts = stripped.split()
                if len(parts) >= 2:
                    current_subckt = parts[1]
                    interface_pins = parts[2:]
                    current_lines = []
            continue

        if upper.startswith('.ENDS'):
            if subckt_depth == 1 and current_subckt:
                subckt_blocks[current_subckt] = (
                    interface_pins if 'interface_pins' in dir() else [],
                    current_lines
                )
                # Re-extract interface_pins properly
                subckt_blocks[current_subckt] = (
                    subckt_blocks[current_subckt][0],
                    current_lines
                )
            subckt_depth = max(0, subckt_depth - 1)
            current_subckt = None
            continue

        if subckt_depth > 0:
            if subckt_depth == 1:
                current_lines.append(stripped)
        else:
            top_level_lines.append(stripped)

    # Re-collect subckt headers properly
    subckt_info = {}
    current_name = None
    current_pins = []
    depth = 0
    for line in merged:
        stripped = line.strip()
        upper = stripped.upper()
        if upper.startswith('.SUBCKT'):
            depth += 1
            if depth == 1:
                parts = stripped.split()
                current_name = parts[1] if len(parts) >= 2 else None
                current_pins = parts[2:] if len(parts) >= 3 else []
        elif upper.startswith('.ENDS'):
            if depth == 1 and current_name:
                subckt_info[current_name] = current_pins
            depth = max(0, depth - 1)

    # Fix subckt_blocks to have correct interface pins
    for name in subckt_blocks:
        pins = subckt_info.get(name, [])
        lines = subckt_blocks[name][1]
        subckt_blocks[name] = (pins, lines)

    # Parse top-level
    top_circuit = Circuit(title=title)
    _parse_block(top_level_lines, top_circuit)

    # Count real (non-source) components at top level
    real_top_comps = sum(
        1 for c in top_circuit.components.values()
        if c.type not in ("voltage_source", "current_source")
    )

    # If top-level has enough real components, use it
    if real_top_comps >= 3:
        return top_circuit

    # Otherwise, find the best subcircuit to draw
    # Pick the one with the most components
    best_name = None
    best_count = 0
    for name, (pins, lines) in subckt_blocks.items():
        # Count component lines
        count = sum(1 for l in lines if l and l[0].upper() in 'XMRCVIEQ' and not l.startswith('*'))
        if count > best_count:
            best_count = count
            best_name = name

    if best_name:
        pins, lines = subckt_blocks[best_name]
        subckt_circuit = Circuit(
            title=f"{title}",
            subckt_name=best_name,
            interface_pins=pins
        )
        # Add interface info as a comment
        if pins:
            subckt_circuit.comments.append(f".subckt {best_name} {' '.join(pins)}")
        _parse_block(lines, subckt_circuit)
        return subckt_circuit

    # Fallback: return top-level even if sparse
    return top_circuit


def print_circuit(circuit: Circuit):
    """Debug print a parsed circuit."""
    print(f"Title: {circuit.title}")
    print(f"Supply: {circuit.supply_voltage}V")
    print(f"Components: {len(circuit.components)}")
    for name, comp in circuit.components.items():
        print(f"  {name}: {comp.type} ({comp.model}) pins={comp.pins} params={comp.params}")
    print(f"Nets: {len(circuit.nets)}")
    for net_name, net in circuit.nets.items():
        print(f"  {net_name}: {len(net.connections)} connections — {net.connections}")


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python parser.py <netlist.cir>")
        sys.exit(1)
    circuit = parse_netlist(sys.argv[1])
    print_circuit(circuit)
