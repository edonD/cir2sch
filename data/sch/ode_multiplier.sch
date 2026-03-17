v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Four-Quadrant Analog Multiplier} 120 -500 0 0 0.5 0.5 {}
T {.subckt multiplier xp xn yp yn outp outn vbias_n vbias_p vcm vdd vss} 120 -470 0 0 0.35 0.35 {}
T {X input attenuators: ~5:1 (+-300mV to +-60mV)} 120 -445 0 0 0.35 0.35 {}
T {Y input attenuators: ~2.25:1 (+-300mV to +-133mV)} 120 -420 0 0 0.35 0.35 {}
C {devices/res.sym} 600 -400 0 0 {name=Rax1
value=4k}
C {devices/res.sym} 580 -300 0 0 {name=Rax2
value=1k}
C {devices/res.sym} 1080 -300 0 0 {name=Rax3
value=4k}
C {devices/res.sym} 1240 -250 0 0 {name=Rax4
value=1k}
C {devices/res.sym} 1960 -150 0 0 {name=Ray1
value=1.25k}
C {devices/res.sym} 1480 -210 0 0 {name=Ray2
value=1k}
C {devices/res.sym} 2280 -150 0 0 {name=Ray3
value=1.25k}
C {devices/res.sym} 1800 -110 0 0 {name=Ray4
value=1k}
C {sky130_fd_pr/nfet_01v8.sym} 1330 -150 0 0 {name=Xtail
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1640 -150 0 0 {name=Xbot1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 2120 -150 0 0 {name=Xbot2
spiceprefix=X}
C {devices/res.sym} 1960 -50 0 0 {name=Rdeg1
value={rdegen_val}}
C {devices/res.sym} 2120 -20 0 0 {name=Rdeg2
value={rdegen_val}}
C {sky130_fd_pr/nfet_01v8.sym} 170 -400 0 0 {name=Xtop1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -400 0 1 {name=Xtop2
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 770 -400 0 0 {name=Xtop3
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1030 -400 0 1 {name=Xtop4
spiceprefix=X}
C {devices/res.sym} 740 -300 0 0 {name=RL1
value={rload_val}}
C {devices/res.sym} 900 -300 0 0 {name=RL2
value={rload_val}}
N 600 -370 520 -370 {lab=xp_int}
N 520 -370 520 -380 {lab=xp_int}
N 580 -330 520 -330 {lab=xp_int}
N 520 -330 520 -380 {lab=xp_int}
N 150 -400 520 -400 {lab=xp_int}
N 520 -400 520 -380 {lab=xp_int}
N 750 -400 520 -400 {lab=xp_int}
N 520 -400 520 -380 {lab=xp_int}
N 1080 -270 960 -270 {lab=xn_int}
N 960 -270 960 -340 {lab=xn_int}
N 1240 -280 960 -280 {lab=xn_int}
N 960 -280 960 -340 {lab=xn_int}
N 450 -400 960 -400 {lab=xn_int}
N 960 -400 960 -340 {lab=xn_int}
N 1050 -400 960 -400 {lab=xn_int}
N 960 -400 960 -340 {lab=xn_int}
N 1960 -120 1690 -120 {lab=yp_int}
N 1690 -120 1690 -170 {lab=yp_int}
N 1480 -240 1690 -240 {lab=yp_int}
N 1690 -240 1690 -170 {lab=yp_int}
N 1620 -150 1690 -150 {lab=yp_int}
N 1690 -150 1690 -170 {lab=yp_int}
N 2280 -120 2060 -120 {lab=yn_int}
N 2060 -120 2060 -140 {lab=yn_int}
N 1800 -140 2060 -140 {lab=yn_int}
N 2100 -150 2060 -150 {lab=yn_int}
N 2060 -150 2060 -140 {lab=yn_int}
N 1330 -180 1800 -180 {lab=tail_node}
N 1800 -180 1800 -60 {lab=tail_node}
N 1960 -20 1800 -20 {lab=tail_node}
N 1800 -20 1800 -60 {lab=tail_node}
N 2120 10 1800 10 {lab=tail_node}
N 1800 10 1800 -60 {lab=tail_node}
N 1640 -120 1960 -120 {lab=src_b1}
N 1960 -120 1960 -80 {lab=src_b1}
N 2120 -120 2120 -50 {lab=src_b2}
N 170 -430 700 -430 {lab=outn}
N 700 -430 700 -380 {lab=outn}
N 1030 -430 700 -430 {lab=outn}
N 700 -430 700 -380 {lab=outn}
N 900 -270 700 -270 {lab=outn}
N 700 -270 700 -380 {lab=outn}
N 430 -430 650 -430 {lab=outp}
N 650 -430 650 -380 {lab=outp}
N 770 -430 650 -430 {lab=outp}
N 650 -430 650 -380 {lab=outp}
N 740 -270 650 -270 {lab=outp}
N 650 -270 650 -380 {lab=outp}
C {devices/lab_pin.sym} 600 -430 0 0 {name=l_xp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 580 -270 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1240 -220 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1480 -180 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1800 -80 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1080 -330 0 0 {name=l_xn sig_type=std_logic lab=xn}
C {devices/lab_pin.sym} 1960 -180 0 0 {name=l_yp sig_type=std_logic lab=yp}
C {devices/lab_pin.sym} 2280 -180 0 0 {name=l_yn sig_type=std_logic lab=yn}
C {devices/lab_pin.sym} 1310 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/gnd.sym} 1330 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1350 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1660 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2140 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 790 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1010 -400 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 1640 -180 0 0 {name=l_mid1 sig_type=std_logic lab=mid1}
C {devices/lab_pin.sym} 170 -370 0 0 {name=l_mid1 sig_type=std_logic lab=mid1}
C {devices/lab_pin.sym} 430 -370 0 0 {name=l_mid1 sig_type=std_logic lab=mid1}
C {devices/lab_pin.sym} 2120 -180 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 770 -370 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/lab_pin.sym} 1030 -370 0 0 {name=l_mid2 sig_type=std_logic lab=mid2}
C {devices/vdd.sym} 740 -330 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 -330 0 0 {name=l_vdd lab=VDD}
