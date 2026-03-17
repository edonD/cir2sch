"""
SPICE .cir netlist parser.

Parses a SPICE netlist into a structured graph of components and nets.
Handles both generic SPICE (M1 d g s b NMOS ...) and SKY130 subcircuit
instantiation (XM1 d g s b sky130_fd_pr__nfet_01v8 W=... L=...).
"""

import re
from dataclasses import dataclass, field


@dataclass
class Component:
    """A single circuit component parsed from a netlist."""
    name: str           # Instance name (e.g., M1, XMp1, R1, C1)
    type: str           # Component type: mosfet_n, mosfet_p, resistor, capacitor, voltage, current, bjt_pnp, bjt_npn, subcircuit
    model: str          # Model name (e.g., NMOS, sky130_fd_pr__nfet_01v8)
    pins: dict          # Pin name -> net name (e.g., {"drain": "d1", "gate": "inp", ...})
    params: dict        # Parameters (e.g., {"W": "10u", "L": "0.5u"})
    comment: str = ""   # Inline comment from the netlist


@dataclass
class Net:
    """A named electrical net connecting component pins."""
    name: str
    connections: list = field(default_factory=list)  # List of (component_name, pin_name)


@dataclass
class Circuit:
    """Parsed circuit representation."""
    title: str = ""
    components: dict = field(default_factory=dict)   # name -> Component
    nets: dict = field(default_factory=dict)          # net_name -> Net
    comments: list = field(default_factory=list)      # Section comments for annotation
    supply_voltage: float = 0.0


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
    # tokens[0] = name (already extracted), tokens[1..4] = d g s b, tokens[5] = model
    pins = {
        "drain": tokens[1],
        "gate": tokens[2],
        "source": tokens[3],
        "bulk": tokens[4],
    }
    model = tokens[5] if len(tokens) > 5 else ("PMOS" if is_pmos else "NMOS")
    params = _parse_params(tokens[6:])
    ctype = "mosfet_p" if is_pmos else "mosfet_n"

    # Check model name for PMOS/NMOS if not explicitly specified
    if model.upper() in ("PMOS", "PMOS1"):
        ctype = "mosfet_p"
    elif model.upper() in ("NMOS", "NMOS1"):
        ctype = "mosfet_n"

    return Component(name=name, type=ctype, model=model, pins=pins, params=params)


def _parse_subcircuit_instance(name: str, tokens: list[str]) -> Component:
    """Parse a subcircuit instance: Xname n1 n2 ... model params...

    For SKY130 MOSFETs: XMname drain gate source bulk sky130_fd_pr__nfet_01v8 W=... L=...
    For SKY130 BJTs: XQname collector base emitter substrate sky130_fd_pr__pnp_... m=...
    """
    # Find the model token: first token that doesn't contain '=' and isn't a simple net name
    # In practice, the model is the token right before the first key=value pair
    net_tokens = []
    model = ""
    param_start = len(tokens)

    for i in range(1, len(tokens)):
        if '=' in tokens[i]:
            param_start = i
            break
        net_tokens.append(tokens[i])

    # Last net token is actually the model
    if net_tokens:
        model = net_tokens[-1]
        net_tokens = net_tokens[:-1]

    params = _parse_params(tokens[param_start:])
    ctype = _classify_sky130(model)

    # Assign pin names based on device type
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
        # Generic subcircuit: number the pins
        pins = {f"pin{i+1}": net for i, net in enumerate(net_tokens)}

    return Component(name=name, type=ctype, model=model, pins=pins, params=params)


def parse_netlist(filepath: str) -> Circuit:
    """Parse a SPICE .cir file into a Circuit object."""
    circuit = Circuit()

    with open(filepath, 'r') as f:
        lines = f.readlines()

    # Handle line continuations (+ at start of line)
    merged_lines = []
    for line in lines:
        stripped = line.rstrip()
        if stripped.startswith('+') and merged_lines:
            merged_lines[-1] += ' ' + stripped[1:].strip()
        else:
            merged_lines.append(stripped)

    for i, line in enumerate(merged_lines):
        line = line.strip()

        # Title (first line if not a dot command or comment)
        if i == 0 and line.startswith('*'):
            circuit.title = line[1:].strip()
            continue

        # Comments — capture section headers
        if line.startswith('*'):
            comment = line[1:].strip()
            if comment.startswith('=') or 'stage' in comment.lower() or 'bias' in comment.lower():
                circuit.comments.append(comment)
            continue

        # Skip empty lines and control blocks
        if not line or line.startswith('.'):
            # Extract supply voltage from Vdd definition
            if line.upper().startswith('.') and 'control' in line.lower():
                break  # Stop at .control block
            continue

        # Remove inline comments
        if ';' in line:
            line = line[:line.index(';')]
        if '$' in line and '=$' not in line and '$&' not in line:
            line = line[:line.index('$')]

        tokens = line.split()
        if not tokens:
            continue

        name = tokens[0]
        first_char = name[0].upper()
        comp = None

        # Voltage source: Vname n+ n- value
        if first_char == 'V':
            pins = {"positive": tokens[1], "negative": tokens[2]}
            # Extract DC value
            value = ""
            params = {}
            rest = tokens[3:]
            for t in rest:
                if t.upper() == 'DC' or t.upper() == 'AC':
                    continue
                if '=' in t:
                    k, v = t.split('=', 1)
                    params[k] = v
                elif not value:
                    value = t
            params["value"] = value
            comp = Component(name=name, type="voltage_source", model="V", pins=pins, params=params)

            # Track supply voltage
            if 'vdd' in tokens[1].lower() and value:
                try:
                    circuit.supply_voltage = abs(float(value))
                except ValueError:
                    pass

        # Current source: Iname n+ n- value
        elif first_char == 'I':
            pins = {"positive": tokens[1], "negative": tokens[2]}
            value = tokens[3] if len(tokens) > 3 else ""
            comp = Component(name=name, type="current_source", model="I", pins=pins, params={"value": value})

        # MOSFET: Mname d g s b model params...
        elif first_char == 'M':
            is_pmos = False
            if len(tokens) > 5:
                model_tok = tokens[5].upper()
                is_pmos = 'PMOS' in model_tok or 'PFET' in model_tok
            comp = _parse_mosfet(name, tokens, is_pmos)

        # Subcircuit instance (SKY130 devices): Xname ...
        elif first_char == 'X':
            comp = _parse_subcircuit_instance(name, tokens)

        # Resistor: Rname n1 n2 value
        elif first_char == 'R':
            pins = {"pin1": tokens[1], "pin2": tokens[2]}
            value = tokens[3] if len(tokens) > 3 else ""
            params = _parse_params(tokens[4:])
            params["value"] = value
            comp = Component(name=name, type="resistor", model="R", pins=pins, params=params)

        # Capacitor: Cname n1 n2 value
        elif first_char == 'C':
            pins = {"pin1": tokens[1], "pin2": tokens[2]}
            value = tokens[3] if len(tokens) > 3 else ""
            params = _parse_params(tokens[4:])
            params["value"] = value
            comp = Component(name=name, type="capacitor", model="C", pins=pins, params=params)

        if comp:
            circuit.components[comp.name] = comp
            for pin_name, net_name in comp.pins.items():
                _add_net_connection(circuit, net_name, comp.name, pin_name)

    return circuit


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
