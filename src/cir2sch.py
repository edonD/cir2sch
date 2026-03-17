#!/usr/bin/env python3
"""
cir2sch — Convert SPICE .cir netlists to xschem .sch schematics.

Usage:
    python cir2sch.py input.cir [output.sch]

If output is not specified, writes to input_name.sch in the same directory.
"""

import sys
import os

# Add this directory to path for local imports
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from parser import parse_netlist, print_circuit
from placer import place_circuit, detect_building_blocks
from router import route_nets
from renderer import render_to_file


def convert(input_path: str, output_path: str = None, verbose: bool = True):
    """Convert a .cir netlist to an xschem .sch schematic."""
    if output_path is None:
        base = os.path.splitext(input_path)[0]
        output_path = base + ".sch"

    # Step 1: Parse
    if verbose:
        print(f"Parsing: {input_path}")
    circuit = parse_netlist(input_path)
    if verbose:
        print(f"  Title: {circuit.title}")
        print(f"  Components: {len(circuit.components)}")
        print(f"  Nets: {len(circuit.nets)}")

    # Step 2: Detect building blocks
    blocks = detect_building_blocks(circuit)
    if verbose and blocks:
        print(f"  Building blocks detected:")
        for b in blocks:
            print(f"    {b.type}: {b.components}")

    # Step 3: Place
    if verbose:
        print("Placing components...")
    placed = place_circuit(circuit)

    # Step 4: Route
    if verbose:
        print("Routing wires...")
    wires, labels = route_nets(placed)

    # Step 5: Render
    if verbose:
        print(f"Rendering: {output_path}")
    render_to_file(placed, wires, labels, output_path, title=circuit.title)

    if verbose:
        print("Done!")

    return output_path


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)

    input_path = sys.argv[1]
    output_path = sys.argv[2] if len(sys.argv) > 2 else None
    verbose = "--quiet" not in sys.argv

    if not os.path.exists(input_path):
        print(f"Error: {input_path} not found")
        sys.exit(1)

    convert(input_path, output_path, verbose)


if __name__ == "__main__":
    main()
