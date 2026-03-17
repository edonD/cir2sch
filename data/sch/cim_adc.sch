v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 170 -595 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 170 -565 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 170 -540 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 170 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 620 30 0 0 {name=XMtail
w={Wcomp_tail}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 510 -150 0 0 {name=XM1
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 730 -150 0 1 {name=XM2
w={Wcomp_in}u
l={Lcomp_in}u
nf=2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 510 -400 0 0 {name=XMr1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 730 -400 0 1 {name=XMr2
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 790 -400 0 0 {name=XMr3
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 1010 -400 0 1 {name=XMr4
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 220 -400 0 0 {name=XMp1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 370 -400 0 0 {name=XMp2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 -220 0 0 {name=XMn1
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 400 -220 0 0 {name=XMn2
w={Wcomp_latch}u
l={Lcomp_latch}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 640 0 640 -120 {lab=ntail}
N 640 -120 710 -120 {lab=ntail}
N 710 -120 530 -120 {lab=ntail}
N 490 -400 750 -400 {lab=clk}
N 750 -400 770 -400 {lab=clk}
N 770 -400 1030 -400 {lab=clk}
N 530 -180 530 -430 {lab=d1}
N 530 -180 530 -190 {lab=d1}
N 530 -190 240 -190 {lab=d1}
N 710 -180 710 -430 {lab=d2}
N 710 -180 710 -190 {lab=d2}
N 710 -190 420 -190 {lab=d2}
N 200 -400 200 -220 {lab=outn}
N 200 -400 200 -430 {lab=outn}
N 200 -430 390 -430 {lab=outn}
N 390 -430 390 -250 {lab=outn}
N 390 -250 420 -250 {lab=outn}
N 240 -430 240 -400 {lab=outp}
N 240 -400 350 -400 {lab=outp}
N 240 -430 240 -250 {lab=outp}
N 240 -250 240 -220 {lab=outp}
N 240 -220 380 -220 {lab=outp}
C {devices/lab_pin.sym} 600 30 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 640 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 530 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 420 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 490 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 750 -150 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 530 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 530 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 710 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 710 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 810 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 810 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 990 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 990 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 390 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 390 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 810 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 990 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} 100 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -110 0 0 {name=p_inm lab=inm}
C {devices/ipin.sym} 100 -314 0 0 {name=p_clk lab=clk}
C {devices/opin.sym} 1170 -328 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1170 -288 0 0 {name=p_outn lab=outn}
