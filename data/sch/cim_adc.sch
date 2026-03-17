v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 150 -595 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 150 -565 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 150 -540 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 150 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 600 30 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 490 -150 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 710 -150 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 500 -400 0 0 {name=XMr1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 670 -400 0 1 {name=XMr2
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 810 -400 0 0 {name=XMr3
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 990 -400 0 1 {name=XMr4
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 360 -400 0 0 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -220 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 380 -220 0 0 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 620 0 620 -120 {lab=ntail}
N 620 -120 690 -120 {lab=ntail}
N 690 -120 510 -120 {lab=ntail}
N 690 -180 690 -430 {lab=d2}
N 690 -430 650 -430 {lab=d2}
N 690 -180 690 -190 {lab=d2}
N 690 -190 400 -190 {lab=d2}
N 180 -400 180 -220 {lab=outn}
N 180 -400 180 -430 {lab=outn}
N 180 -430 380 -430 {lab=outn}
N 380 -430 380 -250 {lab=outn}
N 380 -250 400 -250 {lab=outn}
N 220 -430 220 -400 {lab=outp}
N 220 -400 340 -400 {lab=outp}
N 220 -430 220 -250 {lab=outp}
N 220 -250 220 -220 {lab=outp}
N 220 -220 360 -220 {lab=outp}
C {devices/lab_pin.sym} 580 30 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 480 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 620 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 620 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 470 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 730 -150 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 520 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 650 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 650 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 830 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 830 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 970 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 970 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 830 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 970 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 690 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 790 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1010 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 510 -180 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 510 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 520 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 510 -190 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 220 -190 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/ipin.sym} 80 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 80 -110 0 0 {name=p_inm lab=inm}
C {devices/ipin.sym} 80 -314 0 0 {name=p_clk lab=clk}
C {devices/opin.sym} 1150 -328 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1150 -288 0 0 {name=p_outn lab=outn}
