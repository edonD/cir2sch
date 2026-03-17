v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 70 -745 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 70 -715 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 70 -690 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 70 -665 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 820 -150 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 590 -400 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 780 -400 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 400 -550 0 0 {name=XMr1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 570 -550 0 0 {name=XMr2
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 120 -550 0 0 {name=XMr3
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 930 -400 0 0 {name=XMr4
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 460 -400 0 0 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -220 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 460 -220 0 0 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 840 -180 840 -370 {lab=ntail}
N 840 -370 760 -370 {lab=ntail}
N 760 -370 610 -370 {lab=ntail}
N 140 -580 140 -400 {lab=outn}
N 140 -400 180 -400 {lab=outn}
N 180 -400 180 -220 {lab=outn}
N 480 -430 480 -250 {lab=outn}
N 220 -430 220 -250 {lab=outp}
N 220 -430 220 -400 {lab=outp}
N 220 -400 440 -400 {lab=outp}
N 440 -400 440 -220 {lab=outp}
C {devices/lab_pin.sym} 800 -150 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 380 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 910 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 840 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 610 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 610 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 420 -580 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 220 -190 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 570 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 760 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 590 -580 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 480 -190 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 800 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 420 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 420 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 590 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 590 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 140 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 140 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 950 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 950 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 140 -580 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 480 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 950 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 550 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 100 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/ipin.sym} 0 -590 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 0 -550 0 0 {name=p_inm lab=inm}
C {devices/opin.sym} 1090 -510 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1090 -470 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} 0 -430 0 0 {name=p_clk lab=clk}
