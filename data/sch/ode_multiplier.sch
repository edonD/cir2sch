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
C {devices/res.sym} 360 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 860 -280 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 500 -280 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 1100 -280 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 220 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 240 -220 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 480 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 740 -220 0 0 {name=Ray4
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
C {devices/nmos4.sym} 0 -280 0 0 {name=Xtop1
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 120 -280 0 1 {name=Xtop2
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 620 -280 0 0 {name=Xtop3
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 980 -280 0 1 {name=Xtop4
w=5u
l=0.18u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 430 -550 0 0 {name=RL1
value=14k}
C {devices/res.sym} 210 -550 0 0 {name=RL2
value=14k}
N 360 -250 360 -280 {lab=xp_int}
N 360 -280 600 -280 {lab=xp_int}
N 600 -280 600 -310 {lab=xp_int}
N 600 -310 860 -310 {lab=xp_int}
N 860 -250 860 -190 {lab=vcm}
N 860 -190 740 -190 {lab=vcm}
N 860 -250 1100 -250 {lab=vcm}
N 1100 -310 1100 -280 {lab=xn_int}
N 1100 -280 1000 -280 {lab=xn_int}
N 220 -120 220 -250 {lab=yp_int}
N 220 -250 240 -250 {lab=yp_int}
N 220 -120 220 -150 {lab=yp_int}
N 220 -150 80 -150 {lab=yp_int}
N 480 -120 480 -150 {lab=yn_int}
N 480 -150 380 -150 {lab=yn_int}
N 480 -120 480 -250 {lab=yn_int}
N 480 -250 740 -250 {lab=yn_int}
N 240 0 240 -30 {lab=tail_node}
N 240 -30 280 -30 {lab=tail_node}
N 280 -30 420 -30 {lab=tail_node}
N 120 -180 120 -250 {lab=mid1}
N 120 -250 100 -250 {lab=mid1}
N 100 -250 20 -250 {lab=mid1}
N 120 -120 120 -90 {lab=src_b1}
N 120 -90 280 -90 {lab=src_b1}
N 340 -120 340 -90 {lab=src_b2}
N 340 -90 420 -90 {lab=src_b2}
C {devices/lab_pin.sym} 360 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 360 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} -20 -280 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 860 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 240 -190 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 500 -310 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 500 -250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 1100 -310 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 140 -280 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 220 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 480 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 120 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 340 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 20 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 100 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 960 -280 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 340 -180 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 640 -250 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 960 -250 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 20 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 960 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 210 -520 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 100 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 640 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 430 -520 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/vdd.sym} 430 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 210 -580 0 0 {name=l_vdd lab=VDD}
C {devices/iopin.sym} -120 -590 0 0 {name=p_xp lab=xp}
C {devices/iopin.sym} -120 -550 0 0 {name=p_xn lab=xn}
C {devices/iopin.sym} -120 -510 0 0 {name=p_yp lab=yp}
C {devices/iopin.sym} -120 -470 0 0 {name=p_yn lab=yn}
C {devices/opin.sym} 1260 -430 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1260 -390 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -120 -350 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -120 -310 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -120 -270 0 0 {name=p_vcm lab=vcm}
