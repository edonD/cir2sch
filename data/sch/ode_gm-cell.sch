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
C {devices/res.sym} 300 -60 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 420 -80 0 0 {name=Rs2
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
C {devices/pmos4.sym} 300 -400 0 1 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 560 -290 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 440 -340 0 0 {name=Ccmfb
value=10p}
N 130 -120 130 -90 {lab=s1}
N 130 -90 300 -90 {lab=s1}
N 310 -120 310 -110 {lab=s2}
N 310 -110 420 -110 {lab=s2}
N 300 -30 300 0 {lab=ntail}
N 300 0 240 0 {lab=ntail}
N 300 -30 300 -50 {lab=ntail}
N 300 -50 420 -50 {lab=ntail}
N 90 -400 320 -400 {lab=pcm}
N 320 -400 320 -370 {lab=pcm}
N 320 -370 440 -370 {lab=pcm}
N 440 -370 440 -260 {lab=pcm}
N 440 -260 560 -260 {lab=pcm}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/vdd.sym} 130 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 560 -320 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 440 -310 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 130 -180 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 130 -430 0 0 {name=l_outn sig_type=std_logic lab=outn}
C {devices/lab_pin.sym} 310 -180 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 310 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 280 -430 0 0 {name=l_outp sig_type=std_logic lab=outp}
C {devices/ipin.sym} -10 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -10 -110 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} -10 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -10 -440 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -10 -400 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 720 -275 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 720 -235 0 0 {name=p_outn lab=outn}
