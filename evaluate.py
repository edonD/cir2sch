#!/usr/bin/env python3
"""
evaluate.py — Run the cir2sch pipeline on all test circuits,
render to PNG, and report scores.

Usage:
    python evaluate.py              # Run all
    python evaluate.py --file ode_gm-cell   # Run one
"""

import os
import sys
import json
import argparse
import subprocess
import glob

PROJECT_DIR = os.path.dirname(os.path.abspath(__file__))
CIR_DIR = os.path.join(PROJECT_DIR, "data", "cir")
SCH_DIR = os.path.join(PROJECT_DIR, "data", "sch")
RENDERS_DIR = os.path.join(PROJECT_DIR, "renders")
SCORES_DIR = os.path.join(PROJECT_DIR, "scores")
SRC_DIR = os.path.join(PROJECT_DIR, "src")

# Add src to path so we can import the pipeline
sys.path.insert(0, SRC_DIR)


def get_test_files():
    """List all .cir files in data/cir/."""
    files = sorted(glob.glob(os.path.join(CIR_DIR, "*.cir")))
    return [(os.path.basename(f).replace(".cir", ""), f) for f in files]


def run_pipeline(name, cir_path):
    """Run cir2sch on one .cir file, produce .sch output."""
    sch_path = os.path.join(SCH_DIR, f"{name}.sch")

    try:
        from cir2sch import convert
        convert(cir_path, sch_path)
        return sch_path
    except ImportError:
        # Fallback: run as subprocess
        result = subprocess.run(
            [sys.executable, os.path.join(SRC_DIR, "cir2sch.py"), cir_path, sch_path],
            capture_output=True, text=True, cwd=SRC_DIR
        )
        if result.returncode == 0:
            return sch_path
        else:
            print(f"  ERROR: {result.stderr[:200]}")
            return None


def render_to_png(name, sch_path):
    """Render .sch to PNG via xschem (requires xvfb on headless)."""
    png_path = os.path.join(RENDERS_DIR, f"{name}.png")

    # Try xschem first
    try:
        cmd = [
            "xvfb-run", "-a", "xschem",
            "--command",
            f'xschem load {sch_path}; after 2000 {{xschem print png {png_path}; after 500 {{exit 0}}}}'
        ]
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if os.path.exists(png_path):
            return png_path
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass

    # Try xschem SVG then convert
    svg_path = os.path.join(RENDERS_DIR, f"{name}.svg")
    try:
        cmd = [
            "xvfb-run", "-a", "xschem",
            "--command",
            f'xschem load {sch_path}; after 2000 {{xschem print svg {svg_path}; after 500 {{exit 0}}}}'
        ]
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if os.path.exists(svg_path):
            # Convert SVG to PNG
            try:
                import cairosvg
                cairosvg.svg2png(url=svg_path, write_to=png_path, scale=2)
                return png_path
            except ImportError:
                # Try Inkscape
                subprocess.run(
                    ["inkscape", svg_path, "--export-type=png", f"--export-filename={png_path}"],
                    capture_output=True, timeout=15
                )
                if os.path.exists(png_path):
                    return png_path
                return svg_path  # Return SVG if PNG conversion failed
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass

    print(f"  WARNING: Could not render {name} to image")
    return None


def compute_metrics(name, sch_path):
    """Compute automated placement metrics from the .sch file.
    These are proxies — the real evaluation is visual."""
    metrics = {
        "name": name,
        "components": 0,
        "wires": 0,
        "labels": 0,
        "wire_crossings_estimate": 0,
        "bounding_box_area": 0,
        "density": 0,
    }

    if not sch_path or not os.path.exists(sch_path):
        return metrics

    try:
        with open(sch_path) as f:
            lines = f.readlines()

        components = []
        wires = []

        for line in lines:
            line = line.strip()
            if line.startswith("C {"):
                # Component instance
                metrics["components"] += 1
                parts = line.split()
                if len(parts) >= 4:
                    try:
                        x, y = float(parts[-4]), float(parts[-3])
                        components.append((x, y))
                    except (ValueError, IndexError):
                        pass
            elif line.startswith("N "):
                # Wire segment
                metrics["wires"] += 1
                parts = line.split()
                if len(parts) >= 5:
                    try:
                        x1, y1 = float(parts[1]), float(parts[2])
                        x2, y2 = float(parts[3]), float(parts[4])
                        wires.append((x1, y1, x2, y2))
                    except (ValueError, IndexError):
                        pass

        # Bounding box
        if components:
            xs = [c[0] for c in components]
            ys = [c[1] for c in components]
            w = max(xs) - min(xs) + 200
            h = max(ys) - min(ys) + 200
            metrics["bounding_box_area"] = w * h
            if metrics["bounding_box_area"] > 0:
                metrics["density"] = metrics["components"] / (metrics["bounding_box_area"] / 1e6)

        # Estimate wire crossings (simplified)
        crossings = 0
        for i, w1 in enumerate(wires):
            for w2 in wires[i+1:]:
                if segments_cross(w1, w2):
                    crossings += 1
        metrics["wire_crossings_estimate"] = crossings

    except Exception as e:
        print(f"  Metrics error for {name}: {e}")

    return metrics


