v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -250 0 0 {name=V1}
C {devices/vsource.sym} 570 -250 0 0 {name=V0}
C {devices/vsource.sym} 700 -250 0 0 {name=VIN}
C {devices/vsource.sym} 830 -250 0 0 {name=VIP}
C {AMP.sym} 1050 -300 0 0 {name=XI1}
C {devices/capa.sym} 440 -400 0 0 {name=C1
value=2E-12}
T {XI1} 1030 -280 0 0 0.25 0.25 {}
N 700 -280 700 -320 {lab=Vinn}
N 700 -320 1080 -320 {lab=Vinn}
N 830 -280 830 -320 {lab=Vinp}
N 830 -320 1020 -320 {lab=Vinp}
C {devices/gnd.sym} 440 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 1080 -300 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 440 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/vdd.sym} 570 -280 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 1020 -300 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 1020 -280 0 0 {name=l_Vout sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_Vout sig_type=std_logic lab=Vout}
