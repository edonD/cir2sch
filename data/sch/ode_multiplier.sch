v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -30 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -30 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -30 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -30 -665 0 0 0.35 0.35 {}
C {devices/res.sym} 560 -240 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 150 -160 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 700 -220 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 540 -140 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 290 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 140 -70 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 660 -140 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 520 -60 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 220 30 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 80 -150 0 0 {name=Xbot1
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
C {devices/res.sym} 400 -80 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 20 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 140 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 310 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 430 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 320 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 440 -550 0 0 {name=RL2
value=14k}
N 560 -210 560 -280 {lab=xp_int}
N 560 -280 290 -280 {lab=xp_int}
N 290 -280 290 -190 {lab=xp_int}
N 290 -190 150 -190 {lab=xp_int}
N 150 -190 150 -280 {lab=xp_int}
N 150 -280 0 -280 {lab=xp_int}
N 150 -130 150 -40 {lab=vcm}
N 150 -40 140 -40 {lab=vcm}
N 140 -40 140 -30 {lab=vcm}
N 140 -30 520 -30 {lab=vcm}
N 520 -30 520 -110 {lab=vcm}
N 520 -110 540 -110 {lab=vcm}
N 700 -190 700 -170 {lab=xn_int}
N 700 -170 540 -170 {lab=xn_int}
N 540 -170 540 -280 {lab=xn_int}
N 540 -280 450 -280 {lab=xn_int}
N 450 -280 160 -280 {lab=xn_int}
N 290 -120 290 -100 {lab=yp_int}
N 290 -100 140 -100 {lab=yp_int}
N 140 -100 140 -150 {lab=yp_int}
N 140 -150 60 -150 {lab=yp_int}
N 660 -110 660 -90 {lab=yn_int}
N 660 -90 520 -90 {lab=yn_int}
N 520 -90 520 -150 {lab=yn_int}
N 520 -150 380 -150 {lab=yn_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 280 -30 {lab=tail_node}
N 280 -30 280 -50 {lab=tail_node}
N 280 -50 400 -50 {lab=tail_node}
N 100 -180 100 -250 {lab=mid1}
N 100 -250 120 -250 {lab=mid1}
N 120 -250 40 -250 {lab=mid1}
N 100 -120 100 -90 {lab=src_b1}
N 100 -90 280 -90 {lab=src_b1}
N 340 -180 340 -250 {lab=mid2}
N 340 -250 330 -250 {lab=mid2}
N 330 -250 410 -250 {lab=mid2}
N 340 -120 340 -110 {lab=src_b2}
N 340 -110 400 -110 {lab=src_b2}
N 40 -310 410 -310 {lab=outn}
N 410 -310 410 -520 {lab=outn}
N 410 -520 440 -520 {lab=outn}
N 120 -310 330 -310 {lab=outp}
N 330 -310 330 -520 {lab=outp}
N 330 -520 320 -520 {lab=outp}
C {devices/lab_pin.sym} 560 -270 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 700 -250 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 290 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 660 -170 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 100 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 340 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 40 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 120 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 330 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -280 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 320 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -580 0 0 {name=l_vdd lab=VDD}
C {devices/ipin.sym} -100 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -100 -590 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -100 -107 0 0 {name=p_vcm lab=vcm}
C {devices/iopin.sym} -100 -240 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -100 -180 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -100 -70 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -100 -20 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 860 -370 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 860 -330 0 0 {name=p_outn lab=outn}
