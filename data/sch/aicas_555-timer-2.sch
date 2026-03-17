v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -40 0 0 {name=V2
value=5}
C {devices/vsource.sym} 570 -40 0 0 {name=VReset
value=0}
C {devices/res.sym} 740 -280 0 0 {name=R3
value=1k}
C {devices/res.sym} 860 -250 0 0 {name=R4
value=5k}
C {devices/capa.sym} 440 -400 0 0 {name=C3
value=0.5u}
C {ua555.sym} 1380 -300 0 0 {name=XU2}
C {devices/res.sym} 1000 -280 0 0 {name=RA
value=1k}
C {devices/res.sym} 1120 -250 0 0 {name=RB
value=5k}
C {devices/capa.sym} 660 -400 0 0 {name=C
value=0.5u}
C {devices/res.sym} 1240 -190 0 0 {name=RL
value=1k}
C {TLC555.sym} 1380 -120 0 0 {name=XU1}
T {XU2} 1360 -280 0 0 0.25 0.25 {}
T {XU1} 1360 -100 0 0 0.25 0.25 {}
N 740 -310 1000 -310 {lab=2}
N 1350 -280 1350 -220 {lab=2}
N 1350 -220 1240 -220 {lab=2}
N 1350 -280 1350 -100 {lab=2}
N 1350 -320 1350 -140 {lab=res}
N 1350 -140 1410 -140 {lab=res}
N 740 -250 740 -280 {lab=3}
N 740 -280 860 -280 {lab=3}
N 1350 -340 1350 -300 {lab=4}
N 1000 -250 1000 -280 {lab=17}
N 1000 -280 1120 -280 {lab=17}
N 1120 -280 1120 -120 {lab=17}
N 1120 -120 1410 -120 {lab=17}
N 1120 -220 1120 -160 {lab=16}
N 1120 -160 1350 -160 {lab=16}
N 1350 -160 1350 -140 {lab=16}
N 1240 -160 1240 -120 {lab=13}
N 1240 -120 1350 -120 {lab=13}
C {devices/lab_pin.sym} 440 -70 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/gnd.sym} 440 -10 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -10 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1410 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 570 -70 0 0 {name=l_res sig_type=std_logic lab=res}
C {devices/lab_pin.sym} 1410 -300 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 860 -220 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1410 -340 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 1410 -320 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_16 sig_type=std_logic lab=16}
C {devices/lab_pin.sym} 1410 -160 0 0 {name=l_15 sig_type=std_logic lab=15}
