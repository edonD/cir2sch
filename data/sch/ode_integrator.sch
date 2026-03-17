v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -310 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -310 -470 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 270 -220 0 0 {name=XMinv_n
w=4u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 300 -400 0 0 {name=XMinv_p
w=8u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 140 -280 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 170 -150 0 0 {name=XSWp_n
w=55u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 40 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 420 -280 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 450 -150 0 0 {name=XSWn_n
w=55u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 170 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} -110 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -260 -280 0 0 {name=Rinn
value=0.1}
N 250 -220 250 -150 {lab=reset}
N 250 -150 150 -150 {lab=reset}
N 250 -220 250 -400 {lab=reset}
N 250 -400 280 -400 {lab=reset}
N 250 -220 250 -150 {lab=reset}
N 250 -150 430 -150 {lab=reset}
N 140 -310 140 -180 {lab=outp}
N 140 -180 190 -180 {lab=outp}
N 140 -310 140 -430 {lab=outp}
N 140 -430 60 -430 {lab=outp}
N 140 -310 140 -250 {lab=outp}
N 140 -250 -110 -250 {lab=outp}
C {devices/gnd.sym} 290 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 290 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 470 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 320 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 140 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 190 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 60 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 420 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 470 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 190 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 420 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 470 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 190 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -260 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -110 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -260 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 290 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 290 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 320 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 150 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 150 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 20 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/ipin.sym} -380 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -380 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 610 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 610 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -380 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} -380 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -380 -200 0 0 {name=p_vcm lab=vcm}
