# cir2sch — Autonomous Schematic Quality Improvement

You are improving a SPICE-to-schematic converter. The goal: produce schematics that look like a human analog designer drew them.

## The Problem

The current tool converts .cir netlists to xschem .sch files, but the placement is bad — components pile up, wires cross unnecessarily, there's no visual hierarchy. A good schematic tells the story of how the circuit works. A bad schematic is a tangled mess that nobody can read.

## What You Improve

The pipeline is: `parser.py → placer.py → router.py → renderer.py`

You can modify any file in `src/`. The parser and renderer are mostly fine. **The placement and routing are where the quality lives.**

## Test Set

`data/cir/` contains 7 real analog circuits from SKY130 designs:
- `ode_gm-cell.cir` — Source-degenerated OTA with CMFB
- `ode_integrator.cir` — Gm-C integrator with TG reset switches
- `ode_multiplier.cir` — Resistive-attenuated Gilbert cell
- `cim_bitcell.cir` — 8T SRAM CIM cell
- `cim_adc.cir` — 6-bit SAR ADC
- `cim_array.cir` — 64x64 CIM array
- `cim_pwm-driver.cir` — PWM wordline driver

Do not modify these files. They are the fixed test set.

## How to Evaluate

After every change to the pipeline:

1. **Run the pipeline** on all 7 test circuits:
   ```bash
   python evaluate.py
   ```
   This generates `data/sch/<name>.sch` and `renders/<name>.png` for each circuit.

2. **Look at every render.** Open the PNG files and honestly judge each one. For each schematic, score it on:

   - **Clarity (0-10):** Can you immediately understand the circuit function? Are the building blocks (diff pair, current mirror, etc.) visually obvious?
   - **Wire cleanliness (0-10):** Are wires orthogonal? Minimal crossings? No unnecessary detours? Clean junctions?
   - **Hierarchy (0-10):** Does signal flow left-to-right? Power top-to-bottom? Are related components grouped?
   - **Spacing (0-10):** Not too crowded, not too spread out? Consistent spacing between similar components?
   - **Presentation-ready (0-10):** Would you put this in a paper or slide deck without redrawing it?

3. **Be brutally honest.** A score of 3/10 on presentation-ready is fine — it means you know what needs fixing. Inflating scores wastes iterations. If a schematic is ugly, say it's ugly and explain exactly why.

4. **Save scores** to `scores/<name>.json` with the breakdown.

5. **Compute the aggregate score**: average across all circuits, all criteria. This is the single number you optimize.

## What Makes a Good Schematic

These are the rules that every analog designer follows instinctively. Your placement algorithm must learn them:

- **Differential pairs are symmetric.** The two transistors of a diff pair sit side-by-side, horizontally mirrored. Their sources connect at the bottom to a tail current source.
- **Current mirrors are vertical.** The reference device is on one side, the mirror copy next to it, gates connected.
- **Signal flows left to right.** Input on the left, output on the right.
- **Power flows top to bottom.** VDD at the top, VSS at the bottom.
- **Cascode devices stack vertically.** A cascode transistor sits directly on top of the device it cascodes.
- **Feedback paths are visually clear.** If there's a feedback loop, you should see it as a visible path in the schematic, not buried in a spaghetti of wires.
- **No wire should cross a component.** Route around, not through.
- **Label nets that go far.** Instead of drawing a wire across the entire schematic, use a net label.
- **Group related components.** The bias network is in one corner. The signal path is along the middle. The load is on the output side.
- **White space is good.** Don't cram everything together. A schematic with breathing room is easier to read than a compact one.

## Output Format

For each input `data/cir/<name>.cir`, produce:
- `data/sch/<name>.sch` — valid xschem schematic (openable in xschem)
- `renders/<name>.png` — PNG screenshot for visual evaluation

The sch and cir files must be 1:1 matched by filename. This is the future training set.

## Tools

- xschem is installed. Render .sch to PNG:
  ```bash
  xvfb-run -a xschem --command "xschem load <file>.sch; after 1000 {xschem print png renders/<name>.png; after 500 {exit 0}}"
  ```
  Or use a simpler approach if this doesn't work — convert .sch to SVG, then SVG to PNG via cairosvg or similar.

- Python + matplotlib + numpy available. `pip install` anything you need.

---

---

---

# Autonomous Experiment Loop

**LOOP FOREVER:**

1. **Think.** Look at the current renders. What's the worst schematic? What specific placement or routing issue makes it bad? Pick one thing to fix.

2. **Modify.** Change `src/placer.py`, `src/router.py`, or other pipeline files. Make targeted improvements — don't rewrite everything at once.

3. **Commit.** `git add -A && git commit -m '<what you changed>'`

4. **Run.** `python evaluate.py > run.log 2>&1`

5. **Look at every render.** Open each PNG. Score each schematic honestly. Write scores to `scores/`.

6. **Decide.**
   - If the aggregate score improved: **keep.** Update README.md with the new scores and renders.
   - If equal or worse: **revert.** `git reset --hard HEAD~1`. Try something different.

7. **Repeat.**

## Visual Self-Evaluation (CRITICAL)

After every run, you MUST look at the rendered PNGs and judge them. Do not skip this step. Do not rely only on computed metrics like wire crossings or overlap counts — those are proxies. The ground truth is: **does the schematic look good?**

When you look at a render, ask yourself honestly:
- "Can I trace the signal path from input to output?"
- "Do I immediately see the diff pair / current mirror / building blocks?"
- "Are there wire crossings that could be avoided by moving one component?"
- "Is there a big empty space next to a crowded area?"
- "Would I be embarrassed to show this to another engineer?"

Write these observations in the README and in the score files. The honest assessment is more valuable than the number.

## README.md

Update after every keeper. Include:
- Current aggregate score
- Renders of each schematic (embedded as images)
- Per-circuit score breakdown
- What was changed and why
- What still looks bad and what you plan to fix next

## NEVER STOP

Loop until the human stops you. If you run out of ideas, look at real analog schematics online (search for "two-stage opamp schematic", "Gilbert cell schematic", "SAR ADC schematic") and compare your output to professional hand-drawn schematics. The gap between your output and those references is your TODO list.
