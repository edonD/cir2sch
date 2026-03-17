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
    """Get the xschem symbol path for a component.

    Uses clean generic symbols (nmos4/pmos4) for presentation-ready schematics.
    The model info is preserved in attributes for simulation accuracy.
    """
    # Use generic symbols for clean presentation
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
    if comp.type in type_defaults:
        return type_defaults[comp.type]

    # For subcircuits, try SKY130 symbol paths
    model = comp.model
    if model in SYMBOL_MAP:
        return SYMBOL_MAP[model]
    for key, sym in SYMBOL_MAP.items():
        if isinstance(key, str) and key in model:
            return sym

    return "devices/noconn.sym"


def _format_attributes(comp: Component) -> str:
    """Format component attributes for xschem property string."""
    attrs = [f"name={comp.name}"]

    if comp.type in ("mosfet_n", "mosfet_p"):
        # Use lowercase w/l/m to match nmos4.sym/pmos4.sym template
        w = comp.params.get("W", "5u")
        l = comp.params.get("L", "0.18u")
        m = comp.params.get("m", comp.params.get("mult", "1"))
        nf = comp.params.get("nf", "1")
        attrs.append(f"w={w}")
        attrs.append(f"l={l}")
        # Only show m if not default (saves text space)
        if m not in ("1", 1):
            attrs.append(f"m={m}")
        if nf != "1":
            attrs.append(f"nf={nf}")
        attrs.append(f"model={comp.model}")
        if comp.model.startswith("sky130"):
            attrs.append("spiceprefix=X")
    else:
        # Other components: passives, sources, etc.
        for key, val in comp.params.items():
            if key == "value" and val:
                attrs.append(f"value={val}")
            elif key in ("W", "L", "nf", "m", "mult", "model", "area"):
                attrs.append(f"{key}={val}")

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


def _add_array_annotations(lines: list, placed: PlacedCircuit):
    """Add row/column annotations for array-like circuits."""
    import re
    pattern = re.compile(r'^(.*?)_?r(\d+)_?c(\d+)$', re.IGNORECASE)

    # Find array components
    array_comps = {}
    for name in placed.placements:
        m = pattern.match(name)
        if m:
            r, c = int(m.group(2)), int(m.group(3))
            array_comps[(r, c)] = name

    if len(array_comps) < 4:
        # Not an array — add individual subcircuit labels instead
        for comp_name, comp in placed.circuit.components.items():
            if comp_name not in placed.placements:
                continue
            if comp.type == "subcircuit":
                p = placed.placements[comp_name]
                short_name = comp_name.replace("Xcell_", "").replace("Xpre", "pre")
                lines.append(f'T {{{short_name}}} {p.x - 20} {p.y + 20} 0 0 0.25 0.25 {{}}')
        return

    rows = max(r for r, c in array_comps) + 1
    cols = max(c for r, c in array_comps) + 1

    # Add column headers
    for c in range(cols):
        if (0, c) in array_comps:
            p = placed.placements[array_comps[(0, c)]]
            lines.append(f'T {{col{c}}} {p.x} {p.y - 60} 0 0 0.3 0.3 {{}}')

    # Add row headers
    for r in range(rows):
        if (r, 0) in array_comps:
            p = placed.placements[array_comps[(r, 0)]]
            lines.append(f'T {{row{r}}} {p.x - 80} {p.y} 0 0 0.3 0.3 {{}}')

    # Add array dimension label
    if (0, 0) in array_comps:
        p = placed.placements[array_comps[(0, 0)]]
        lines.append(f'T {{{rows}x{cols} Array}} {p.x - 80} {p.y - 80} 0 0 0.35 0.35 {{}}')


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

    # Find top-left corner of the placement for title positioning
    all_y = [p.y for p in placed.placements.values()] if placed.placements else [-700]
    all_x = [p.x for p in placed.placements.values()] if placed.placements else [50]
    title_y = min(all_y) - 100
    title_x = min(all_x) - 50

    # Title annotation
    if title or placed.circuit.title:
        t = title or placed.circuit.title
        lines.append(f'T {{{t}}} {title_x} {title_y} 0 0 0.5 0.5 {{}}')

    # Section comment annotations — limit to 3 most important, skip "===" lines
    filtered_comments = [c for c in placed.circuit.comments if not c.startswith('=')]
    for i, comment in enumerate(filtered_comments[:3]):
        lines.append(f'T {{{comment}}} {title_x} {title_y + 30 + i * 25} 0 0 0.35 0.35 {{}}')

    # Component instances
    for comp_name, comp in placed.circuit.components.items():
        if comp_name not in placed.placements:
            continue

        p = placed.placements[comp_name]
        sym = _get_symbol(comp)
        attrs = _format_attributes(comp)

        lines.append(f'C {{{sym}}} {p.x} {p.y} {p.rotation} {p.flip} {{{attrs}}}')

    # Array structure annotations
    _add_array_annotations(lines, placed)

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

    # Interface pins for subcircuit-based schematics
    if placed.circuit.interface_pins:
        all_x = [p.x for p in placed.placements.values()] if placed.placements else [0]
        all_y = [p.y for p in placed.placements.values()] if placed.placements else [0]
        left_x = min(all_x) - 120
        right_x = max(all_x) + 160
        top_y = min(all_y) - 40
        bot_y = max(all_y) + 40

        # Classify pins as input/output/supply based on naming
        for i, pin_name in enumerate(placed.circuit.interface_pins):
            low = pin_name.lower()
            if low in ('vdd', 'vcc', 'avdd', 'vss', 'gnd', '0'):
                continue  # Skip supply pins — already shown as VDD/GND symbols

            # Determine pin type and position
            if any(kw in low for kw in ['in', 'clk', 'reset', 'bias', 'vcm']):
                # Input: place on the left
                sym = "devices/ipin.sym"
                px = left_x
                py = top_y + i * 40
            elif any(kw in low for kw in ['out']):
                # Output: place on the right
                sym = "devices/opin.sym"
                px = right_x
                py = top_y + i * 40
            else:
                # Bidirectional
                sym = "devices/iopin.sym"
                px = left_x
                py = top_y + i * 40

            lines.append(f'C {{{sym}}} {px} {py} 0 0 {{name=p_{pin_name} lab={pin_name}}}')

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
