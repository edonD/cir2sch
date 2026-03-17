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
C {devices/capa.sym} 780 -310 0 0 {name=XCn
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
C {devices/res.sym} 660 -310 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 920 -310 0 0 {name=Rinn
value=0.1}
N 520 -280 520 -190 {lab=vcm}
N 520 -190 440 -190 {lab=vcm}
N 520 -280 520 -370 {lab=vcm}
N 520 -370 440 -370 {lab=vcm}
N 440 -190 640 -190 {lab=vcm}
N 640 -190 640 -370 {lab=vcm}
N 640 -190 640 -280 {lab=vcm}
N 640 -280 780 -280 {lab=vcm}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 440 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -220 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 440 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 640 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 660 -340 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 920 -340 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 240 -250 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -430 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 400 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 600 -400 0 0 {name=l_reset_b sig_type=std_logic lab=reset_b}
C {devices/lab_pin.sym} 200 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 200 -400 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 400 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 600 -220 0 0 {name=l_reset sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 520 -340 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 520 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 520 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 520 -280 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 660 -280 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 780 -340 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 780 -280 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 920 -280 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 780 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 640 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 640 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/ipin.sym} 100 -310 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} 100 -270 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} 100 -225 0 0 {name=p_reset lab=reset}
C {devices/ipin.sym} 100 -440 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} 100 -190 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 1080 -310 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 1080 -270 0 0 {name=p_outn lab=outn}
