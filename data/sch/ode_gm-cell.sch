v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 40 -545 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 40 -515 0 0 0.35 0.35 {}
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
C {devices/res.sym} 280 -60 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 420 -60 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 220 30 0 0 {name=XMT
w=95u
l=0.5u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 90 -400 0 0 {name=XMP1
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 350 -400 0 1 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 440 -290 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 210 -340 0 0 {name=Ccmfb
value=10p}
N 130 -180 130 -430 {lab=outn}
N 130 -430 110 -430 {lab=outn}
N 130 -120 130 -90 {lab=s1}
N 130 -90 280 -90 {lab=s1}
N 310 -180 310 -430 {lab=outp}
N 310 -430 330 -430 {lab=outp}
N 310 -120 310 -90 {lab=s2}
N 310 -90 420 -90 {lab=s2}
N 280 -30 280 0 {lab=ntail}
N 280 0 240 0 {lab=ntail}
N 280 -30 420 -30 {lab=ntail}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 130 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 60 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 70 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 370 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 440 -260 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 210 -370 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 110 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 110 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 330 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 330 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 440 -320 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 210 -310 0 0 {name=l_0 lab=GND}
C {devices/ipin.sym} -30 -150 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -30 -110 0 0 {name=p_inn lab=inn}
C {devices/ipin.sym} -30 30 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -30 -440 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -30 -400 0 0 {name=p_vcm lab=vcm}
C {devices/opin.sym} 600 -150 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 600 -110 0 0 {name=p_outn lab=outn}
