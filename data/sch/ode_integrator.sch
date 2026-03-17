v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -350 -545 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -350 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 230 -220 0 0 {name=XMinv_n
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 260 -400 0 0 {name=XMinv_p
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 100 -280 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 130 -150 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 0 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 380 -280 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 410 -150 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 130 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} -150 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -300 -280 0 0 {name=Rinn
value=0.1}
N 100 -250 100 -370 {lab=vcm}
N 100 -370 150 -370 {lab=vcm}
N 150 -370 20 -370 {lab=vcm}
N 100 -250 100 -120 {lab=vcm}
N 100 -120 150 -120 {lab=vcm}
N 100 -250 380 -250 {lab=vcm}
N 380 -250 430 -250 {lab=vcm}
N 430 -250 430 -120 {lab=vcm}
N 380 -310 380 -180 {lab=outn}
N 380 -180 430 -180 {lab=outn}
C {devices/gnd.sym} 250 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 250 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 150 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 430 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 20 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 150 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 100 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 380 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 150 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -300 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -150 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -300 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 250 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 250 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 280 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 110 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 110 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} -20 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 210 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 210 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 110 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 210 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 390 -150 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 100 -310 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 100 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 150 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 100 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 20 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 100 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -150 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} -420 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -420 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 570 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 570 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -420 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -420 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -420 -200 0 0 {name=p_vcm lab=vcm}
