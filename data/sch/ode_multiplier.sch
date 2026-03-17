v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} -30 -650 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} -30 -620 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} -30 -595 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} -30 -570 0 0 0.35 0.35 {}
C {devices/res.sym} 20 -280 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 20 -180 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 20 220 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 20 -80 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 20 320 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 20 20 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 20 420 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 20 120 0 0 {name=Ray4
value=1k}
C {sky130_fd_pr/nfet_01v8.sym} 1500 -150 0 0 {name=Xtail
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=Xbot1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 860 -150 0 0 {name=Xbot2
spiceprefix=X}
C {devices/res.sym} 1030 -150 0 0 {name=Rdeg1
value={rdegen_val}}
C {devices/res.sym} 1180 -150 0 0 {name=Rdeg2
value={rdegen_val}}
C {sky130_fd_pr/nfet_01v8.sym} 170 -400 0 0 {name=Xtop1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -400 0 1 {name=Xtop2
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 770 -400 0 0 {name=Xtop3
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1030 -400 0 1 {name=Xtop4
spiceprefix=X}
C {devices/res.sym} 530 -550 0 0 {name=RL1
value={rload_val}}
C {devices/res.sym} 270 -550 0 0 {name=RL2
value={rload_val}}
N 20 350 20 -10 {lab=yp_int}
N 20 -10 20 -150 {lab=yp_int}
N 20 -150 280 -150 {lab=yp_int}
N 1500 -180 1500 -120 {lab=tail_node}
N 1500 -120 1180 -120 {lab=tail_node}
N 1180 -120 1030 -120 {lab=tail_node}
N 300 -180 300 -370 {lab=mid1}
N 300 -370 170 -370 {lab=mid1}
N 170 -370 430 -370 {lab=mid1}
N 300 -120 300 -180 {lab=src_b1}
N 300 -180 1030 -180 {lab=src_b1}
N 860 -180 860 -370 {lab=mid2}
N 860 -370 770 -370 {lab=mid2}
N 770 -370 1030 -370 {lab=mid2}
N 860 -120 860 -180 {lab=src_b2}
N 860 -180 1180 -180 {lab=src_b2}
N 170 -430 170 -520 {lab=outn}
N 170 -520 270 -520 {lab=outn}
N 270 -520 270 -430 {lab=outn}
N 270 -430 1030 -430 {lab=outn}
N 430 -430 430 -520 {lab=outp}
N 430 -520 530 -520 {lab=outp}
N 530 -520 530 -430 {lab=outp}
N 530 -430 770 -430 {lab=outp}
C {devices/lab_pin.sym} 20 -310 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 20 -250 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 20 -210 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 750 -400 0 0 {name=l_xp_int sig_type=std_logic lab=xp_int}
C {devices/lab_pin.sym} 20 -150 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 20 -50 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 20 50 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 20 150 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 20 190 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 20 250 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 20 -110 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 1050 -400 0 0 {name=l_xn_int sig_type=std_logic lab=xn_int}
C {devices/lab_pin.sym} 20 290 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 20 390 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 20 450 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 20 90 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 840 -150 0 0 {name=l_yn_int sig_type=std_logic lab=yn_int}
C {devices/lab_pin.sym} 1480 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 1500 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 880 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 790 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1010 -400 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 530 -580 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 270 -580 0 0 {name=l_vdd lab=VDD}
