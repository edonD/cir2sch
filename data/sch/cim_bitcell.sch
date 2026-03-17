v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} -110 -500 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} -110 -470 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} -110 -445 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} -110 -420 0 0 0.35 0.35 {}
C {devices/vsource.sym} -60 -400 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 240 -400 0 0 {name=Vss
value=0}
C {sky130_fd_pr/pfet_01v8.sym} 90 -400 0 0 {name=XMPL
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 90 -150 0 0 {name=XMNL
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 560 -400 0 1 {name=XMPR
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 560 -150 0 1 {name=XMNR
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 900 -150 0 0 {name=XMAXL
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1160 -150 0 0 {name=XMAXR
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1420 -150 0 0 {name=XMRD1
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1680 -150 0 0 {name=XMRD2
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {devices/vsource.sym} 400 -400 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} -60 -200 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 240 -200 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 400 -200 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 50 0 0 0 {name=Vbl
value={Vsupply}}
N 900 -180 400 -180 {lab=blw}
N 400 -180 400 -430 {lab=blw}
N 880 -150 750 -150 {lab=wwl}
N 750 -150 750 -180 {lab=wwl}
N 1140 -150 750 -150 {lab=wwl}
N 750 -150 750 -180 {lab=wwl}
N 240 -230 750 -230 {lab=wwl}
N 750 -230 750 -180 {lab=wwl}
N 1420 -120 1680 -120 {lab=mid_rd}
N 1680 -120 1680 -180 {lab=mid_rd}
C {devices/vdd.sym} -60 -430 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 110 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 540 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} -60 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 400 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} -60 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 400 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 50 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -430 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 110 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 540 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1180 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1440 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1680 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 90 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 90 -180 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 580 -400 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 580 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 900 -120 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 1400 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 70 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 70 -150 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 560 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 560 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 1160 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 1160 -180 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} -60 -230 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} 1420 -180 0 0 {name=l_bl sig_type=std_logic lab=bl}
C {devices/lab_pin.sym} 50 -30 0 0 {name=l_bl sig_type=std_logic lab=bl}
C {devices/lab_pin.sym} 1660 -150 0 0 {name=l_wl sig_type=std_logic lab=wl}
C {devices/lab_pin.sym} 400 -230 0 0 {name=l_wl sig_type=std_logic lab=wl}
