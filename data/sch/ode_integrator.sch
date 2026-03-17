v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} -40 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} -40 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 260 -150 0 0 {name=XMinv_n
W=4u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 340 -400 0 0 {name=XMinv_p
W=8u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 -280 0 0 {name=XCp
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 -150 0 0 {name=XSWp_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 10 -400 0 0 {name=XSWp_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 360 -280 0 0 {name=XCn
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -150 0 0 {name=XSWn_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 160 -400 0 0 {name=XSWn_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {devices/res.sym} 410 -180 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 590 -280 0 0 {name=Rinn
value=0.1}
N 260 -180 260 -430 {lab=reset_b}
N 260 -430 340 -430 {lab=reset_b}
N 340 -430 140 -430 {lab=reset_b}
N 140 -430 140 -400 {lab=reset_b}
N 140 -400 -10 -400 {lab=reset_b}
N 240 -150 60 -150 {lab=reset}
N 240 -150 540 -150 {lab=reset}
N 240 -150 240 -400 {lab=reset}
N 240 -400 320 -400 {lab=reset}
N 170 -310 170 -180 {lab=outp}
N 170 -180 80 -180 {lab=outp}
N 170 -310 170 -430 {lab=outp}
N 170 -430 10 -430 {lab=outp}
N 80 -180 80 -150 {lab=outp}
N 80 -150 410 -150 {lab=outp}
N 360 -310 360 -250 {lab=outn}
N 360 -250 590 -250 {lab=outn}
N 590 -250 590 -180 {lab=outn}
N 590 -180 560 -180 {lab=outn}
N 360 -310 360 -430 {lab=outn}
N 360 -430 160 -430 {lab=outn}
C {devices/gnd.sym} 260 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 100 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 340 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 30 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 180 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 170 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 80 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 10 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 360 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 560 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 160 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 410 -210 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 590 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
