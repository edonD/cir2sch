v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -130 -650 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -130 -620 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -130 -595 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -130 -570 0 0 0.35 0.35 {}
C {devices/res.sym} -80 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} -80 -180 0 0 {name=Rax2
value=1k}
C {devices/res.sym} -80 220 0 0 {name=Rax3
value=4k}
C {devices/res.sym} -80 -80 0 0 {name=Rax4
value=1k}
C {devices/res.sym} -80 320 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} -80 20 0 0 {name=Ray2
value=1k}
C {devices/res.sym} -80 420 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} -80 120 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 1400 -150 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -150 0 0 {name=Xbot1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 780 -150 0 0 {name=Xbot2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 930 -150 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 1060 -150 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 70 -400 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -400 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 670 -400 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 930 -400 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 430 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 170 -550 0 0 {name=RL2
value=14k}
N -80 -250 -80 -210 {lab=xp_int}
N -80 -250 -80 -400 {lab=xp_int}
N -80 -400 50 -400 {lab=xp_int}
N -80 -150 -80 -50 {lab=vcm}
N -80 -50 -80 50 {lab=vcm}
N -80 50 -80 150 {lab=vcm}
N 1420 -180 1420 -120 {lab=tail_node}
N 1420 -120 1060 -120 {lab=tail_node}
N 1060 -120 930 -120 {lab=tail_node}
N 220 -180 220 -370 {lab=mid1}
N 220 -370 310 -370 {lab=mid1}
N 310 -370 90 -370 {lab=mid1}
N 800 -180 800 -370 {lab=mid2}
N 800 -370 690 -370 {lab=mid2}
N 690 -370 910 -370 {lab=mid2}
N 800 -120 800 -180 {lab=src_b2}
N 800 -180 1060 -180 {lab=src_b2}
N 90 -430 90 -520 {lab=outn}
N 90 -520 170 -520 {lab=outn}
N 310 -430 310 -520 {lab=outp}
N 310 -520 430 -520 {lab=outp}
N 430 -520 430 -430 {lab=outp}
N 430 -430 690 -430 {lab=outp}
C {devices/lab_pin.sym} -80 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} -80 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 650 -400 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} -80 190 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} -80 250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -80 -110 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 350 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 950 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -80 290 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} -80 350 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -80 -10 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} 180 -150 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -80 390 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} -80 450 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} -80 90 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 760 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 1380 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 1420 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1420 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 800 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 -400 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 220 -120 0 0 {name=l_src_b1 sig_type=std_logic lab=src_b1}
C {devices/lab_pin.sym} 930 -180 0 0 {name=l_src_b1 sig_type=std_logic lab=src_b1}
C {devices/lab_pin.sym} 90 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 910 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 430 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 170 -580 0 0 {name=l_vdd lab=VDD}
C {devices/iopin.sym} -200 -590 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -200 -550 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -200 -510 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -200 -470 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1560 -430 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1560 -390 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -200 -350 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -200 -310 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -200 -270 0 0 {name=p_vcm lab=vcm}
