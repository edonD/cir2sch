v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} 150 -595 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} 150 -565 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} 150 -540 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} 150 -515 0 0 0.35 0.35 {}
C {devices/vsource.sym} 200 270 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 330 270 0 0 {name=Vss
value=0}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMPL
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -220 0 0 {name=XMNL
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 460 -400 0 0 {name=XMPR
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 460 -220 0 0 {name=XMNR
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 590 -150 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 850 -150 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 380 20 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 380 120 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 460 270 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 590 270 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 200 400 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 330 400 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 460 400 0 0 {name=Vbl
value={Vsupply}}
N 220 -430 220 -250 {lab=q}
N 220 -430 220 -400 {lab=q}
N 220 -400 440 -400 {lab=q}
N 440 -400 440 -220 {lab=q}
N 440 -220 440 -120 {lab=q}
N 440 -120 610 -120 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 480 -430 480 -250 {lab=qb}
N 610 -180 610 240 {lab=blw}
N 610 240 460 240 {lab=blw}
N 400 -10 400 370 {lab=bl}
N 400 370 460 370 {lab=bl}
N 400 50 400 90 {lab=mid_rd}
N 360 120 360 370 {lab=wl}
N 360 370 330 370 {lab=wl}
C {devices/vdd.sym} 200 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 200 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 610 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 830 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 20 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 120 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 360 20 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 480 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 830 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 570 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 200 370 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 830 -180 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 590 240 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 870 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
