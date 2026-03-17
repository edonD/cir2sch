v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} 20 -500 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} 20 -470 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} 20 -445 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} 20 -420 0 0 0.35 0.35 {}
C {devices/vsource.sym} 70 100 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 200 100 0 0 {name=Vss
value=0}
C {devices/pmos4.sym} 70 -400 0 0 {name=XMPL
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 70 -150 0 0 {name=XMNL
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XMPR
w={Wp}u
l={Lp}u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XMNR
w={Wn}u
l={Ln}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 200 -150 0 0 {name=XMAXL
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 460 -150 0 0 {name=XMAXR
w={Wax}u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 460 -50 0 0 {name=XMRD1
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 720 -150 0 0 {name=XMRD2
w={Wrd}u
l={Lrd}u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 330 100 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 460 100 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 70 230 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 200 230 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 330 230 0 0 {name=Vbl
value={Vsupply}}
N 90 -430 90 -180 {lab=q}
N 90 -180 90 -120 {lab=q}
N 90 -120 220 -120 {lab=q}
N 220 -120 220 -150 {lab=q}
N 220 -150 350 -150 {lab=q}
N 350 -150 350 -50 {lab=q}
N 350 -50 440 -50 {lab=q}
N 350 -150 350 -400 {lab=q}
N 220 -180 220 70 {lab=blw}
N 220 70 330 70 {lab=blw}
N 480 -180 480 70 {lab=blbw}
N 480 70 460 70 {lab=blbw}
N 480 -80 480 200 {lab=bl}
N 480 200 330 200 {lab=bl}
N 480 -20 480 -180 {lab=mid_rd}
N 480 -180 740 -180 {lab=mid_rd}
C {devices/vdd.sym} 70 70 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 70 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 70 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 70 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -50 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 90 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 50 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 180 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 70 200 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
C {devices/lab_pin.sym} 700 -150 0 0 {name=l_wl sig_type=std_logic lab=wl}
C {devices/lab_pin.sym} 200 200 0 0 {name=l_wl sig_type=std_logic lab=wl}
C {devices/lab_pin.sym} 50 -150 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 50 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 310 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 310 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 480 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 480 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 440 -150 0 0 {name=l_wwl sig_type=std_logic lab=wwl}
