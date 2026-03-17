v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 90 -500 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 90 -470 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 90 -445 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 90 -420 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 840 -150 0 0 {name=XMtail
W={Wcomp_tail}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 780 -400 0 0 {name=XM1
W={Wcomp_in}u
L={Lcomp_in}u
nf=2
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1270 -400 0 1 {name=XM2
W={Wcomp_in}u
L={Lcomp_in}u
nf=2
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 460 -400 0 0 {name=XMr1
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -400 0 0 {name=XMr2
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 960 -400 0 0 {name=XMr3
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 620 -400 0 0 {name=XMr4
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 140 -400 0 0 {name=XMp1
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 1 {name=XMp2
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 170 -150 0 0 {name=XMn1
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -150 0 1 {name=XMn2
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
N 840 -180 840 -370 {lab=ntail}
N 840 -370 780 -370 {lab=ntail}
N 780 -370 1270 -370 {lab=ntail}
N 780 -430 460 -430 {lab=d1}
N 460 -430 460 -120 {lab=d1}
N 460 -120 170 -120 {lab=d1}
C {devices/lab_pin.sym} 820 -150 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 440 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1100 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 940 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 600 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 840 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 860 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 800 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1250 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 760 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1270 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1120 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 430 -120 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1290 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 460 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1120 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1140 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 960 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 980 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 620 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 640 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 140 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 160 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 960 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 120 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 300 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 430 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 620 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 140 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 320 -400 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 170 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -150 0 0 {name=l_outp sig_type=std_logic lab=outp}
