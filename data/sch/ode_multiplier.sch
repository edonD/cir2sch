v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -190 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -190 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -190 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -190 -665 0 0 0.35 0.35 {}
C {devices/res.sym} 240 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 360 -280 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 720 -280 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 480 -280 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 210 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 840 -220 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 610 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 470 -200 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 220 30 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 90 -150 0 0 {name=Xbot1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 350 -150 0 1 {name=Xbot2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 300 -60 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 420 -80 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} -140 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} -20 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 120 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 600 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 320 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 440 -550 0 0 {name=RL2
value=14k}
N 240 -250 240 -280 {lab=xp_int}
N 240 -280 100 -280 {lab=xp_int}
N 240 -250 240 -310 {lab=xp_int}
N 240 -310 360 -310 {lab=xp_int}
N 100 -280 -160 -280 {lab=xp_int}
N 360 -250 480 -250 {lab=vcm}
N 480 -250 480 -170 {lab=vcm}
N 480 -170 470 -170 {lab=vcm}
N 470 -170 840 -170 {lab=vcm}
N 840 -170 840 -190 {lab=vcm}
N 720 -250 720 -280 {lab=xn_int}
N 720 -280 620 -280 {lab=xn_int}
N 620 -280 620 -310 {lab=xn_int}
N 620 -310 480 -310 {lab=xn_int}
N 210 -120 210 -150 {lab=yp_int}
N 210 -150 70 -150 {lab=yp_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 300 -30 {lab=tail_node}
N 300 -30 300 -50 {lab=tail_node}
N 300 -50 420 -50 {lab=tail_node}
N 110 -180 110 -250 {lab=mid1}
N 110 -250 -40 -250 {lab=mid1}
N -40 -250 -120 -250 {lab=mid1}
N 110 -120 110 -90 {lab=src_b1}
N 110 -90 300 -90 {lab=src_b1}
N 330 -180 330 -250 {lab=mid2}
N 330 -250 140 -250 {lab=mid2}
N 330 -180 330 -250 {lab=mid2}
N 330 -250 580 -250 {lab=mid2}
N 330 -120 330 -110 {lab=src_b2}
N 330 -110 420 -110 {lab=src_b2}
N -40 -310 140 -310 {lab=outp}
N 140 -310 140 -520 {lab=outp}
N 140 -520 320 -520 {lab=outp}
C {devices/lab_pin.sym} 240 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 720 -310 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 0 -280 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 210 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 840 -250 0 0 {name=l_yp_int sig_type=std_logic lab=yp_int}
C {devices/lab_pin.sym} 610 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 610 -120 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 470 -230 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 370 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 110 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 330 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -120 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -40 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 140 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} -120 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 580 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 440 -520 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 320 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -580 0 0 {name=l_vdd lab=VDD}
C {devices/ipin.sym} -260 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -260 -590 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -260 -245 0 0 {name=p_vcm lab=vcm}
C {devices/iopin.sym} -260 -280 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -260 -200 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -260 -150 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -260 -110 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1000 -370 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1000 -330 0 0 {name=p_outn lab=outn}
