v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -130 -745 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -130 -715 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -130 -690 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -130 -665 0 0 0.35 0.35 {}
C {devices/res.sym} 340 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 760 -280 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 620 -280 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 1040 -280 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 220 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 200 -220 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 500 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 900 -220 0 0 {name=Ray4
value=1k}
C {devices/nmos4.sym} 220 30 0 0 {name=Xtail
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 60 -150 0 0 {name=Xbot1
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
C {devices/res.sym} 430 -60 0 0 {name=Rdeg2
value=0.6k}
C {devices/nmos4.sym} -80 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 60 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 480 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 1200 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 430 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 210 -550 0 0 {name=RL2
value=14k}
N 340 -250 340 -280 {lab=xp_int}
N 340 -280 460 -280 {lab=xp_int}
N 760 -250 760 -190 {lab=vcm}
N 760 -190 900 -190 {lab=vcm}
N 900 -190 900 -250 {lab=vcm}
N 900 -250 1040 -250 {lab=vcm}
N 1040 -310 1040 -280 {lab=xn_int}
N 1040 -280 1220 -280 {lab=xn_int}
N 220 -120 220 -250 {lab=yp_int}
N 220 -250 200 -250 {lab=yp_int}
N 220 -120 220 -150 {lab=yp_int}
N 220 -150 40 -150 {lab=yp_int}
N 500 -120 500 -150 {lab=yn_int}
N 500 -150 380 -150 {lab=yn_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 280 -30 {lab=tail_node}
N 280 -30 430 -30 {lab=tail_node}
N 80 -180 80 -250 {lab=mid1}
N 80 -250 40 -250 {lab=mid1}
N 40 -250 -60 -250 {lab=mid1}
N 80 -120 80 -90 {lab=src_b1}
N 80 -90 280 -90 {lab=src_b1}
N 340 -180 340 -250 {lab=mid2}
N 340 -250 500 -250 {lab=mid2}
N 340 -120 340 -90 {lab=src_b2}
N 340 -90 430 -90 {lab=src_b2}
N 500 -310 500 -520 {lab=outp}
N 500 -520 430 -520 {lab=outp}
C {devices/lab_pin.sym} 340 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 340 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 760 -310 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} -100 -280 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 760 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 200 -190 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 620 -310 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 620 -250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 1040 -310 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 80 -280 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 220 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 500 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 500 -120 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 900 -250 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 80 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 340 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -60 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 40 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1180 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 340 -180 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 1180 -250 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} -60 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 1180 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 210 -520 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 40 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 500 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/vdd.sym} 430 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 210 -580 0 0 {name=l_vdd lab=VDD}
C {devices/iopin.sym} -200 -590 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -200 -550 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -200 -510 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -200 -470 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1360 -430 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1360 -390 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -200 -350 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -200 -310 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -200 -270 0 0 {name=p_vcm lab=vcm}
