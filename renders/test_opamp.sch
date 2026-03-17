v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {High-Performance Op-Amp — Two-Stage Miller OTA} 50 -700 0 0 0.6 0.6 {}
T {===== Supply =====} 50 -660 0 0 0.4 0.4 {}
T {===== Input =====} 50 -630 0 0 0.4 0.4 {}
T {===== First stage: NMOS differential pair + PMOS active load =====} 50 -600 0 0 0.4 0.4 {}
T {===== Second stage: common-source amplifier =====} 50 -570 0 0 0.4 0.4 {}
T {===== Miller compensation =====} 50 -540 0 0 0.4 0.4 {}
T {===== Bias generation =====} 50 -510 0 0 0.4 0.4 {}
T {===== Load =====} 50 -480 0 0 0.4 0.4 {}
T {===== Models (Level 1 CMOS) =====} 50 -450 0 0 0.4 0.4 {}
T {===== Analysis =====} 50 -420 0 0 0.4 0.4 {}
C {devices/vsource.sym} 60 -300 0 0 {name=Vdd
value=15}
C {devices/vsource.sym} 70 -70 0 0 {name=Vss
value=-15}
C {devices/vsource.sym} 700 -280 0 0 {name=Vinp
value=0}
C {devices/vsource.sym} 660 -70 0 0 {name=Vinm
value=0}
C {devices/nmos4.sym} 920 -280 0 0 {name=M1
W={W1}u
L={L1}u}
C {devices/nmos4.sym} 1050 -140 0 1 {name=M2
W={W1}u
L={L1}u}
C {devices/pmos4.sym} 1060 -390 0 0 {name=M3
W={W3}u
L={L3}u}
C {devices/pmos4.sym} 1230 -260 0 0 {name=M4
W={W3}u
L={L3}u}
C {devices/nmos4.sym} 840 -100 0 0 {name=M5
W={W5}u
L={L5}u}
C {devices/pmos4.sym} 1360 -120 0 1 {name=M6
W={W6}u
L={L6}u}
C {devices/nmos4.sym} 1330 50 0 1 {name=M7
W={W7}u
L={L7}u}
C {devices/capa.sym} 1390 -340 0 0 {name=Cc
value={Cc}}
C {devices/res.sym} 1570 -170 0 0 {name=Rc
value={Rc}}
C {devices/isource.sym} 750 100 0 0 {name=Ibias
value={Ibias}}
C {devices/nmos4.sym} 960 80 0 0 {name=Mbias
W={Wbias}u
L={Lbias}u}
C {devices/isource.sym} 1000 250 0 0 {name=Ibias2
value={Ibias2}}
C {devices/nmos4.sym} 1140 170 0 0 {name=Mbias2
W={Wbias2}u
L={Lbias2}u}
C {devices/res.sym} 1680 -30 0 0 {name=RL
value=600}
C {devices/capa.sym} 1510 0 0 0 {name=CL
value=100p}
N 700 -310 900 -310 {lab=inp}
N 900 -310 900 -280 {lab=inp}
N 660 -100 1070 -100 {lab=inm}
N 1070 -100 1070 -140 {lab=inm}
N 920 -310 1060 -310 {lab=d1}
N 1060 -310 1060 -340 {lab=d1}
N 1060 -420 1060 -340 {lab=d1}
N 1040 -390 1060 -390 {lab=d1}
N 1060 -390 1060 -340 {lab=d1}
N 1210 -260 1060 -260 {lab=d1}
N 1060 -260 1060 -340 {lab=d1}
N 920 -250 940 -250 {lab=tail}
N 940 -250 940 -160 {lab=tail}
N 1050 -110 940 -110 {lab=tail}
N 940 -110 940 -160 {lab=tail}
N 840 -130 940 -130 {lab=tail}
N 940 -130 940 -160 {lab=tail}
N 1050 -170 1260 -170 {lab=d2}
N 1260 -170 1260 -240 {lab=d2}
N 1230 -290 1260 -290 {lab=d2}
N 1260 -290 1260 -240 {lab=d2}
N 1380 -120 1260 -120 {lab=d2}
N 1260 -120 1260 -240 {lab=d2}
N 1390 -370 1260 -370 {lab=d2}
N 1260 -370 1260 -240 {lab=d2}
N 820 -100 870 -100 {lab=nbias}
N 870 -100 870 40 {lab=nbias}
N 750 130 870 130 {lab=nbias}
N 870 130 870 40 {lab=nbias}
N 960 50 870 50 {lab=nbias}
N 870 50 870 40 {lab=nbias}
N 940 80 870 80 {lab=nbias}
N 870 80 870 40 {lab=nbias}
N 1350 50 1150 50 {lab=nbias2}
N 1150 50 1150 160 {lab=nbias2}
N 1000 280 1150 280 {lab=nbias2}
N 1150 280 1150 160 {lab=nbias2}
N 1140 140 1150 140 {lab=nbias2}
N 1150 140 1150 160 {lab=nbias2}
N 1120 170 1150 170 {lab=nbias2}
N 1150 170 1150 160 {lab=nbias2}
N 1390 -310 1570 -310 {lab=comp}
N 1570 -310 1570 -200 {lab=comp}
C {devices/vdd.sym} 60 -330 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1060 -360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1080 -390 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1230 -230 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1250 -260 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1360 -90 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1340 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 750 70 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 220 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 60 -270 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 70 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1680 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1510 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 70 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 940 -280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1030 -140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -70 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 860 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1330 80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 50 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 960 110 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 980 80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1140 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 170 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 1360 -150 0 0 {name=l_out sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1330 20 0 0 {name=l_out sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1570 -140 0 0 {name=l_out sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1680 -60 0 0 {name=l_out sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1510 -30 0 0 {name=l_out sig_type=std_logic lab=out}
