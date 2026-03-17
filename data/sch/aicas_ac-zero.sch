v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {whether .ac works for freq=0} 370 -520 0 0 0.5 0.5 {}
C {devices/vsource.sym} 440 -130 0 0 {name=v1}
C {devices/res.sym} 760 -280 0 0 {name=r1
value=1k}
C {devices/res.sym} 420 -400 0 0 {name=r3
value=1k}
C {devices/capa.sym} 560 -340 0 0 {name=c3
value=1uF}
N 440 -160 440 -310 {lab=1}
N 440 -310 760 -310 {lab=1}
N 420 -430 420 -370 {lab=3}
N 420 -370 560 -370 {lab=3}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 420 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 -310 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 760 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
