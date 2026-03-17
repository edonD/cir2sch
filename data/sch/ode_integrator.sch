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
C {devices/capa.sym} 600 -310 0 0 {name=XCp
W=50u
L=50u}
C {devices/nmos4.sym} 500 -220 0 0 {name=XSWp_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 500 -400 0 0 {name=XSWp_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 860 -310 0 0 {name=XCn
W=50u
L=50u}
C {devices/nmos4.sym} 780 -220 0 0 {name=XSWn_n
w=55u
l=0.15u
model=sky130_fd_pr__nfet_01v8_lvt
spiceprefix=X}
C {devices/pmos4.sym} 780 -400 0 0 {name=XSWn_p
w=99u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 720 -310 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 980 -310 0 0 {name=Rinn
value=0.1}
N 600 -340 600 -250 {lab=outp}
N 600 -250 520 -250 {lab=outp}
N 600 -340 600 -430 {lab=outp}
N 600 -430 520 -430 {lab=outp}
N 600 -340 600 -280 {lab=outp}
N 600 -280 720 -280 {lab=outp}
N 600 -280 600 -190 {lab=vcm}
N 600 -190 520 -190 {lab=vcm}
N 600 -280 600 -370 {lab=vcm}
N 600 -370 520 -370 {lab=vcm}
N 600 -280 860 -280 {lab=vcm}
N 860 -280 860 -190 {lab=vcm}
N 860 -190 800 -190 {lab=vcm}
N 860 -280 860 -370 {lab=vcm}
N 860 -370 800 -370 {lab=vcm}
N 860 -340 860 -250 {lab=outn}
N 860 -250 800 -250 {lab=outn}
N 860 -340 860 -430 {lab=outn}
N 860 -430 800 -430 {lab=outn}
N 860 -340 860 -280 {lab=outn}
N 860 -280 980 -280 {lab=outn}
C {devices/lab_pin.sym} 240 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 200 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 800 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 800 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 600 -280 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 720 -340 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 980 -340 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 240 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 480 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 760 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 200 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 480 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 760 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/ipin.sym} 100 -310 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -270 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} 100 -225 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} 100 -440 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} 100 -190 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 1140 -310 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1140 -270 0 0 {name=p_outn lab=outn}
