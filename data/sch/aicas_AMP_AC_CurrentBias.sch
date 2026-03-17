v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {AMP.sym} 660 -300 0 0 {name=XI1}
C {devices/capa.sym} 440 -400 0 0 {name=C1
value=2E-12}
T {XI1} 640 -280 0 0 0.25 0.25 {}
N 630 -280 630 -430 {lab=Vout}
N 630 -430 440 -430 {lab=Vout}
C {devices/gnd.sym} 690 -300 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/vdd.sym} 630 -300 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 690 -320 0 0 {name=l_Vinn sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} 630 -320 0 0 {name=l_Vinp sig_type=std_logic lab=Vinp}
