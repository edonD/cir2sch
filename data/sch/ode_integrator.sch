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
C {devices/capa.sym} 800 -310 0 0 {name=XCp
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
C {devices/capa.sym} 1080 -310 0 0 {name=XCn
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
C {devices/res.sym} 950 -310 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 1290 -310 0 0 {name=Rinn
value=0.1}
N 240 -250 240 -430 {lab=reset_b}
N 200 -220 200 -400 {lab=reset}
N 800 -340 800 -250 {lab=outp}
N 800 -250 740 -250 {lab=outp}
N 800 -340 800 -430 {lab=outp}
N 800 -430 740 -430 {lab=outp}
N 800 -340 800 -280 {lab=outp}
N 800 -280 950 -280 {lab=outp}
N 800 -280 800 -190 {lab=vcm}
N 800 -190 740 -190 {lab=vcm}
N 800 -280 800 -370 {lab=vcm}
N 800 -370 740 -370 {lab=vcm}
N 800 -280 1080 -280 {lab=vcm}
N 1080 -280 1080 -190 {lab=vcm}
N 1080 -190 1240 -190 {lab=vcm}
N 1240 -190 1240 -370 {lab=vcm}
N 1080 -340 1080 -250 {lab=outn}
N 1080 -250 1240 -250 {lab=outn}
N 1240 -250 1240 -280 {lab=outn}
N 1240 -280 1290 -280 {lab=outn}
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
C {devices/lab_pin.sym} 800 -280 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 950 -340 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1290 -340 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/ipin.sym} 100 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 1450 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1450 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} 100 -280 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} 100 -240 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} 100 -200 0 0 {name=p_vcm lab=vcm}
