# cir2sch — SPICE Netlist to Schematic Converter

You are improving a tool that converts .cir SPICE netlists into beautiful xschem .sch schematics.

## Directory Structure

```
cir2sch/
├── src/                  ← Pipeline code (YOU MODIFY THESE)
│   ├── cir2sch.py        ← Main entry point
│   ├── parser.py         ← Netlist parsing
│   ├── placer.py         ← Component placement (THIS IS THE KEY FILE)
│   ├── router.py         ← Wire routing
│   └── renderer.py       ← xschem .sch output
├── data/
│   ├── cir/              ← Input .cir files (DO NOT MODIFY)
│   └── sch/              ← Output .sch files (generated, matched by name)
├── renders/              ← PNG screenshots of each schematic
├── scores/               ← Per-file evaluation scores (JSON)
├── evaluate.py           ← Runs pipeline + renders + scores everything
├── results.tsv           ← Experiment log
└── program.md            ← Your full instructions
```

## Naming Convention

Input and output files are matched by name:
- `data/cir/ode_gm-cell.cir` → `data/sch/ode_gm-cell.sch` → `renders/ode_gm-cell.png`

This 1:1 matching is critical — it becomes the training set for a future ML model.

## The Rule

**You must honestly judge your own output.** After every change, render the schematics to PNG, look at them, and ask yourself: "Would an analog designer put this in a presentation?" If the answer is no, the change failed. Do not lie to yourself about quality.
