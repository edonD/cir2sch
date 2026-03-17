v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -310 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -310 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -310 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -310 -665 0 0 0.35 0.35 {}
C {devices/res.sym} -140 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 480 -280 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 600 -280 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 220 -280 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 220 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 720 -220 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 480 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 340 -220 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 220 30 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 100 -150 0 0 {name=Xbot1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 360 -150 0 1 {name=Xbot2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 280 -60 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 420 -60 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} -260 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} -20 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 100 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 840 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 320 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 440 -550 0 0 {name=RL2
value=14k}
N -140 -250 -140 -280 {lab=xp_int}
N -140 -280 -280 -280 {lab=xp_int}
N -140 -250 -140 -280 {lab=xp_int}
N -140 -280 80 -280 {lab=xp_int}
N 480 -250 480 -190 {lab=vcm}
N 480 -190 340 -190 {lab=vcm}
N 340 -190 340 -250 {lab=vcm}
N 340 -250 220 -250 {lab=vcm}
N 480 -250 480 -190 {lab=vcm}
N 480 -190 720 -190 {lab=vcm}
N 600 -250 600 -280 {lab=xn_int}
N 600 -280 860 -280 {lab=xn_int}
N 220 -310 220 -280 {lab=xn_int}
N 220 -280 0 -280 {lab=xn_int}
N 220 -120 220 -150 {lab=yp_int}
N 220 -150 80 -150 {lab=yp_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 280 -30 {lab=tail_node}
N 280 -30 420 -30 {lab=tail_node}
N 120 -180 120 -250 {lab=mid1}
N 120 -250 -40 -250 {lab=mid1}
N -40 -250 -240 -250 {lab=mid1}
N 120 -120 120 -90 {lab=src_b1}
N 120 -90 280 -90 {lab=src_b1}
N 340 -180 340 -250 {lab=mid2}
N 340 -250 120 -250 {lab=mid2}
N 340 -120 340 -90 {lab=src_b2}
N 340 -90 420 -90 {lab=src_b2}
N -40 -310 120 -310 {lab=outp}
N 120 -310 120 -520 {lab=outp}
N 120 -520 320 -520 {lab=outp}
C {devices/lab_pin.sym} -140 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} -140 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 480 -310 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 600 -310 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 600 -250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 220 -310 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 220 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 220 -120 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} 720 -250 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} 480 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 120 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 340 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -240 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -40 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 120 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 820 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 340 -180 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 820 -250 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} -240 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 820 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 440 -520 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 320 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -580 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 480 -120 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 480 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 380 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 380 -250 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 340 -250 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/ipin.sym} -380 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -380 -590 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -380 -250 0 0 {name=p_vcm lab=vcm}
C {devices/iopin.sym} -380 -200 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -380 -160 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -380 -110 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -380 -70 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1000 -370 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1000 -330 0 0 {name=p_outn lab=outn}
