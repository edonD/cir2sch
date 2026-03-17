v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 50 -700 0 0 0.6 0.6 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 50 -660 0 0 0.4 0.4 {}
C {sky130_fd_pr/nfet_01v8.sym} 580 -210 0 0 {name=XM1
W={W_in}
L={L_in}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 760 -100 0 0 {name=XM2
W={W_in}
L={L_in}
spiceprefix=X}
C {devices/res.sym} 900 -430 0 0 {name=Rs1
value={Rs_deg}}
C {devices/res.sym} 1060 -310 0 0 {name=Rs2
value={Rs_deg}}
C {sky130_fd_pr/nfet_01v8.sym} 910 -220 0 0 {name=XMT
W={W_tail}
L={L_tail}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 580 -370 0 0 {name=XMP1
W={W_load}
L={L_load}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 730 -310 0 0 {name=XMP2
W={W_load}
L={L_load}
spiceprefix=X}
C {devices/res.sym} 1040 -120 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 890 -10 0 0 {name=Ccmfb
value=10p}
N 580 -240 580 -400 {lab=outn}
N 580 -180 900 -180 {lab=s1}
N 900 -180 900 -460 {lab=s1}
N 760 -130 730 -130 {lab=outp}
N 730 -130 730 -340 {lab=outp}
N 760 -70 1060 -70 {lab=s2}
N 1060 -70 1060 -340 {lab=s2}
N 900 -400 960 -400 {lab=ntail}
N 960 -400 960 -310 {lab=ntail}
N 1060 -280 960 -280 {lab=ntail}
N 960 -280 960 -310 {lab=ntail}
N 910 -250 960 -250 {lab=ntail}
N 960 -250 960 -310 {lab=ntail}
N 560 -370 800 -370 {lab=pcm}
N 800 -370 800 -200 {lab=pcm}
N 710 -310 800 -310 {lab=pcm}
N 800 -310 800 -200 {lab=pcm}
N 1040 -90 800 -90 {lab=pcm}
N 800 -90 800 -200 {lab=pcm}
N 890 -40 800 -40 {lab=pcm}
N 800 -40 800 -200 {lab=pcm}
C {devices/lab_pin.sym} 560 -210 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 600 -210 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 930 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 740 -100 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 890 -220 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/vdd.sym} 580 -340 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 600 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 730 -280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 750 -310 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 1040 -150 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 890 20 0 0 {name=l_0 lab=GND}
