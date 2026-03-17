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
C {devices/vsource.sym} 200 90 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 330 90 0 0 {name=Vss
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
C {devices/nmos4.sym} 200 -280 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 380 -280 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 710 -150 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 710 -60 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 460 90 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 590 90 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 200 220 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 330 220 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 460 220 0 0 {name=Vbl
value={Vsupply}}
N 220 -430 220 -400 {lab=q}
N 220 -400 360 -400 {lab=q}
N 220 -430 220 -250 {lab=q}
N 220 -250 220 -220 {lab=q}
N 220 -220 360 -220 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 180 -220 180 -250 {lab=qb}
N 180 -250 360 -250 {lab=qb}
N 360 -250 400 -250 {lab=qb}
N 400 -250 400 -430 {lab=qb}
N 360 -310 360 60 {lab=blbw}
N 360 60 590 60 {lab=blbw}
N 730 -180 730 190 {lab=bl}
N 730 190 460 190 {lab=bl}
N 730 -120 730 -90 {lab=mid_rd}
N 690 -60 690 190 {lab=wl}
N 690 190 330 190 {lab=wl}
C {devices/vdd.sym} 200 60 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 200 120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -30 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -60 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 690 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 460 60 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 220 60 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 220 -310 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 180 190 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 200 190 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 180 -280 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 400 -280 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
