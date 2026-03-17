v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -410 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -410 -470 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 170 -220 0 0 {name=XMinv_n
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMinv_p
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 40 -280 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 70 -150 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} -60 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 320 -280 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 350 -150 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 70 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} -210 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -360 -280 0 0 {name=Rinn
value=0.1}
N 40 -250 40 -370 {lab=vcm}
N 40 -370 90 -370 {lab=vcm}
N 90 -370 -40 -370 {lab=vcm}
N 40 -250 40 -120 {lab=vcm}
N 40 -120 90 -120 {lab=vcm}
N 40 -250 320 -250 {lab=vcm}
N 320 -250 370 -250 {lab=vcm}
N 370 -250 370 -120 {lab=vcm}
N 320 -310 320 -180 {lab=outn}
N 320 -180 370 -180 {lab=outn}
C {devices/gnd.sym} 190 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 90 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} -40 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 90 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 40 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 320 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 90 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -360 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -210 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -360 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 190 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 190 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 220 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 50 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 50 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} -80 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 150 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 50 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 180 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 330 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 40 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 40 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 90 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 40 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -40 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 40 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -210 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} -480 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -480 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 510 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 510 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -480 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -480 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -480 -200 0 0 {name=p_vcm lab=vcm}
