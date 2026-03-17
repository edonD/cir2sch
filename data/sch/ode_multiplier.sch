v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -70 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -70 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -70 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -70 -665 0 0 0.35 0.35 {}
C {devices/res.sym} -20 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} -20 -180 0 0 {name=Rax2
value=1k}
C {devices/res.sym} -20 220 0 0 {name=Rax3
value=4k}
C {devices/res.sym} -20 -80 0 0 {name=Rax4
value=1k}
C {devices/res.sym} -20 320 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} -20 20 0 0 {name=Ray2
value=1k}
C {devices/res.sym} -20 420 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} -20 120 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 1460 -150 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 260 -150 0 0 {name=Xbot1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 840 -150 0 0 {name=Xbot2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 990 -150 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 1120 -150 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 130 -400 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 390 -400 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 730 -400 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 990 -400 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 490 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 230 -550 0 0 {name=RL2
value=14k}
N -20 -250 -20 -210 {lab=xp_int}
N -20 -250 -20 -400 {lab=xp_int}
N -20 -400 110 -400 {lab=xp_int}
N -20 -150 -20 -50 {lab=vcm}
N -20 -50 -20 50 {lab=vcm}
N -20 50 -20 150 {lab=vcm}
N 1480 -180 1480 -120 {lab=tail_node}
N 1480 -120 1120 -120 {lab=tail_node}
N 1120 -120 990 -120 {lab=tail_node}
N 280 -180 280 -370 {lab=mid1}
N 280 -370 370 -370 {lab=mid1}
N 370 -370 150 -370 {lab=mid1}
N 860 -180 860 -370 {lab=mid2}
N 860 -370 750 -370 {lab=mid2}
N 750 -370 970 -370 {lab=mid2}
N 860 -120 860 -180 {lab=src_b2}
N 860 -180 1120 -180 {lab=src_b2}
N 150 -430 150 -520 {lab=outn}
N 150 -520 230 -520 {lab=outn}
N 370 -430 370 -520 {lab=outp}
N 370 -520 490 -520 {lab=outp}
N 490 -520 490 -430 {lab=outp}
N 490 -430 750 -430 {lab=outp}
C {devices/lab_pin.sym} -20 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} -20 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 710 -400 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} -20 190 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} -20 250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -20 -110 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 410 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 1010 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -20 290 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} -20 350 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -20 -10 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} 240 -150 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -20 390 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} -20 450 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} -20 90 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 820 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 1440 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 1480 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1480 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 860 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 150 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 750 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 970 -400 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 280 -120 0 0 {name=l_src_b1 sig_type=std_logic lab=src_b1}
C {devices/lab_pin.sym} 990 -180 0 0 {name=l_src_b1 sig_type=std_logic lab=src_b1}
C {devices/lab_pin.sym} 150 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 970 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 490 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 230 -580 0 0 {name=l_vdd lab=VDD}
C {devices/iopin.sym} -140 -590 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -140 -550 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -140 -510 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -140 -470 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1620 -430 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1620 -390 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -140 -350 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -140 -310 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -140 -270 0 0 {name=p_vcm lab=vcm}
