v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} 120 -500 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} 120 -470 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} 120 -445 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} 120 -420 0 0 0.35 0.35 {}
C {devices/vsource.sym} 170 100 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 300 100 0 0 {name=Vss
value=0}
C {devices/pmos4.sym} 170 -400 0 0 {name=XMPL
w={Wp}u
l={Lp}u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 170 -150 0 0 {name=XMNL
w={Wn}u
l={Ln}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 430 -400 0 1 {name=XMPR
w={Wp}u
l={Lp}u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 430 -150 0 1 {name=XMNR
w={Wn}u
l={Ln}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 300 -150 0 0 {name=XMAXL
w={Wax}u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 560 -150 0 0 {name=XMAXR
w={Wax}u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 560 -50 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 820 -150 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 430 100 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 560 100 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 170 230 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 300 230 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 430 230 0 0 {name=Vbl
value={Vsupply}}
N 320 -180 320 70 {lab=blw}
N 320 70 430 70 {lab=blw}
N 580 -180 580 70 {lab=blbw}
N 580 70 560 70 {lab=blbw}
N 580 -80 580 200 {lab=bl}
N 580 200 430 200 {lab=bl}
N 580 -20 580 -180 {lab=mid_rd}
N 580 -180 840 -180 {lab=mid_rd}
C {devices/vdd.sym} 170 70 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 170 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 170 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 70 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -50 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 190 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 190 -180 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 450 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 320 -120 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 540 -50 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 410 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 410 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 580 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 280 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 540 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 170 200 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 800 -150 0 0 {name=l_wl sig_type=std_logic lab=wl}
C {devices/lab_pin.sym} 300 200 0 0 {name=l_wl sig_type=std_logic lab=wl}
