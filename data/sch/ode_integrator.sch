v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} 170 -545 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} 170 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 220 -220 0 0 {name=XMinv_n
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 220 -400 0 0 {name=XMinv_p
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 520 -310 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 420 -220 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 420 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 660 -310 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 620 -220 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 620 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 780 -310 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 920 -310 0 0 {name=Rinn
value=0.1}
N 240 -250 240 -430 {lab=reset_b}
N 240 -430 240 -400 {lab=reset_b}
N 240 -400 400 -400 {lab=reset_b}
N 400 -400 600 -400 {lab=reset_b}
N 200 -220 200 -400 {lab=reset}
N 200 -220 400 -220 {lab=reset}
N 400 -220 600 -220 {lab=reset}
N 520 -340 520 -250 {lab=outp}
N 520 -250 440 -250 {lab=outp}
N 520 -340 520 -430 {lab=outp}
N 520 -430 440 -430 {lab=outp}
N 520 -340 520 -280 {lab=outp}
N 520 -280 780 -280 {lab=outp}
N 520 -280 660 -280 {lab=vcm}
N 660 -280 660 -190 {lab=vcm}
N 660 -190 640 -190 {lab=vcm}
N 660 -280 660 -370 {lab=vcm}
N 660 -370 640 -370 {lab=vcm}
N 520 -280 520 -190 {lab=vcm}
N 520 -190 440 -190 {lab=vcm}
N 520 -280 520 -370 {lab=vcm}
N 520 -370 440 -370 {lab=vcm}
N 660 -340 660 -250 {lab=outn}
N 660 -250 640 -250 {lab=outn}
N 660 -340 660 -430 {lab=outn}
N 660 -430 640 -430 {lab=outn}
N 640 -250 920 -250 {lab=outn}
N 920 -250 920 -280 {lab=outn}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 440 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 640 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 780 -340 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 920 -340 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/ipin.sym} 100 -310 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -270 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} 100 -225 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} 100 -440 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} 100 -190 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 1080 -310 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1080 -270 0 0 {name=p_outn lab=outn}
