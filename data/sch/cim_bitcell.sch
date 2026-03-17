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
C {devices/vsource.sym} 170 200 0 0 {name=Vdd
value={Vsupply}}
C {devices/vsource.sym} 310 200 0 0 {name=Vss
value=0}
C {sky130_fd_pr/pfet_01v8.sym} 170 -400 0 0 {name=XMPL
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 170 -150 0 0 {name=XMNL
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 430 -400 0 1 {name=XMPR
W={Wp}u
L={Lp}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -150 0 1 {name=XMNR
W={Wn}u
L={Ln}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=XMAXL
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 560 -150 0 0 {name=XMAXR
W={Wax}u
L=0.15u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 560 -50 0 0 {name=XMRD1
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 820 -150 0 0 {name=XMRD2
W={Wrd}u
L={Lrd}u
nf=1
spiceprefix=X}
C {devices/vsource.sym} 450 200 0 0 {name=Vblw
value=PWL(0}
C {devices/vsource.sym} 590 200 0 0 {name=Vblbw
value=PWL(0}
C {devices/vsource.sym} 170 340 0 0 {name=Vwwl
value=PWL(0}
C {devices/vsource.sym} 310 340 0 0 {name=Vwl
value=PWL(0}
C {devices/vsource.sym} 450 340 0 0 {name=Vbl
value={Vsupply}}
N 280 -150 540 -150 {lab=wwl}
N 280 -150 280 310 {lab=wwl}
N 280 310 170 310 {lab=wwl}
N 580 -180 580 170 {lab=blbw}
N 580 170 590 170 {lab=blbw}
N 580 -80 580 310 {lab=bl}
N 580 310 450 310 {lab=bl}
N 580 -20 580 -180 {lab=mid_rd}
N 580 -180 840 -180 {lab=mid_rd}
N 800 -150 800 310 {lab=wl}
N 800 310 310 310 {lab=wl}
C {devices/vdd.sym} 170 170 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 410 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 170 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 310 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 450 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 170 370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 310 370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 450 370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 310 170 0 0 {name=l_vss lab=VSS}
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
C {devices/lab_pin.sym} 320 -180 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 320 170 0 0 {name=l_blw sig_type=std_logic lab=blw}
C {devices/lab_pin.sym} 450 170 0 0 {name=l_blw sig_type=std_logic lab=blw}
