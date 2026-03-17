v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 760 -280 0 0 {name=R1
value=1000}
C {devices/res.sym} 890 -280 0 0 {name=R2
value=1meg}
C {devices/res.sym} 440 -400 0 0 {name=R3
value=10k}
C {devices/res.sym} 540 50 0 0 {name=R4
value=10k}
C {TLV9002.sym} 1110 -300 0 0 {name=XU1}
T {XU1} 1090 -280 0 0 0.25 0.25 {}
N 760 -250 890 -250 {lab=Net-_R1-Pad2_}
N 890 -250 890 -320 {lab=Net-_R1-Pad2_}
N 890 -320 1140 -320 {lab=Net-_R1-Pad2_}
N 890 -310 890 -280 {lab=Vout}
N 890 -280 1080 -280 {lab=Vout}
C {devices/lab_pin.sym} 760 -310 0 0 {name=l_Vin sig_type=std_logic lab=Vin}
C {devices/gnd.sym} 540 80 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1140 -300 0 0 {name=l_GND lab=GND}
C {devices/vdd.sym} 440 -430 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 1080 -300 0 0 {name=l_Vcc lab=Vcc}
C {devices/lab_pin.sym} 440 -370 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
C {devices/lab_pin.sym} 540 20 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
C {devices/lab_pin.sym} 1080 -320 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
