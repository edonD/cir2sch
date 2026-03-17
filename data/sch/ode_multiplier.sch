v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} 60 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} 60 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} 60 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} 60 -665 0 0 0.35 0.35 {}
C {devices/res.sym} 640 -310 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 640 -230 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 920 -310 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 920 -230 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 190 -180 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 190 -100 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 470 -180 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 470 -100 0 0 {name=Ray4
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
C {devices/res.sym} 360 0 0 0 {name=Rdeg1
value=0.6k}
C {devices/res.sym} 360 80 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} 170 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 390 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 560 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 780 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 580 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 700 -550 0 0 {name=RL2
value=14k}
N 640 -280 640 -260 {lab=xp_int}
N 640 -280 540 -280 {lab=xp_int}
N 540 -280 150 -280 {lab=xp_int}
N 640 -200 920 -200 {lab=vcm}
N 640 -200 640 -70 {lab=vcm}
N 640 -70 470 -70 {lab=vcm}
N 470 -70 190 -70 {lab=vcm}
N 920 -280 920 -260 {lab=xn_int}
N 920 -280 800 -280 {lab=xn_int}
N 800 -280 410 -280 {lab=xn_int}
N 190 -150 190 -130 {lab=yp_int}
N 190 -150 90 -150 {lab=yp_int}
N 470 -150 470 -130 {lab=yn_int}
N 470 -150 350 -150 {lab=yn_int}
N 240 0 240 30 {lab=tail_node}
N 240 30 360 30 {lab=tail_node}
N 360 30 360 110 {lab=tail_node}
N 130 -180 130 -250 {lab=mid1}
N 130 -250 190 -250 {lab=mid1}
N 190 -250 370 -250 {lab=mid1}
N 130 -120 130 -30 {lab=src_b1}
N 130 -30 360 -30 {lab=src_b1}
N 310 -180 310 -250 {lab=mid2}
N 310 -250 580 -250 {lab=mid2}
N 580 -250 760 -250 {lab=mid2}
N 310 -120 360 -120 {lab=src_b2}
N 360 -120 360 50 {lab=src_b2}
N 760 -310 760 -520 {lab=outn}
N 760 -520 700 -520 {lab=outn}
N 370 -310 580 -310 {lab=outp}
N 580 -310 580 -520 {lab=outp}
C {devices/lab_pin.sym} 640 -340 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 920 -340 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 190 -210 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 470 -210 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 190 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/vdd.sym} 580 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 -580 0 0 {name=l_vdd lab=VDD}
C {devices/ipin.sym} -10 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -10 -590 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -10 -165 0 0 {name=p_vcm lab=vcm}
C {devices/iopin.sym} -10 -310 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -10 -270 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -10 -100 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -10 -60 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1080 -370 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1080 -330 0 0 {name=p_outn lab=outn}
