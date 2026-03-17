v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 70 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 70 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 120 -150 0 0 {name=XM1
W={W_in}
L={L_in}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 440 -150 0 0 {name=XM2
W={W_in}
L={L_in}
spiceprefix=X}
C {devices/res.sym} 280 -150 0 0 {name=Rs1
value={Rs_deg}}
C {devices/res.sym} 940 -150 0 0 {name=Rs2
value={Rs_deg}}
C {sky130_fd_pr/nfet_01v8.sym} 620 -150 0 0 {name=XMT
W={W_tail}
L={L_tail}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMP1
W={W_load}
L={L_load}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 560 -400 0 0 {name=XMP2
W={W_load}
L={L_load}
spiceprefix=X}
C {devices/res.sym} 780 -150 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 400 50 0 0 {name=Ccmfb
value=10p}
N 120 -180 120 -430 {lab=outn}
N 120 -430 300 -430 {lab=outn}
N 120 -120 120 -180 {lab=s1}
N 120 -180 280 -180 {lab=s1}
N 440 -180 440 -430 {lab=outp}
N 440 -430 560 -430 {lab=outp}
N 440 -120 440 -180 {lab=s2}
N 440 -180 940 -180 {lab=s2}
N 280 -120 280 -180 {lab=ntail}
N 280 -180 620 -180 {lab=ntail}
N 620 -180 620 -120 {lab=ntail}
N 620 -120 940 -120 {lab=ntail}
N 280 -400 540 -400 {lab=pcm}
N 540 -400 780 -400 {lab=pcm}
N 780 -400 780 -120 {lab=pcm}
N 780 -120 780 20 {lab=pcm}
N 780 20 400 20 {lab=pcm}
C {devices/lab_pin.sym} 100 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 140 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 460 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 620 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 420 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 600 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 580 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 780 -180 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 400 80 0 0 {name=l_0 lab=GND}
