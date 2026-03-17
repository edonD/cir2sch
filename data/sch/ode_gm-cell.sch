v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} -10 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} -10 -470 0 0 0.35 0.35 {}
C {sky130_fd_pr/nfet_01v8.sym} 170 -150 0 0 {name=XM1
W={W_in}
L={L_in}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 40 -150 0 0 {name=XM2
W={W_in}
L={L_in}
spiceprefix=X}
C {devices/res.sym} 300 -150 0 0 {name=Rs1
value={Rs_deg}}
C {devices/res.sym} 600 -150 0 0 {name=Rs2
value={Rs_deg}}
C {sky130_fd_pr/nfet_01v8.sym} 740 -150 0 0 {name=XMT
W={W_tail}
L={L_tail}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMP1
W={W_load}
L={L_load}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 40 -400 0 0 {name=XMP2
W={W_load}
L={L_load}
spiceprefix=X}
C {devices/res.sym} 460 -150 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 400 50 0 0 {name=Ccmfb
value=10p}
N 190 -180 190 -430 {lab=outn}
N 190 -430 320 -430 {lab=outn}
N 190 -120 190 -180 {lab=s1}
N 190 -180 300 -180 {lab=s1}
N 60 -180 60 -430 {lab=outp}
N 60 -120 60 -180 {lab=s2}
N 60 -180 600 -180 {lab=s2}
N 300 -120 600 -120 {lab=ntail}
N 600 -120 600 -180 {lab=ntail}
N 600 -180 760 -180 {lab=ntail}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 190 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 60 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 20 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 720 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 280 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 20 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 460 -120 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 400 20 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 320 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 460 -180 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 400 80 0 0 {name=l_0 lab=GND}
