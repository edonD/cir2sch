v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -310 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -310 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=XMinv_n
W=4u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMinv_p
W=8u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 -280 0 0 {name=XCp
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 -150 0 0 {name=XSWp_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 40 -400 0 0 {name=XSWp_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 360 -280 0 0 {name=XCn
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -150 0 0 {name=XSWn_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 170 -400 0 0 {name=XSWn_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {devices/res.sym} -110 -280 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} -260 -280 0 0 {name=Rinn
value=0.1}
N 320 -180 320 -430 {lab=reset_b}
N 320 -430 320 -400 {lab=reset_b}
N 320 -400 150 -400 {lab=reset_b}
N 150 -400 20 -400 {lab=reset_b}
N 280 -150 150 -150 {lab=reset}
N 280 -150 430 -150 {lab=reset}
N 280 -150 280 -400 {lab=reset}
N 170 -310 170 -180 {lab=outp}
N 170 -180 190 -180 {lab=outp}
N 170 -310 170 -430 {lab=outp}
N 170 -430 60 -430 {lab=outp}
N 170 -310 170 -250 {lab=outp}
N 170 -250 -110 -250 {lab=outp}
C {devices/gnd.sym} 320 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 470 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 320 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 190 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 170 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 190 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 60 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 360 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 470 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 190 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 360 -310 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 470 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 190 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -260 -250 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} -110 -310 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -260 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
