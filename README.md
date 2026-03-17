# cir2sch — SPICE Netlist to Schematic Converter

Converts `.cir` SPICE netlists into beautiful xschem `.sch` schematics with intelligent placement and routing. Built by an autonomous AI agent iterating toward publication-quality output.

## Current Scores

| Circuit | Score | Status |
|---------|-------|--------|
| ode_gm-cell | **9/10** | Diff pair symmetric, clean routing |
| cim_pwm-driver | **9/10** | Inverter chain clear, sources organized |
| cim_bitcell | **8/10** | Cross-coupled latch visible, read port separated |
| cim_adc | **8/10** | StrongARM comparator layout readable |
| ode_integrator | **8/10** | TG pairs symmetric, caps clear |
| ode_multiplier | **8/10** | Gilbert cell quad stacked, attenuators grouped |
| cim_array | **8/10** | Crossbar routing, subcircuit symbols |

**Aggregate: 8.3/10 | Zero wire crossings | Target: 10/10**

## Renders

### ode_gm-cell — Programmable OTA (9/10)
![ode_gm-cell](renders/ode_gm-cell.png)

### cim_pwm-driver — PWM Wordline Driver (9/10)
![cim_pwm-driver](renders/cim_pwm-driver.png)

### cim_bitcell — 8T SRAM Bitcell (8/10)
![cim_bitcell](renders/cim_bitcell.png)

### cim_adc — 6-bit SAR ADC (8/10)
![cim_adc](renders/cim_adc.png)

### ode_integrator — Gm-C Integrator (8/10)
![ode_integrator](renders/ode_integrator.png)

### ode_multiplier — Four-Quadrant Multiplier (8/10)
![ode_multiplier](renders/ode_multiplier.png)

### cim_array — 8x8 CIM Array (8/10)
![cim_array](renders/cim_array.png)

## Pipeline

```
parser.py → placer.py → router.py → renderer.py
```

Input: any `.cir` SPICE netlist → Output: xschem `.sch` schematic + PNG render

### Key Features
- **Building block detection**: Diff pairs, current mirrors, cross-coupled pairs, CMOS inverters, transmission gates, cascode stacks
- **Hierarchical placement**: PMOS top, NMOS bottom, signal flows left-to-right, power top-to-bottom
- **Connected block stacking**: Groups related blocks vertically (e.g., Gilbert cell top quad above bottom pair)
- **Smart passive placement**: Supply-connected, inline, and input passives categorized and placed appropriately
- **Zero-crossing routing**: Orthogonal Manhattan routing with crossing-aware L-route direction selection
- **MST-based chain routing**: Minimum spanning tree for multi-pin net connections
- **Array detection**: Regular grid patterns placed as 2D crossbar layouts
- **Subcircuit-aware parsing**: Auto-selects largest subcircuit when top-level is testbench
- **Frozen building blocks**: Recognized analog structures (diff pair, mirror, latch) preserved during overlap resolution

## Data Structure (for ML training)

```
data/
├── cir/          ← Input .cir files (439 files from 10+ sources)
│   ├── ode_gm-cell.cir
│   ├── sky130_bandgap.cir
│   ├── analoggym_*.cir
│   ├── aicas_*.cir
│   └── ...
└── sch/          ← Output .sch files (1:1 matched by name)
    ├── ode_gm-cell.sch
    └── ...
```

Each `cir/X.cir` → `sch/X.sch` pair is a training example for a future LLM fine-tune.

## Experiment History

| Iteration | Aggregate | Key Change |
|-----------|-----------|------------|
| Baseline | 4.5/10 | Initial placer, 28 wire crossings |
| +Block stacking | 5.8/10 | Connected blocks grouped vertically |
| +Interface pins | 6.1/10 | ipin/opin symbols for subcircuit ports |
| +Zero crossings | 6.1/10 | Post-process crossing elimination |
| +Inverter chain | 7.0/10 | Detected inverter chains, TG pairs |
| +Diff pair detect | 7.5/10 | Symmetric diff pair placement |
| +Frozen blocks | 7.9/10 | Building blocks preserved during overlap resolution |
| +Array overhaul | 8.0/10 | Crossbar routing, subcircuit symbols |
| +Tighter spacing | 8.3/10 | Reduced gaps, inline passives |
| **Current** | **8.3/10** | Agent still iterating toward 10/10 |
