v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} -250 -500 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} -250 -470 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} -250 -445 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} -250 -420 0 0 0.35 0.35 {}
C {devices/vsource.sym} -60 -400 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 240 -400 0 0 {name=Vss
value=0}
C {sky130_fd_pr/pfet_01v8.sym} 90 -400 0 0 {name=XMPL
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 120 -150 0 0 {name=XMNL
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 560 -400 0 1 {name=XMPR
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 610 -150 0 1 {name=XMNR
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 460 -150 0 0 {name=XMAXL
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 760 -150 0 0 {name=XMAXR
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 560 -50 0 0 {name=XMRD1
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 920 -150 0 0 {name=XMRD2
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {devices/vsource.sym} 400 -400 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} -200 -200 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} -40 -200 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 280 -200 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 50 0 0 0 {name=Vbl
value={Vsupply}}
N 460 -180 460 -430 {lab=blw}
N 460 -430 400 -430 {lab=blw}
N 440 -150 740 -150 {lab=wwl}
N 440 -150 440 -230 {lab=wwl}
N 440 -230 -40 -230 {lab=wwl}
N 560 -80 560 -30 {lab=bl}
N 560 -30 50 -30 {lab=bl}
N 560 -20 920 -20 {lab=mid_rd}
N 920 -20 920 -180 {lab=mid_rd}
N 900 -150 280 -150 {lab=wl}
N 280 -150 280 -230 {lab=wl}
C {devices/vdd.sym} -60 -430 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 110 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 540 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} -60 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 400 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} -200 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} -40 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 280 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 50 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -430 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 120 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 140 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 610 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 590 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 480 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -50 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 940 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 90 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 120 -180 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 580 -400 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 630 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 460 -120 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 540 -50 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 70 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 100 -150 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 560 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 610 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 760 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 760 -180 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
C {devices/lab_pin.sym} -200 -230 0 0 {name=l_blbw sig_type=std_logic lab=blbw}
