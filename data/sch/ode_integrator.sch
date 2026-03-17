v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -130 -545 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -130 -515 0 0 0.35 0.35 {}
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
C {devices/capa.sym} 890 -310 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 720 -220 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 720 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 1030 -310 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 1220 -220 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 1220 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 70 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -80 -280 0 0 {name=Rinn
value=0.1}
N 240 -250 240 -430 {lab=reset_b}
N 200 -220 200 -400 {lab=reset}
N 890 -340 890 -250 {lab=outp}
N 890 -250 740 -250 {lab=outp}
N 740 -250 740 -430 {lab=outp}
N 890 -280 1030 -280 {lab=vcm}
N 890 -280 890 -190 {lab=vcm}
N 890 -190 740 -190 {lab=vcm}
N 740 -190 740 -370 {lab=vcm}
N 1030 -280 1030 -190 {lab=vcm}
N 1030 -190 1240 -190 {lab=vcm}
N 1240 -190 1240 -370 {lab=vcm}
N 1030 -340 1030 -250 {lab=outn}
N 1030 -250 1240 -250 {lab=outn}
N 1240 -250 1240 -430 {lab=outn}
C {devices/lab_pin.sym} 240 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 700 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 1200 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 200 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 700 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 1200 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1240 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 890 -340 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 70 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 890 -280 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1030 -340 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -80 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 70 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -80 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/ipin.sym} -200 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -200 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 1380 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1380 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -200 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -200 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -200 -200 0 0 {name=p_vcm lab=vcm}
