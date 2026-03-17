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


# Cache of generated subcircuit symbol paths
_generated_sym_cache = {}


def _generate_subcircuit_sym(model: str, num_pins: int, output_dir: str, is_array: bool = False) -> str:
    """Generate a .sym file for a subcircuit type with proper pin positions.

    Returns the filename (relative) of the generated symbol.
    """
    import os
    suffix = "_array" if is_array else ""
    sym_name = f"{model}{suffix}.sym"
    sym_path = os.path.join(output_dir, sym_name)

    if sym_path in _generated_sym_cache:
        return sym_name

    lines = []
    lines.append("v {xschem version=3.4.5 file_version=1.2}")
    lines.append(f'K {{type=subcircuit\nformat="@name @pinlist {model}"\ntemplate="name=X1"}}')
    lines.append("G {}")
    lines.append("V {}")
    lines.append("S {}")
    lines.append("E {}")

    if is_array and num_pins >= 6:
        # Array mode: 4-sided pin layout for clean crossbar
        box_hw, box_hh = 25, 25
        lines.append(f"L 4 {-box_hw} {-box_hh} {box_hw} {-box_hh} {{}}")
        lines.append(f"L 4 {box_hw} {-box_hh} {box_hw} {box_hh} {{}}")
        lines.append(f"L 4 {box_hw} {box_hh} {-box_hw} {box_hh} {{}}")
        lines.append(f"L 4 {-box_hw} {box_hh} {-box_hw} {-box_hh} {{}}")
        lines.append(f'T {{@name}} {-box_hw + 2} {-box_hh - 12} 0 0 0.12 0.12 {{}}')

        four_side = {
            1: (-8,  -box_hh, -8,  -box_hh - 10),  # top-left
            2: ( 8,  -box_hh,  8,  -box_hh - 10),  # top-right
            3: (-box_hw, -8, -box_hw - 10, -8),     # left-upper
            4: (-box_hw,  8, -box_hw - 10,  8),     # left-lower
            5: ( box_hw, -8,  box_hw + 10, -8),     # right-upper
            6: ( box_hw,  8,  box_hw + 10,  8),     # right-lower
            7: (-8,  box_hh, -8,  box_hh + 10),     # bottom-left
            8: ( 8,  box_hh,  8,  box_hh + 10),     # bottom-right
        }
        for i in range(1, num_pins + 1):
            pin_name = f"pin{i}"
            if i in four_side:
                bx, by, ex, ey = four_side[i]
                lines.append(f"L 4 {bx} {by} {ex} {ey} {{}}")
                cx, cy = ex, ey
                lines.append(f"B 5 {cx - 2} {cy - 2} {cx + 2} {cy + 2} {{name={pin_name} dir=inout}}")
    else:
        # Default: left/right distribution
        pin_spacing = 20
        pins_per_side = (num_pins + 1) // 2
        box_half_h = max(20, pins_per_side * (pin_spacing // 2) + pin_spacing // 4)
        box_w = 20

        lines.append(f"L 4 {-box_w} {-box_half_h} {box_w} {-box_half_h} {{}}")
        lines.append(f"L 4 {box_w} {-box_half_h} {box_w} {box_half_h} {{}}")
        lines.append(f"L 4 {box_w} {box_half_h} {-box_w} {box_half_h} {{}}")
        lines.append(f"L 4 {-box_w} {box_half_h} {-box_w} {-box_half_h} {{}}")
        lines.append(f'T {{@name}} {-box_w + 2} {-box_half_h - 12} 0 0 0.15 0.15 {{}}')

        for i in range(1, num_pins + 1):
            pin_name = f"pin{i}"
            if i % 2 == 1:
                side_idx = (i - 1) // 2
                y = -box_half_h + pin_spacing // 2 + side_idx * pin_spacing
                lines.append(f"L 4 {-box_w - 10} {y} {-box_w} {y} {{}}")
                lines.append(f"B 5 {-box_w - 12} {y - 2} {-box_w - 8} {y + 2} {{name={pin_name} dir=inout}}")
            else:
                side_idx = (i - 2) // 2
                y = -box_half_h + pin_spacing // 2 + side_idx * pin_spacing
                lines.append(f"L 4 {box_w} {y} {box_w + 10} {y} {{}}")
                lines.append(f"B 5 {box_w + 8} {y - 2} {box_w + 12} {y + 2} {{name={pin_name} dir=inout}}")

    with open(sym_path, 'w') as f:
        f.write('\n'.join(lines) + '\n')

    _generated_sym_cache[sym_path] = sym_name
    return sym_name


def _get_symbol(comp: Component, output_dir: str = "") -> str:
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

    # For user-defined subcircuit types, generate a .sym file
    if comp.type == "subcircuit" and output_dir:
        import re
        num_pins = len(comp.pins)
        is_array = bool(re.search(r'r(\d+)_?c(\d+)', comp.name, re.IGNORECASE))
        sym_name = _generate_subcircuit_sym(model, num_pins, output_dir, is_array)
        return sym_name

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
                  title: str = "", output_dir: str = "") -> str:
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
    # Count comments to determine title gap
    filtered_comments = [c for c in placed.circuit.comments if not c.startswith('=')]
    num_comments = min(len(filtered_comments), 3)
    title_gap = 120 + num_comments * 25  # Enough room for title + comments
    title_y = min(all_y) - title_gap
    title_x = min(all_x) - 50

    # Title annotation
    if title or placed.circuit.title:
        t = title or placed.circuit.title
        lines.append(f'T {{{t}}} {title_x} {title_y} 0 0 0.5 0.5 {{}}')

    # Section comment annotations — limit to 3 most important, skip "===" lines
    for i, comment in enumerate(filtered_comments[:3]):
        lines.append(f'T {{{comment}}} {title_x} {title_y + 30 + i * 25} 0 0 0.35 0.35 {{}}')

    # Component instances
    for comp_name, comp in placed.circuit.components.items():
        if comp_name not in placed.placements:
            continue

        p = placed.placements[comp_name]
        sym = _get_symbol(comp, output_dir)
        attrs = _format_attributes(comp)

        lines.append(f'C {{{sym}}} {p.x} {p.y} {p.rotation} {p.flip} {{{attrs}}}')

    # Array structure annotations
    _add_array_annotations(lines, placed)

    # Wires
    for w in wires:
        lab_attr = f"lab={w.net}" if w.net else ""
        lines.append(f'N {w.x1} {w.y1} {w.x2} {w.y2} {{{lab_attr}}}')

    # Build set of wire endpoint positions per net (these already have lab= attributes)
    wire_endpoints = set()
    for w in wires:
        if w.net:
            wire_endpoints.add((w.x1, w.y1, w.net))
            wire_endpoints.add((w.x2, w.y2, w.net))

    # Net labels (using lab_pin symbols)
    seen_labels = set()
    for label in labels:
        key = (label.x, label.y, label.net)
        if key in seen_labels:
            continue
        # Skip labels at wire endpoints (wire already carries the net name)
        if key in wire_endpoints:
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

        # Classify pins and position at the y-level of their connections
        input_pins = []
        output_pins = []
        other_pins = []

        for pin_name in placed.circuit.interface_pins:
            low = pin_name.lower()
            if low in ('vdd', 'vcc', 'avdd', 'vss', 'gnd', '0'):
                continue

            # Find y-position as centroid of all connections for this pin
            pin_y = None
            if pin_name in placed.circuit.nets:
                ys = []
                for cn, pn in placed.circuit.nets[pin_name].connections:
                    if cn in placed.placements:
                        ys.append(placed.placements[cn].y)
                if ys:
                    pin_y = int(sum(ys) / len(ys))

            if any(kw in low for kw in ['in', 'clk', 'reset', 'bias', 'vcm']):
                input_pins.append((pin_name, "devices/ipin.sym", pin_y))
            elif any(kw in low for kw in ['out']):
                output_pins.append((pin_name, "devices/opin.sym", pin_y))
            else:
                other_pins.append((pin_name, "devices/iopin.sym", pin_y))

        # Place input pins on left, spaced to avoid overlap
        used_y = set()
        for pin_name, sym, pin_y in input_pins + other_pins:
            py = pin_y if pin_y is not None else top_y
            # Avoid overlap with already-placed pins
            while py in used_y or any(abs(py - uy) < 35 for uy in used_y):
                py += 40
            used_y.add(py)
            lines.append(f'C {{{sym}}} {left_x} {py} 0 0 {{name=p_{pin_name} lab={pin_name}}}')

        # Place output pins on right
        used_y_out = set()
        for pin_name, sym, pin_y in output_pins:
            py = pin_y if pin_y is not None else top_y
            while py in used_y_out or any(abs(py - uy) < 35 for uy in used_y_out):
                py += 40
            used_y_out.add(py)
            lines.append(f'C {{{sym}}} {right_x} {py} 0 0 {{name=p_{pin_name} lab={pin_name}}}')

    return "\n".join(lines) + "\n"


def render_to_file(placed: PlacedCircuit, wires: list[Wire], labels: list[Label],
                   output_path: str, title: str = ""):
    """Render and write to a .sch file."""
    import os
    output_dir = os.path.dirname(os.path.abspath(output_path))
    content = render_xschem(placed, wires, labels, title, output_dir)
    with open(output_path, 'w') as f:
        f.write(content)
    print(f"Written: {output_path}")
    print(f"  Components: {len(placed.placements)}")
    print(f"  Wires: {len(wires)}")
    print(f"  Labels: {len(labels)}")
