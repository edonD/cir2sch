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
C {devices/capa.sym} 480 -310 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 380 -220 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 380 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 600 -310 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 540 -220 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 540 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 740 -310 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 860 -310 0 0 {name=Rinn
value=0.1}
N 200 -220 360 -220 {lab=reset}
N 360 -220 520 -220 {lab=reset}
N 200 -220 200 -400 {lab=reset}
N 480 -280 600 -280 {lab=vcm}
N 600 -280 600 -190 {lab=vcm}
N 600 -190 560 -190 {lab=vcm}
N 600 -280 600 -370 {lab=vcm}
N 600 -370 560 -370 {lab=vcm}
N 560 -190 400 -190 {lab=vcm}
N 560 -370 400 -370 {lab=vcm}
N 600 -340 600 -250 {lab=outn}
N 600 -250 560 -250 {lab=outn}
N 600 -340 600 -430 {lab=outn}
N 600 -430 560 -430 {lab=outn}
N 600 -340 600 -280 {lab=outn}
N 600 -280 860 -280 {lab=outn}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 400 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 400 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 740 -340 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 860 -340 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 240 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 360 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 520 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 480 -340 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 480 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 400 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 480 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 400 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 480 -280 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 740 -280 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} 100 -310 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -270 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} 100 -225 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} 100 -440 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} 100 -190 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 1020 -310 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1020 -270 0 0 {name=p_outn lab=outn}
