v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {SKY130 Programmable OTA (Gm Cell) — Optimized} 50 -545 0 0 0.5 0.5 {}
T {.subckt gm_cell inp inn outp outn vbias_n vbias_p vcm vdd vss} 50 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 130 -150 0 0 {name=XM1
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 390 -150 0 1 {name=XM2
w=45u
l=4u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 200 -50 0 0 {name=Rs1
value=4.1k}
C {devices/res.sym} 410 -50 0 0 {name=Rs2
value=4.1k}
C {devices/nmos4.sym} 260 50 0 0 {name=XMT
w=95u
l=0.5u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 100 -400 0 0 {name=XMP1
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 380 -400 0 1 {name=XMP2
w=25u
l=4u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/res.sym} 540 -380 0 0 {name=Rcmfb
value=1k}
C {devices/capa.sym} 240 -340 0 0 {name=Ccmfb
value=10p}
N 150 -180 150 -430 {lab=outn}
N 150 -430 120 -430 {lab=outn}
N 150 -120 150 -80 {lab=s1}
N 150 -80 200 -80 {lab=s1}
N 370 -180 370 -430 {lab=outp}
N 370 -430 360 -430 {lab=outp}
N 370 -120 370 -80 {lab=s2}
N 370 -80 410 -80 {lab=s2}
N 200 -20 200 20 {lab=ntail}
N 200 20 280 20 {lab=ntail}
N 280 20 280 -20 {lab=ntail}
N 280 -20 410 -20 {lab=ntail}
C {devices/lab_pin.sym} 110 -150 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/gnd.sym} 150 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 370 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 50 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 410 -150 0 0 {name=l_inn sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 240 50 0 0 {name=l_vbias_n sig_type=std_logic lab=vbias_n}
C {devices/lab_pin.sym} 80 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 400 -400 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 540 -350 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/lab_pin.sym} 240 -370 0 0 {name=l_pcm sig_type=std_logic lab=pcm}
C {devices/vdd.sym} 120 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 120 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 -400 0 0 {name=l_vdd lab=VDD}
C {devices/lab_pin.sym} 540 -410 0 0 {name=l_pcm_int sig_type=std_logic lab=pcm_int}
C {devices/gnd.sym} 240 -310 0 0 {name=l_0 lab=GND}
C {devices/ipin.sym} -20 -440 0 0 {name=p_inp lab=inp}
C {devices/ipin.sym} -20 -400 0 0 {name=p_inn lab=inn}
C {devices/opin.sym} 700 -360 0 0 {name=p_outp lab=outp}
C {devices/opin.sym} 700 -320 0 0 {name=p_outn lab=outn}
C {devices/ipin.sym} -20 -280 0 0 {name=p_vbias_n lab=vbias_n}
C {devices/ipin.sym} -20 -240 0 0 {name=p_vbias_p lab=vbias_p}
C {devices/ipin.sym} -20 -200 0 0 {name=p_vcm lab=vcm}
