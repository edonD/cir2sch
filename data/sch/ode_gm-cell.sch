v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} -10 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} -10 -470 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 220 -150 0 0 {name=XM1
w=45u
l=4u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 40 -150 0 0 {name=XM2
w=45u
l=4u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 360 -150 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 520 -150 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 660 -150 0 0 {name=XMT
w=95u
l=0.5u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 260 -400 0 0 {name=XMP1
w=25u
l=4u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 40 -400 0 0 {name=XMP2
w=25u
l=4u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 540 -280 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 410 -340 0 0 {name=Ccmfb
value=10p}
N 240 -180 240 -430 {lab=outn}
N 240 -430 280 -430 {lab=outn}
N 240 -120 240 -180 {lab=s1}
N 240 -180 360 -180 {lab=s1}
N 60 -180 60 -430 {lab=outp}
N 60 -120 60 -180 {lab=s2}
N 60 -180 520 -180 {lab=s2}
N 360 -120 520 -120 {lab=ntail}
N 520 -120 520 -180 {lab=ntail}
N 520 -180 680 -180 {lab=ntail}
C {devices/lab_pin.sym} 200 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 240 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 60 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 20 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 640 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 20 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 540 -250 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 410 -370 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 60 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 540 -310 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 410 -310 0 0 {name=l_0 lab=GND}
C {devices/ipin.sym} -80 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -80 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 820 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 820 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -80 -280 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -80 -240 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -80 -200 0 0 {name=p_vcm lab=vcm}
