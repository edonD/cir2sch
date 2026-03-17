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
C {devices/nmos4.sym} 490 -150 0 0 {name=XMNL
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 380 -400 0 0 {name=XMPR
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 710 -150 0 1 {name=XMNR
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 550 -280 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 770 -280 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 470 20 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 470 120 0 0 {name=XMRD2
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
N 510 -180 510 -250 {lab=q}
N 510 -250 570 -250 {lab=q}
N 510 -180 510 -150 {lab=q}
N 510 -150 730 -150 {lab=q}
N 510 -180 510 20 {lab=q}
N 510 20 450 20 {lab=q}
N 180 -400 180 -430 {lab=qb}
N 180 -430 400 -430 {lab=qb}
N 470 -150 470 -180 {lab=qb}
N 470 -180 690 -180 {lab=qb}
N 690 -180 690 -250 {lab=qb}
N 690 -250 750 -250 {lab=qb}
N 570 -310 460 -310 {lab=blw}
N 460 -310 460 240 {lab=blw}
N 530 -280 790 -280 {lab=wwl}
N 490 -10 490 370 {lab=bl}
N 490 370 460 370 {lab=bl}
N 490 50 490 90 {lab=mid_rd}
N 450 120 450 370 {lab=wl}
N 450 370 330 370 {lab=wl}
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
C {devices/gnd.sym} 510 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 690 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 570 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 750 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 490 20 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 490 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 490 120 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 200 370 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 750 -310 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 590 240 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
