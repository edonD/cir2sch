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
C {devices/pmos4.sym} 420 -400 0 0 {name=XMPR
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 420 -220 0 0 {name=XMNR
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 530 -150 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 750 -150 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 350 20 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 350 120 0 0 {name=XMRD2
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
N 220 -400 400 -400 {lab=q}
N 400 -400 400 -220 {lab=q}
N 400 -220 400 -120 {lab=q}
N 400 -120 550 -120 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 180 -400 180 -430 {lab=qb}
N 180 -430 440 -430 {lab=qb}
N 440 -430 440 -250 {lab=qb}
N 550 -180 550 240 {lab=blw}
N 550 240 460 240 {lab=blw}
N 730 -180 730 240 {lab=blbw}
N 730 240 590 240 {lab=blbw}
N 370 -10 370 370 {lab=bl}
N 370 370 460 370 {lab=bl}
N 370 50 370 90 {lab=mid_rd}
N 330 120 330 370 {lab=wl}
C {devices/vdd.sym} 200 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -400 0 0 {name=l_vdd lab=VDD}
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
C {devices/gnd.sym} 440 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 440 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 550 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 20 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 120 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 330 20 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 730 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 510 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 200 370 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 770 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
