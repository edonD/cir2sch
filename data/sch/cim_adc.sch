v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 100 -650 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 100 -620 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 100 -595 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 100 -570 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 600 -150 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 770 -400 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
m=1
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 1030 -400 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
m=1
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 570 -400 0 0 {name=XMr1
w=2u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 680 -550 0 0 {name=XMr2
w=2u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 410 -550 0 0 {name=XMr3
w=2u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 150 -550 0 0 {name=XMr4
w=2u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 170 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 430 -400 0 1 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 170 -150 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 430 -150 0 1 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 620 -180 620 -370 {lab=ntail}
N 620 -370 790 -370 {lab=ntail}
N 790 -370 1010 -370 {lab=ntail}
C {devices/lab_pin.sym} 580 -150 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 550 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 660 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 390 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 130 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 620 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 620 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 790 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1010 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 790 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 590 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 190 -120 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 750 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1010 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 700 -580 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 410 -120 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1050 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 590 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 590 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 430 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 430 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 430 -580 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 410 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 410 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 170 -580 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 190 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 190 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -150 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} 30 -590 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 30 -550 0 0 {name=p_inm lab=inm}
C {devices/opin.sym} 1190 -510 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1190 -470 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} 30 -430 0 0 {name=p_clk lab=clk}
