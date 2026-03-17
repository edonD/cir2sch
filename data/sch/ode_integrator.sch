v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Gm-C Integrator with Transmission Gate Reset} 250 -500 0 0 0.5 0.5 {}
T {.subckt integrator inp inn outp outn reset vbias_n vcm vdd vss} 250 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=XMinv_n
W=4u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMinv_p
W=8u
L=0.15u
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1120 -280 0 0 {name=XCp
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 900 -150 0 0 {name=XSWp_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 900 -400 0 0 {name=XSWp_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1320 -280 0 0 {name=XCn
W={C_mim_w}
L={C_mim_l}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1110 -150 0 0 {name=XSWn_n
W={W_nsw}
L={L_nsw}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1160 -400 0 0 {name=XSWn_p
W={W_psw}
L={L_psw}
spiceprefix=X}
C {devices/res.sym} 1280 -180 0 0 {name=Rinp
value=0.1}
C {devices/res.sym} 1500 -280 0 0 {name=Rinn
value=0.1}
N 300 -180 660 -180 {lab=reset_b}
N 660 -180 660 -350 {lab=reset_b}
N 300 -430 660 -430 {lab=reset_b}
N 660 -430 660 -350 {lab=reset_b}
N 880 -400 660 -400 {lab=reset_b}
N 660 -400 660 -350 {lab=reset_b}
N 1140 -400 660 -400 {lab=reset_b}
N 660 -400 660 -350 {lab=reset_b}
N 280 -150 630 -150 {lab=reset}
N 630 -150 630 -210 {lab=reset}
N 280 -400 630 -400 {lab=reset}
N 630 -400 630 -210 {lab=reset}
N 880 -150 630 -150 {lab=reset}
N 630 -150 630 -210 {lab=reset}
N 1090 -150 630 -150 {lab=reset}
N 630 -150 630 -210 {lab=reset}
N 1120 -310 1050 -310 {lab=outp}
N 1050 -310 1050 -270 {lab=outp}
N 900 -180 1050 -180 {lab=outp}
N 1050 -180 1050 -270 {lab=outp}
N 900 -430 1050 -430 {lab=outp}
N 1050 -430 1050 -270 {lab=outp}
N 1280 -150 1050 -150 {lab=outp}
N 1050 -150 1050 -270 {lab=outp}
N 1120 -250 1080 -250 {lab=vcm}
N 900 -120 1080 -120 {lab=vcm}
N 1080 -120 1080 -250 {lab=vcm}
N 900 -370 1080 -370 {lab=vcm}
N 1080 -370 1080 -250 {lab=vcm}
N 1320 -250 1080 -250 {lab=vcm}
N 1110 -120 1080 -120 {lab=vcm}
N 1080 -120 1080 -250 {lab=vcm}
N 1160 -370 1080 -370 {lab=vcm}
N 1080 -370 1080 -250 {lab=vcm}
N 1320 -310 1270 -310 {lab=outn}
N 1270 -310 1270 -290 {lab=outn}
N 1110 -180 1270 -180 {lab=outn}
N 1270 -180 1270 -290 {lab=outn}
N 1160 -430 1270 -430 {lab=outn}
N 1270 -430 1270 -290 {lab=outn}
N 1500 -250 1270 -250 {lab=outn}
N 1270 -250 1270 -290 {lab=outn}
C {devices/gnd.sym} 300 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1130 -150 0 0 {name=l_vss lab=VSS}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1180 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 1280 -210 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1500 -310 0 0 {name=l_inn sig_type=std_logic lab=inn}
