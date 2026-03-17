v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -50 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -50 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -50 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -50 -665 0 0 0.35 0.35 {}
C {devices/res.sym} 230 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 370 -280 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 700 -280 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 820 -280 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 190 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 560 -220 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 530 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 700 -200 0 0 {name=Ray4
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
C {devices/res.sym} 300 -60 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 420 -80 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 0 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 440 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 320 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 440 -550 0 0 {name=RL2
value=14k}
N 230 -250 230 -280 {lab=xp_int}
N 230 -280 200 -280 {lab=xp_int}
N 230 -250 230 -310 {lab=xp_int}
N 230 -310 370 -310 {lab=xp_int}
N 200 -280 -20 -280 {lab=xp_int}
N 370 -250 370 -190 {lab=vcm}
N 370 -190 560 -190 {lab=vcm}
N 560 -190 560 -170 {lab=vcm}
N 560 -170 700 -170 {lab=vcm}
N 700 -170 700 -250 {lab=vcm}
N 700 -250 820 -250 {lab=vcm}
N 700 -250 700 -310 {lab=xn_int}
N 700 -310 820 -310 {lab=xn_int}
N 700 -250 700 -280 {lab=xn_int}
N 700 -280 460 -280 {lab=xn_int}
N 460 -280 240 -280 {lab=xn_int}
N 190 -120 190 -150 {lab=yp_int}
N 190 -150 90 -150 {lab=yp_int}
N 190 -120 190 -250 {lab=yp_int}
N 190 -250 560 -250 {lab=yp_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 300 -30 {lab=tail_node}
N 300 -30 300 -50 {lab=tail_node}
N 300 -50 420 -50 {lab=tail_node}
N 130 -180 130 -250 {lab=mid1}
N 130 -250 200 -250 {lab=mid1}
N 130 -180 130 -250 {lab=mid1}
N 130 -250 20 -250 {lab=mid1}
N 130 -120 130 -90 {lab=src_b1}
N 130 -90 300 -90 {lab=src_b1}
N 310 -180 310 -250 {lab=mid2}
N 310 -250 240 -250 {lab=mid2}
N 310 -180 310 -250 {lab=mid2}
N 310 -250 420 -250 {lab=mid2}
N 310 -120 310 -110 {lab=src_b2}
N 310 -110 420 -110 {lab=src_b2}
N 20 -310 420 -310 {lab=outn}
N 420 -310 420 -520 {lab=outn}
N 420 -520 440 -520 {lab=outn}
N 200 -310 240 -310 {lab=outp}
N 240 -310 240 -520 {lab=outp}
N 240 -520 320 -520 {lab=outp}
C {devices/lab_pin.sym} 230 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 700 -310 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 190 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 530 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 20 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 420 -280 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 320 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -580 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 530 -120 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 530 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 530 -230 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 700 -230 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/ipin.sym} -120 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -120 -590 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -120 -245 0 0 {name=p_vcm lab=vcm}
C {devices/iopin.sym} -120 -280 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -120 -200 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -120 -150 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -120 -110 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 980 -370 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 980 -330 0 0 {name=p_outn lab=outn}
