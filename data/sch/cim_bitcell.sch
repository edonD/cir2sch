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
C {devices/pmos4.sym} 380 -400 0 0 {name=XMPR
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 380 -220 0 0 {name=XMNR
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 490 -150 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 710 -150 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 20 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 120 0 0 {name=XMRD2
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
N 220 -430 220 -400 {lab=q}
N 220 -400 360 -400 {lab=q}
N 220 -430 220 -250 {lab=q}
N 220 -250 220 -220 {lab=q}
N 220 -220 360 -220 {lab=q}
N 360 -220 360 -120 {lab=q}
N 360 -120 510 -120 {lab=q}
N 360 -220 360 20 {lab=q}
N 360 20 310 20 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 180 -400 180 -430 {lab=qb}
N 180 -430 400 -430 {lab=qb}
N 400 -430 400 -250 {lab=qb}
N 510 -180 510 240 {lab=blw}
N 510 240 460 240 {lab=blw}
N 690 -180 690 240 {lab=blbw}
N 690 240 590 240 {lab=blbw}
N 350 50 350 90 {lab=mid_rd}
N 310 120 310 370 {lab=wl}
N 310 370 330 370 {lab=wl}
C {devices/vdd.sym} 200 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -400 0 0 {name=l_vdd lab=VDD}
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
C {devices/gnd.sym} 400 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 350 20 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 350 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 350 120 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 690 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 470 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 200 370 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 730 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 350 -10 0 0 {name=l_bl sig_type=std_logic lab=bl}
C {devices/lab_pin.sym} 350 370 0 0 {name=l_bl sig_type=std_logic lab=bl}
C {devices/lab_pin.sym} 460 370 0 0 {name=l_bl sig_type=std_logic lab=bl}
