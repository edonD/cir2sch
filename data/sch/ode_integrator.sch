v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -220 -545 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -220 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 260 -220 0 0 {name=XMinv_n
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 260 -400 0 0 {name=XMinv_p
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 560 -280 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 390 -150 0 1 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 990 -400 0 1 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 700 -280 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 130 -150 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 730 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} -20 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -170 -280 0 0 {name=Rinn
value=0.1}
N 280 -250 280 -430 {lab=reset_b}
N 1010 -400 710 -400 {lab=reset_b}
N 240 -220 240 -400 {lab=reset}
N 240 -220 240 -150 {lab=reset}
N 240 -150 110 -150 {lab=reset}
N 240 -220 240 -150 {lab=reset}
N 240 -150 410 -150 {lab=reset}
N 560 -250 700 -250 {lab=vcm}
N 700 -250 700 -370 {lab=vcm}
N 700 -370 750 -370 {lab=vcm}
N 750 -370 970 -370 {lab=vcm}
N 370 -120 150 -120 {lab=vcm}
N 700 -310 700 -430 {lab=outn}
N 700 -430 750 -430 {lab=outn}
C {devices/lab_pin.sym} 280 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 1010 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/gnd.sym} 280 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 150 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 970 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 750 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 560 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 370 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 970 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -20 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 560 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 370 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 700 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -170 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -20 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -170 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/ipin.sym} -290 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -290 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 1150 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1150 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -290 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -290 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -290 -200 0 0 {name=p_vcm lab=vcm}
