v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} -50 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} -50 -470 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 180 -150 0 0 {name=XM1
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 0 -150 0 0 {name=XM2
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 320 -150 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 480 -150 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 620 -150 0 0 {name=XMT
w=95u
l=0.5u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 220 -400 0 0 {name=XMP1
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 0 -400 0 0 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 500 -280 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 370 -340 0 0 {name=Ccmfb
value=10p}
N 200 -180 200 -430 {lab=outn}
N 200 -430 240 -430 {lab=outn}
N 200 -120 200 -180 {lab=s1}
N 200 -180 320 -180 {lab=s1}
N 20 -120 20 -180 {lab=s2}
N 20 -180 480 -180 {lab=s2}
N 320 -120 480 -120 {lab=ntail}
N 480 -120 480 -180 {lab=ntail}
N 480 -180 640 -180 {lab=ntail}
N 200 -400 200 -370 {lab=pcm}
N 200 -370 370 -370 {lab=pcm}
N 200 -400 -20 -400 {lab=pcm}
N 370 -370 370 -250 {lab=pcm}
N 370 -250 500 -250 {lab=pcm}
C {devices/lab_pin.sym} 160 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 200 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 20 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 640 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} -20 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 600 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 200 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 20 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 20 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 500 -310 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 370 -310 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 20 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 20 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} -120 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -120 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 780 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 780 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -120 -280 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -120 -240 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -120 -200 0 0 {name=p_vcm lab=vcm}
