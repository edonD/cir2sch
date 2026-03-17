"""
xschem .sch file renderer.

Takes a placed & routed circuit and outputs a valid xschem schematic file.
"""

from parser import Circuit, Component
from placer import PlacedCircuit, Placement
from router import Wire, Label


# Map component types to xschem symbol paths
SYMBOL_MAP = {
    # Generic SPICE models
    ("mosfet_n", "NMOS"): "devices/nmos4.sym",
    ("mosfet_p", "PMOS"): "devices/pmos4.sym",
    ("resistor", "R"): "devices/res.sym",
    ("capacitor", "C"): "devices/capa.sym",
    ("voltage_source", "V"): "devices/vsource.sym",
    ("current_source", "I"): "devices/isource.sym",

    # SKY130 devices — mapped to xschem_sky130 symbols
    "sky130_fd_pr__nfet_01v8": "sky130_fd_pr/nfet_01v8.sym",
    "sky130_fd_pr__pfet_01v8": "sky130_fd_pr/pfet_01v8.sym",
    "sky130_fd_pr__nfet_g5v0d10v5": "sky130_fd_pr/nfet_g5v0d10v5.sym",
    "sky130_fd_pr__pfet_g5v0d10v5": "sky130_fd_pr/pfet_g5v0d10v5.sym",
    "sky130_fd_pr__nfet_01v8_lvt": "sky130_fd_pr/nfet_01v8_lvt.sym",
    "sky130_fd_pr__pfet_01v8_lvt": "sky130_fd_pr/pfet_01v8_lvt.sym",
    "sky130_fd_pr__nfet_03v3_nvt": "sky130_fd_pr/nfet_03v3_nvt.sym",
    "sky130_fd_pr__pnp_05v5_W0p68L0p68": "sky130_fd_pr/pnp_05v5_W0p68L0p68.sym",
    "sky130_fd_pr__npn_05v5_W1p00L1p00": "sky130_fd_pr/npn_05v5_W1p00L1p00.sym",
    "sky130_fd_pr__res_xhigh_po_0p35": "sky130_fd_pr/res_xhigh_po_0p35.sym",
    "sky130_fd_pr__cap_mim_m3_1": "sky130_fd_pr/cap_mim_m3_1.sym",
    "sky130_fd_pr__diode_pw2nd_05v5": "sky130_fd_pr/diode_pw2nd_05v5.sym",
}


def _get_symbol(comp: Component) -> str:
    """Get the xschem symbol path for a component."""
    # Try exact model match first (SKY130)
    model = comp.model
    if model in SYMBOL_MAP:
        return SYMBOL_MAP[model]

    # Try partial match for SKY130 models
    for key, sym in SYMBOL_MAP.items():
        if isinstance(key, str) and key in model:
            return sym

    # Fall back to generic type+model match
    key = (comp.type, comp.model)
    if key in SYMBOL_MAP:
        return SYMBOL_MAP[key]

    # Last resort: generic by type
    type_defaults = {
        "mosfet_n": "devices/nmos4.sym",
        "mosfet_p": "devices/pmos4.sym",
        "resistor": "devices/res.sym",
        "capacitor": "devices/capa.sym",
        "voltage_source": "devices/vsource.sym",
        "current_source": "devices/isource.sym",
        "bjt_pnp": "devices/pnp.sym",
        "bjt_npn": "devices/npn.sym",
        "diode": "devices/diode.sym",
    }
    return type_defaults.get(comp.type, "devices/noconn.sym")


def _format_attributes(comp: Component) -> str:
    """Format component attributes for xschem property string."""
    attrs = [f"name={comp.name}"]

    # Add device parameters
    for key, val in comp.params.items():
        if key == "value" and val:
            if comp.type in ("resistor", "capacitor"):
                attrs.append(f"value={val}")
            elif comp.type in ("voltage_source", "current_source"):
                attrs.append(f"value={val}")
        elif key in ("W", "L", "nf", "m", "mult", "model", "area"):
            attrs.append(f"{key}={val}")

    # SKY130 specific attributes
    if comp.model.startswith("sky130"):
        if "spiceprefix" not in comp.params:
            attrs.append("spiceprefix=X")

    return "\n".join(attrs)


def _format_label_name(net_name: str) -> str:
    """Clean up net name for display."""
    # Map common names
    mapping = {
        "0": "GND",
        "vdd": "VDD",
        "vss": "VSS",
        "gnd": "GND",
    }
    return mapping.get(net_name.lower(), net_name)


def render_xschem(placed: PlacedCircuit, wires: list[Wire], labels: list[Label],
                  title: str = "") -> str:
    """Render a complete xschem .sch file."""
    lines = []

    # Header
    lines.append("v {xschem version=3.4.5 file_version=1.2}")
    lines.append("G {}")
    lines.append("K {}")
    lines.append("V {}")
    lines.append("S {}")
    lines.append("E {}")

    # Title annotation
    if title or placed.circuit.title:
        t = title or placed.circuit.title
        lines.append(f'T {{{t}}} 50 -700 0 0 0.6 0.6 {{}}')

    # Section comment annotations
    for i, comment in enumerate(placed.circuit.comments):
        lines.append(f'T {{{comment}}} 50 {-660 + i * 30} 0 0 0.4 0.4 {{}}')

    # Component instances
    for comp_name, comp in placed.circuit.components.items():
        if comp_name not in placed.placements:
            continue

        p = placed.placements[comp_name]
        sym = _get_symbol(comp)
        attrs = _format_attributes(comp)

        lines.append(f'C {{{sym}}} {p.x} {p.y} {p.rotation} {p.flip} {{{attrs}}}')

    # Wires
    for w in wires:
        lab_attr = f"lab={w.net}" if w.net else ""
        lines.append(f'N {w.x1} {w.y1} {w.x2} {w.y2} {{{lab_attr}}}')

    # Net labels (using lab_pin symbols)
    seen_labels = set()
    for label in labels:
        key = (label.x, label.y, label.net)
        if key in seen_labels:
            continue
        seen_labels.add(key)

        display_name = _format_label_name(label.net)

        # Use different symbols for supply/ground vs signal
        net_lower = label.net.lower()
        if net_lower in ('0', 'gnd', 'vss'):
            lines.append(f'C {{devices/gnd.sym}} {label.x} {label.y} 0 0 {{name=l_{label.net} lab={display_name}}}')
        elif net_lower in ('vdd', 'vcc', 'avdd'):
            lines.append(f'C {{devices/vdd.sym}} {label.x} {label.y} 0 0 {{name=l_{label.net} lab={display_name}}}')
        else:
            lines.append(f'C {{devices/lab_pin.sym}} {label.x} {label.y} 0 0 {{name=l_{label.net} sig_type=std_logic lab={display_name}}}')

    return "\n".join(lines) + "\n"


def render_to_file(placed: PlacedCircuit, wires: list[Wire], labels: list[Label],
                   output_path: str, title: str = ""):
    """Render and write to a .sch file."""
    content = render_xschem(placed, wires, labels, title)
    with open(output_path, 'w') as f:
        f.write(content)
    print(f"Written: {output_path}")
    print(f"  Components: {len(placed.placements)}")
    print(f"  Wires: {len(wires)}")
    print(f"  Labels: {len(labels)}")
