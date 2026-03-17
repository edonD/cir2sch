v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 CIM 8T SRAM Bitcell} -170 -500 0 0 0.5 0.5 {}
T {6T storage core + 2T decoupled read port for compute-in-memory} -170 -470 0 0 0.35 0.35 {}
T {- bl:  Bitline (read port drain — current flows BL -> RD1 -> mid -> RD2 -> VSS)} -170 -445 0 0 0.35 0.35 {}
T {- blb: Bitline bar (not used by read port, available for differential write)} -170 -420 0 0 0.35 0.35 {}
C {devices/vsource.sym} -20 -400 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 240 -400 0 0 {name=Vss
value=0}
C {sky130_fd_pr/pfet_01v8.sym} 110 -400 0 0 {name=XMPL
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 10 -150 0 0 {name=XMNL
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 520 -400 0 1 {name=XMPR
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 580 -150 0 1 {name=XMNR
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 440 -150 0 0 {name=XMAXL
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 720 -150 0 0 {name=XMAXR
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 560 -50 0 0 {name=XMRD1
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 860 -150 0 0 {name=XMRD2
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {devices/vsource.sym} 380 -400 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} -120 -200 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 140 -200 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 280 -200 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 50 0 0 0 {name=Vbl
value={Vsupply}}
N 460 -180 460 -430 {lab=blw}
N 460 -430 380 -430 {lab=blw}
N 420 -150 700 -150 {lab=wwl}
N 420 -150 420 -230 {lab=wwl}
N 420 -230 140 -230 {lab=wwl}
N 740 -180 740 -230 {lab=blbw}
N 740 -230 -120 -230 {lab=blbw}
N 580 -80 580 -30 {lab=bl}
N 580 -30 50 -30 {lab=bl}
N 580 -20 880 -20 {lab=mid_rd}
N 880 -20 880 -180 {lab=mid_rd}
N 840 -150 280 -150 {lab=wl}
N 280 -150 280 -230 {lab=wl}
C {devices/vdd.sym} -20 -430 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 130 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} -20 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} -120 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 140 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 280 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 50 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -430 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 30 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 30 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 460 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -50 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 880 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 880 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 130 -430 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 30 -180 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 540 -400 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 600 -150 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 460 -120 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 540 -50 0 0 {name=l_q sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 90 -400 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} -10 -150 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 500 -430 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 560 -180 0 0 {name=l_qb sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 740 -120 0 0 {name=l_qb sig_type=std_logic lab=qb}
