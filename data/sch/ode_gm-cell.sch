v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 60 -545 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 60 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM1
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XM2
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 360 0 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 360 80 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 220 30 0 0 {name=XMT
w=95u
l=0.5u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XMP1
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 600 -290 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 460 -340 0 0 {name=Ccmfb
value=10p}
N 130 -180 130 -430 {lab=outn}
N 130 -120 130 -30 {lab=s1}
N 130 -30 360 -30 {lab=s1}
N 310 -180 310 -430 {lab=outp}
N 310 -120 360 -120 {lab=s2}
N 360 -120 360 50 {lab=s2}
N 360 30 360 110 {lab=ntail}
N 360 30 360 0 {lab=ntail}
N 360 0 240 0 {lab=ntail}
N 90 -400 350 -400 {lab=pcm}
N 350 -400 350 -370 {lab=pcm}
N 350 -370 460 -370 {lab=pcm}
N 460 -370 460 -260 {lab=pcm}
N 460 -260 600 -260 {lab=pcm}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/vdd.sym} 130 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 600 -320 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 460 -310 0 0 {name=l_0 lab=GND}
C {devices/ipin.sym} -10 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -10 -110 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} -10 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -10 -440 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -10 -400 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 760 -275 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 760 -235 0 0 {name=p_outn lab=outn}
