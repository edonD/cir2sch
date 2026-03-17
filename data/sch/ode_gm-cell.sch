v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 250 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 250 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=XM1
W={W_in}
L={L_in}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 500 -150 0 0 {name=XM2
W={W_in}
L={L_in}
spiceprefix=X}
C {devices/res.sym} 680 -150 0 0 {name=Rs1
value={Rs_deg}}
C {devices/res.sym} 1000 -150 0 0 {name=Rs2
value={Rs_deg}}
C {sky130_fd_pr/nfet_01v8.sym} 840 -150 0 0 {name=XMT
W={W_tail}
L={L_tail}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMP1
W={W_load}
L={L_load}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 540 -400 0 0 {name=XMP2
W={W_load}
L={L_load}
spiceprefix=X}
C {devices/res.sym} 710 -400 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 780 -300 0 0 {name=Ccmfb
value=10p}
N 300 -180 300 -430 {lab=outn}
N 300 -120 680 -120 {lab=s1}
N 680 -120 680 -180 {lab=s1}
N 500 -180 540 -180 {lab=outp}
N 540 -180 540 -430 {lab=outp}
N 500 -120 1000 -120 {lab=s2}
N 1000 -120 1000 -180 {lab=s2}
N 680 -120 840 -120 {lab=ntail}
N 840 -120 840 -140 {lab=ntail}
N 1000 -120 840 -120 {lab=ntail}
N 840 -120 840 -140 {lab=ntail}
N 840 -180 840 -140 {lab=ntail}
N 280 -400 570 -400 {lab=pcm}
N 570 -400 570 -380 {lab=pcm}
N 520 -400 570 -400 {lab=pcm}
N 570 -400 570 -380 {lab=pcm}
N 710 -370 570 -370 {lab=pcm}
N 570 -370 570 -380 {lab=pcm}
N 780 -330 570 -330 {lab=pcm}
N 570 -330 570 -380 {lab=pcm}
C {devices/lab_pin.sym} 280 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 860 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 480 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 820 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 540 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 710 -430 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 780 -270 0 0 {name=l_0 lab=GND}
