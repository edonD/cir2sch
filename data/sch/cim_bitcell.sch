v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} -10 -595 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} -10 -565 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} -10 -540 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} -10 -515 0 0 0.35 0.35 {}
C {devices/vsource.sym} 40 270 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 170 270 0 0 {name=Vss
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
C {devices/nmos4.sym} 40 -220 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 620 -220 0 0 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 270 20 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 270 120 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 300 270 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 430 270 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 40 400 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 170 400 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 300 400 0 0 {name=Vbl
value={Vsupply}}
N 220 -430 220 -250 {lab=q}
N 220 -250 220 -190 {lab=q}
N 220 -190 60 -190 {lab=q}
N 220 -430 220 -400 {lab=q}
N 220 -400 440 -400 {lab=q}
N 440 -400 440 -220 {lab=q}
N 220 -250 220 20 {lab=q}
N 220 20 250 20 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 480 -430 480 -250 {lab=qb}
N 480 -250 480 -190 {lab=qb}
N 480 -190 640 -190 {lab=qb}
N 290 -10 290 370 {lab=bl}
N 290 370 300 370 {lab=bl}
N 290 50 290 90 {lab=mid_rd}
N 250 120 250 370 {lab=wl}
N 250 370 170 370 {lab=wl}
C {devices/vdd.sym} 40 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 480 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 40 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 170 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 40 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 170 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 170 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 60 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 290 20 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 290 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 290 120 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 480 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 60 -250 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 300 240 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 20 -220 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 600 -220 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 40 370 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 640 -250 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 430 240 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
