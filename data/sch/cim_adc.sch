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
C {devices/nmos4.sym} 640 30 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 530 -150 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 750 -150 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 540 -400 0 0 {name=XMr1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 750 -400 0 1 {name=XMr2
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 1030 -400 0 0 {name=XMr3
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 1250 -400 0 1 {name=XMr4
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 400 -400 0 0 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -220 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 420 -220 0 0 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 660 0 660 -120 {lab=ntail}
N 660 -120 730 -120 {lab=ntail}
N 730 -120 550 -120 {lab=ntail}
N 550 -180 550 -430 {lab=d1}
N 550 -430 560 -430 {lab=d1}
N 550 -180 550 -190 {lab=d1}
N 550 -190 220 -190 {lab=d1}
N 180 -400 180 -220 {lab=outn}
N 180 -400 180 -430 {lab=outn}
N 180 -430 420 -430 {lab=outn}
N 420 -430 420 -250 {lab=outn}
N 420 -250 440 -250 {lab=outn}
N 220 -430 220 -250 {lab=outp}
N 220 -430 220 -400 {lab=outp}
N 220 -400 380 -400 {lab=outp}
N 380 -400 380 -220 {lab=outp}
N 380 -220 400 -220 {lab=outp}
C {devices/lab_pin.sym} 620 30 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 520 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 660 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 660 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 550 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 440 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 510 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 730 -180 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 730 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 440 -190 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 770 -150 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 730 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 730 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1050 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1050 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1230 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1230 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 420 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 420 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 1050 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 1230 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 770 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1010 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1270 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/ipin.sym} 80 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 80 -110 0 0 {name=p_inm lab=inm}
C {devices/ipin.sym} 80 30 0 0 {name=p_clk lab=clk}
C {devices/opin.sym} 1410 -400 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1410 -360 0 0 {name=p_outn lab=outn}
