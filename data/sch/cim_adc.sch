v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 6-bit SAR ADC for Compute-in-Memory} 120 -500 0 0 0.5 0.5 {}
T {.subckt strongarm_comp inp inm outp outn clk vdd vss} 120 -470 0 0 0.35 0.35 {}
T {Input differential pair (NMOS, fingered for layout symmetry)} 120 -445 0 0 0.35 0.35 {}
T {Cross-coupled NMOS latch (sources connected to input pair drains)} 120 -420 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 1500 -150 0 0 {name=XMtail
W={Wcomp_tail}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 770 -400 0 0 {name=XM1
W={Wcomp_in}u
L={Lcomp_in}u
nf=2
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1030 -400 0 1 {name=XM2
W={Wcomp_in}u
L={Lcomp_in}u
nf=2
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1500 -400 0 0 {name=XMr1
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1760 -400 0 0 {name=XMr2
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 2020 -400 0 0 {name=XMr3
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 2280 -400 0 0 {name=XMr4
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 170 -400 0 0 {name=XMp1
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 430 -400 0 1 {name=XMp2
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
N 1500 -180 1100 -180 {lab=ntail}
N 1100 -180 1100 -310 {lab=ntail}
N 770 -370 1100 -370 {lab=ntail}
N 1100 -370 1100 -310 {lab=ntail}
N 1030 -370 1100 -370 {lab=ntail}
N 1100 -370 1100 -310 {lab=ntail}
N 1480 -150 1790 -150 {lab=clk}
N 1790 -150 1790 -350 {lab=clk}
N 1480 -400 1790 -400 {lab=clk}
N 1790 -400 1790 -350 {lab=clk}
N 1740 -400 1790 -400 {lab=clk}
N 1790 -400 1790 -350 {lab=clk}
N 2000 -400 1790 -400 {lab=clk}
N 1790 -400 1790 -350 {lab=clk}
N 2260 -400 1790 -400 {lab=clk}
N 1790 -400 1790 -350 {lab=clk}
C {devices/gnd.sym} 1500 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 790 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1010 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 770 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 1500 -430 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 170 -120 0 0 {name=l_d1 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 750 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1030 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1760 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 430 -120 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1050 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 1500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1760 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1780 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2020 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2040 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2300 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 430 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 2020 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 430 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 430 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 2280 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 170 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 170 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -150 0 0 {name=l_outp sig_type=std_logic lab=outp}
