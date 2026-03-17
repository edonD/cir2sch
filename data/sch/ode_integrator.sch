v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -90 -545 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -90 -515 0 0 0.35 0.35 {}
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
C {devices/capa.sym} 1060 -310 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 860 -220 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 860 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 1230 -310 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 1460 -220 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 1460 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 110 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -40 -280 0 0 {name=Rinn
value=0.1}
N 280 -250 280 -430 {lab=reset_b}
N 240 -220 240 -400 {lab=reset}
N 1060 -340 1060 -250 {lab=outp}
N 1060 -250 880 -250 {lab=outp}
N 880 -250 880 -430 {lab=outp}
N 1060 -280 1230 -280 {lab=vcm}
N 1060 -280 1060 -190 {lab=vcm}
N 1060 -190 880 -190 {lab=vcm}
N 880 -190 880 -370 {lab=vcm}
N 1480 -190 1480 -370 {lab=vcm}
N 1480 -250 1480 -430 {lab=outn}
C {devices/lab_pin.sym} 280 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 840 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 1440 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 840 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 1440 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/gnd.sym} 280 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 880 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1480 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 880 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1480 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 1060 -340 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 110 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1060 -280 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1480 -190 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 1230 -340 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 1480 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -40 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 110 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -40 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/ipin.sym} -160 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -160 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 1620 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1620 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -160 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -160 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -160 -200 0 0 {name=p_vcm lab=vcm}
