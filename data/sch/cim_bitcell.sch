v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} 0 -595 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} 0 -565 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} 0 -540 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} 0 -515 0 0 0.35 0.35 {}
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
C {devices/nmos4.sym} 50 -220 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 550 -220 0 1 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 680 -150 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 680 -60 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
N 220 -430 220 -400 {lab=q}
N 220 -400 360 -400 {lab=q}
N 220 -430 220 -250 {lab=q}
N 220 -250 220 -220 {lab=q}
N 220 -220 360 -220 {lab=q}
N 220 -250 220 -190 {lab=q}
N 220 -190 70 -190 {lab=q}
N 180 -400 180 -220 {lab=qb}
N 180 -400 180 -430 {lab=qb}
N 180 -430 400 -430 {lab=qb}
N 400 -430 400 -250 {lab=qb}
N 400 -250 400 -190 {lab=qb}
N 400 -190 530 -190 {lab=qb}
N 700 -120 700 -90 {lab=mid_rd}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -370 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 220 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 70 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 530 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 -30 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 660 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 70 -250 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 530 -250 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 700 -180 0 0 {name=l_bl sig_type=std_logic lab=bl}
C {devices/lab_pin.sym} 660 -60 0 0 {name=l_wl sig_type=std_logic lab=wl}
C {devices/lab_pin.sym} 570 -220 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 30 -220 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