def segments_cross(w1, w2):
    """Check if two wire segments cross (simplified for orthogonal wires)."""
    x1a, y1a, x1b, y1b = w1
    x2a, y2a, x2b, y2b = w2

    # Only check orthogonal crossings (one horizontal, one vertical)
    h1 = (y1a == y1b)  # horizontal
    v1 = (x1a == x1b)  # vertical
    h2 = (y2a == y2b)
    v2 = (x2a == x2b)

    if h1 and v2:
        # w1 horizontal, w2 vertical
        if (min(x1a, x1b) < x2a < max(x1a, x1b) and
            min(y2a, y2b) < y1a < max(y2a, y2b)):
            return True
    elif v1 and h2:
        if (min(x2a, x2b) < x1a < max(x2a, x2b) and
            min(y1a, y1b) < y2a < max(y1a, y1b)):
            return True
    return False


def run_all(specific_file=None):
    """Run pipeline on all test files and report."""
    os.makedirs(SCH_DIR, exist_ok=True)
    os.makedirs(RENDERS_DIR, exist_ok=True)
    os.makedirs(SCORES_DIR, exist_ok=True)

    files = get_test_files()
    if specific_file:
        files = [(n, p) for n, p in files if n == specific_file]

    if not files:
        print("No test files found in data/cir/")
        return

    print(f"{'='*60}")
    print(f"  cir2sch Evaluation — {len(files)} circuits")
    print(f"{'='*60}")

    all_metrics = []

    for name, cir_path in files:
        print(f"\n--- {name} ---")

        # Run pipeline
        print(f"  Converting...")
        sch_path = run_pipeline(name, cir_path)
        if not sch_path:
            print(f"  FAILED")
            continue

        # Render
        print(f"  Rendering...")
        render_path = render_to_png(name, sch_path)
        if render_path:
            print(f"  Rendered: {render_path}")
        else:
            print(f"  Render failed (evaluate visually in xschem)")

        # Compute automated metrics
        metrics = compute_metrics(name, sch_path)
        all_metrics.append(metrics)
        print(f"  Components: {metrics['components']}")
        print(f"  Wires: {metrics['wires']}")
        print(f"  Wire crossings (est.): {metrics['wire_crossings_estimate']}")

        # Save automated metrics (separate from visual scores)
        metrics_path = os.path.join(SCORES_DIR, f"{name}_metrics.json")
        with open(metrics_path, "w") as f:
            json.dump(metrics, f, indent=2)

    # Summary
    print(f"\n{'='*60}")
    print(f"  SUMMARY")
    print(f"{'='*60}")
    print(f"  {'Name':<25} {'Comps':>6} {'Wires':>6} {'Crossings':>10}")
    print(f"  {'-'*50}")
    for m in all_metrics:
        print(f"  {m['name']:<25} {m['components']:>6} {m['wires']:>6} {m['wire_crossings_estimate']:>10}")

    total_crossings = sum(m["wire_crossings_estimate"] for m in all_metrics)
    print(f"\n  Total wire crossings: {total_crossings}")
    print(f"\n  Now look at the renders in renders/ and score them honestly.")
    print(f"  Score each on: clarity, wire cleanliness, hierarchy, spacing, presentation-ready (0-10 each)")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--file", type=str, help="Run on specific file (name without .cir)")
    args = parser.parse_args()
    run_all(specific_file=args.file)
