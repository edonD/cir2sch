v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 0 -650 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 0 -620 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 0 -595 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 0 -570 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 500 -150 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 670 -400 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 930 -400 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 470 -400 0 0 {name=XMr1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 580 -550 0 0 {name=XMr2
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 310 -550 0 0 {name=XMr3
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 50 -550 0 0 {name=XMr4
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 70 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 70 -150 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 520 -180 520 -370 {lab=ntail}
N 520 -370 690 -370 {lab=ntail}
N 690 -370 910 -370 {lab=ntail}
N 690 -430 490 -430 {lab=d1}
N 70 -580 70 -430 {lab=outp}
N 70 -430 90 -430 {lab=outp}
N 90 -430 90 -180 {lab=outp}
N 90 -430 350 -430 {lab=outp}
N 350 -430 350 -400 {lab=outp}
N 350 -400 350 -150 {lab=outp}
C {devices/lab_pin.sym} 480 -150 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 520 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 690 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 90 -120 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 650 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 910 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 600 -580 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 950 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 490 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 600 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 600 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 330 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 330 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 70 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 70 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 330 -580 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 70 -580 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 480 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 450 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 560 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 290 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 30 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 330 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 310 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 310 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 310 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 50 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 50 -150 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/ipin.sym} -70 -590 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -70 -550 0 0 {name=p_inm lab=inm}
C {devices/opin.sym} 1090 -510 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1090 -470 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -70 -430 0 0 {name=p_clk lab=clk}
