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
C {sky130_fd_pr/nfet_01v8.sym} 600 -150 0 0 {name=XMtail
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -400 0 0 {name=XMr1
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 680 -550 0 0 {name=XMr2
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 410 -550 0 0 {name=XMr3
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 150 -550 0 0 {name=XMr4
W=2u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 170 -400 0 0 {name=XMp1
W={Wcomp_latch}u
L={Lcomp_latch}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 420 -400 0 1 {name=XMp2
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
N 600 -180 600 -370 {lab=ntail}
N 600 -370 770 -370 {lab=ntail}
N 770 -370 1030 -370 {lab=ntail}
N 770 -430 580 -430 {lab=d1}
N 580 -430 580 -120 {lab=d1}
N 580 -120 170 -120 {lab=d1}
C {devices/lab_pin.sym} 580 -150 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 560 -400 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 660 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 390 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 130 -550 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/gnd.sym} 600 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 620 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 790 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1010 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 750 -400 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1030 -430 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 680 -580 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 430 -120 0 0 {name=l_d2 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 1050 -400 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/vdd.sym} 580 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 600 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 430 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 150 -520 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -550 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 420 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 410 -580 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 420 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 430 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -580 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 170 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 440 -400 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 170 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 450 -150 0 0 {name=l_outp sig_type=std_logic lab=outp}
