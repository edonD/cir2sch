v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -90 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -90 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -90 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -90 -665 0 0 0.35 0.35 {}
C {devices/res.sym} -40 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} -40 -180 0 0 {name=Rax2
value=1k}
C {devices/res.sym} -40 220 0 0 {name=Rax3
value=4k}
C {devices/res.sym} -40 -80 0 0 {name=Rax4
value=1k}
C {devices/res.sym} -40 320 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} -40 20 0 0 {name=Ray2
value=1k}
C {devices/res.sym} -40 420 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} -40 120 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 220 30 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -150 0 0 {name=Xbot1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=Xbot2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 280 -60 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 430 -60 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 110 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 610 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 830 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 430 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 210 -550 0 0 {name=RL2
value=14k}
N -40 -250 -40 -210 {lab=xp_int}
N -40 -250 -40 -280 {lab=xp_int}
N -40 -280 90 -280 {lab=xp_int}
N -40 -150 -40 -50 {lab=vcm}
N -40 -50 -40 50 {lab=vcm}
N -40 50 -40 150 {lab=vcm}
N -40 -10 -40 -150 {lab=yp_int}
N -40 -150 90 -150 {lab=yp_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 280 -30 {lab=tail_node}
N 280 -30 430 -30 {lab=tail_node}
N 130 -180 130 -250 {lab=mid1}
N 130 -250 310 -250 {lab=mid1}
N 130 -120 130 -90 {lab=src_b1}
N 130 -90 280 -90 {lab=src_b1}
N 310 -180 310 -250 {lab=mid2}
N 310 -250 630 -250 {lab=mid2}
N 630 -250 810 -250 {lab=mid2}
N 310 -120 310 -90 {lab=src_b2}
N 310 -90 430 -90 {lab=src_b2}
N 130 -310 130 -520 {lab=outn}
N 130 -520 210 -520 {lab=outn}
N 310 -310 630 -310 {lab=outp}
N 310 -310 310 -520 {lab=outp}
N 310 -520 430 -520 {lab=outp}
C {devices/lab_pin.sym} -40 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} -40 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 590 -280 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} -40 190 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} -40 250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -40 -110 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 350 -280 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 850 -280 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} -40 290 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} -40 350 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -40 -10 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} -40 390 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} -40 450 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} -40 90 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 130 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 630 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 810 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 130 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 810 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 430 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 210 -580 0 0 {name=l_vdd lab=VDD}
C {devices/iopin.sym} -160 -590 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -160 -550 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -160 -510 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -160 -470 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 990 -430 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 990 -390 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -160 -350 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -160 -310 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -160 -270 0 0 {name=p_vcm lab=vcm}
