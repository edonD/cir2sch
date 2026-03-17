v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} 210 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} 210 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 280 -150 0 0 {name=XMinv_n
W=4u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 260 -400 0 0 {name=XMinv_p
W=8u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 510 -280 0 0 {name=XCp
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -150 0 0 {name=XSWp_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 590 -400 0 0 {name=XSWp_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 660 -280 0 0 {name=XCn
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 600 -150 0 0 {name=XSWn_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 440 -400 0 0 {name=XSWn_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {devices/res.sym} 760 -180 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 920 -180 0 0 {name=Rinn
value=0.1}
N 280 -180 280 -430 {lab=reset_b}
N 280 -430 260 -430 {lab=reset_b}
N 260 -430 420 -430 {lab=reset_b}
N 420 -430 420 -400 {lab=reset_b}
N 420 -400 570 -400 {lab=reset_b}
N 260 -150 430 -150 {lab=reset}
N 430 -150 580 -150 {lab=reset}
N 260 -150 260 -400 {lab=reset}
N 260 -400 240 -400 {lab=reset}
N 510 -310 510 -180 {lab=outp}
N 510 -180 450 -180 {lab=outp}
N 510 -310 590 -310 {lab=outp}
N 590 -310 590 -430 {lab=outp}
N 450 -180 450 -150 {lab=outp}
N 450 -150 760 -150 {lab=outp}
N 660 -310 660 -180 {lab=outn}
N 660 -180 600 -180 {lab=outn}
N 660 -310 660 -430 {lab=outn}
N 660 -430 440 -430 {lab=outn}
N 600 -180 600 -150 {lab=outn}
N 600 -150 920 -150 {lab=outn}
C {devices/gnd.sym} 280 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 300 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 470 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 620 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 260 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 610 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 460 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 510 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 450 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 590 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 660 -250 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 600 -120 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 440 -370 0 0 {name=l_vcm sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 760 -210 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 920 -210 0 0 {name=l_inn sig_type=std_logic lab=inn}
