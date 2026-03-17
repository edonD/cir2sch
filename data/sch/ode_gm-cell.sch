v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} -110 -500 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} -110 -470 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 120 -150 0 0 {name=XM1
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} -60 -150 0 0 {name=XM2
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 260 -150 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 420 -150 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 560 -150 0 0 {name=XMT
w=95u
l=0.5u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 160 -400 0 0 {name=XMP1
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} -60 -400 0 0 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 440 -280 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 310 -340 0 0 {name=Ccmfb
value=10p}
N 140 -180 140 -430 {lab=outn}
N 140 -430 180 -430 {lab=outn}
N 140 -120 140 -180 {lab=s1}
N 140 -180 260 -180 {lab=s1}
N -40 -120 -40 -180 {lab=s2}
N -40 -180 420 -180 {lab=s2}
N 260 -120 420 -120 {lab=ntail}
N 420 -120 420 -180 {lab=ntail}
N 420 -180 580 -180 {lab=ntail}
N 140 -400 140 -370 {lab=pcm}
N 140 -370 310 -370 {lab=pcm}
N 140 -400 -80 -400 {lab=pcm}
N 310 -370 310 -250 {lab=pcm}
N 310 -250 440 -250 {lab=pcm}
C {devices/lab_pin.sym} 100 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 140 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} -40 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 580 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} -80 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 540 -150 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 140 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 180 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 180 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} -40 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} -40 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 440 -310 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 310 -310 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} -40 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -40 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} -180 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -180 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 720 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 720 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -180 -280 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -180 -240 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -180 -200 0 0 {name=p_vcm lab=vcm}
