v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {gnetlist -g spice-sdb -o tmp.lst FB14_batterie.sch} 390 -745 0 0 0.5 0.5 {}
T {Legal Notice: This material is intended for free software support.} 390 -715 0 0 0.35 0.35 {}
T {For Applications support, contact the Internet address:} 390 -690 0 0 0.35 0.35 {}
T {Begin SPICE netlist of main design} 390 -665 0 0 0.35 0.35 {}
C {LM293.sym} 3530 -300 0 0 {name=X10}
C {devices/res.sym} 2960 -280 0 0 {name=R20
value=10k}
C {devices/res.sym} 660 -310 0 0 {name=R33
value=100}
C {devices/res.sym} 440 -400 0 0 {name=R32
value=10k}
C {devices/res.sym} 660 -400 0 0 {name=R31
value=22k}
C {devices/res.sym} 880 -400 0 0 {name=R30
value=22k}
C {devices/vsource.sym} 440 200 0 0 {name=Vbat
value=9V}
C {devices/vsource.sym} 570 200 0 0 {name=V3
value=6V}
C {devices/res.sym} 870 -550 0 0 {name=R?
value=2.2k}
C {devices/res.sym} 1120 -310 0 0 {name=R19
value=22k}
C {devices/vsource.sym} 700 200 0 0 {name=V1
value=26V}
C {devices/res.sym} 1100 -400 0 0 {name=R18
value=2.2k}
C {devices/res.sym} 1320 -400 0 0 {name=R17
value=430}
C {devices/res.sym} 1260 -260 0 0 {name=R16
value=100k}
C {LM2902_NS.sym} 3750 -300 0 0 {name=X9}
C {devices/res.sym} 1380 -260 0 0 {name=R15
value=100}
C {devices/res.sym} 1620 -220 0 0 {name=R14
value=0.1}
C {BAS70.sym} 3970 -300 0 0 {name=X8}
C {devices/res.sym} 1540 -400 0 0 {name=R9
value=2.2k}
C {devices/res.sym} 1760 -400 0 0 {name=R29
value=1K}
C {LM293.sym} 3530 -120 0 0 {name=X7}
C {devices/res.sym} 1500 -230 0 0 {name=R8
value=100k}
C {devices/res.sym} 1980 -400 0 0 {name=R13
value=2.2k}
C {devices/res.sym} 1620 -310 0 0 {name=R28
value=22k}
C {ntd18n06l.sym} 3750 -120 0 0 {name=X6}
C {devices/res.sym} 1880 -230 0 0 {name=R7
value=1k}
C {devices/res.sym} 2200 -400 0 0 {name=R12
value=6.05k}
C {devices/res.sym} 2640 -310 0 0 {name=R27
value=20k}
C {ntd18n06l.sym} 3970 -120 0 0 {name=X5}
C {devices/res.sym} 1500 -310 0 0 {name=R6
value=660}
C {devices/res.sym} 2300 -310 0 0 {name=R11
value=10k}
C {devices/res.sym} 2420 -400 0 0 {name=R26
value=2.2k}
C {devices/res.sym} 2440 -260 0 0 {name=R10
value=9.387k}
C {TL431-R.sym} 3530 60 0 0 {name=X4}
C {devices/res.sym} 1760 -260 0 0 {name=R5
value=2.83k}
C {devices/res.sym} 2770 -310 0 0 {name=R25
value=2.2k}
C {TL431-R.sym} 3750 60 0 0 {name=X3}
C {devices/res.sym} 2640 -400 0 0 {name=R4
value=22k}
C {devices/vsource.sym} 830 200 0 0 {name=Vvcc
value=0V}
C {devices/res.sym} 3180 -280 0 0 {name=R24
value=10k}
C {LM293.sym} 3970 60 0 0 {name=X2}
C {devices/res.sym} 2000 -230 0 0 {name=R3
value=22k}
C {BAS70.sym} 3530 240 0 0 {name=X13}
C {devices/res.sym} 3310 -280 0 0 {name=R23
value=100}
C {LM2902_NS.sym} 3750 240 0 0 {name=X1}
C {devices/res.sym} 2120 -210 0 0 {name=R2
value=22k}
C {devices/res.sym} 1740 -180 0 0 {name=Rbat
value=100}
C {LM293.sym} 3970 240 0 0 {name=X12}
C {devices/res.sym} 2240 -220 0 0 {name=R22
value=22k}
C {devices/res.sym} 2200 -120 0 0 {name=R1
value=22k}
C {LM293.sym} 3530 420 0 0 {name=X11}
C {devices/res.sym} 2740 50 0 0 {name=R21
value=22k}
T {X10} 3510 -280 0 0 0.25 0.25 {}
T {X9} 3730 -280 0 0 0.25 0.25 {}
T {X8} 3950 -280 0 0 0.25 0.25 {}
T {X7} 3510 -100 0 0 0.25 0.25 {}
T {X6} 3730 -100 0 0 0.25 0.25 {}
T {X5} 3950 -100 0 0 0.25 0.25 {}
T {X4} 3510 80 0 0 0.25 0.25 {}
T {X3} 3730 80 0 0 0.25 0.25 {}
T {X2} 3950 80 0 0 0.25 0.25 {}
T {X13} 3510 260 0 0 0.25 0.25 {}
T {X1} 3730 260 0 0 0.25 0.25 {}
T {X12} 3950 260 0 0 0.25 0.25 {}
T {X11} 3510 440 0 0 0.25 0.25 {}
N 1760 -370 1760 -340 {lab=vertsup}
N 1760 -340 1620 -340 {lab=vertsup}
N 4000 -310 4000 -140 {lab=1}
N 1620 -250 1620 -150 {lab=vmbat}
N 1620 -150 1740 -150 {lab=vmbat}
N 1120 -280 1120 -430 {lab=Vs2}
N 1120 -430 1100 -430 {lab=Vs2}
N 1120 -280 1120 -230 {lab=Vs2}
N 1120 -230 1260 -230 {lab=Vs2}
N 1260 -230 1260 -200 {lab=Vs2}
N 1260 -200 1500 -200 {lab=Vs2}
N 1320 -430 1320 -340 {lab=vref2}
N 1320 -340 1500 -340 {lab=vref2}
N 1260 -290 1260 -230 {lab=v7m}
N 1260 -230 1380 -230 {lab=v7m}
N 3780 -320 3780 -250 {lab=V9m}
N 3780 -250 3310 -250 {lab=V9m}
N 3310 -250 3310 -310 {lab=V9m}
N 3310 -310 3180 -310 {lab=V9m}
N 3720 -280 3720 -250 {lab=Iimage}
N 3720 -250 3180 -250 {lab=Iimage}
N 2300 -280 2300 -230 {lab=vref_temp}
N 2300 -230 2440 -230 {lab=vref_temp}
N 3720 60 3720 40 {lab=vref_temp}
N 3720 40 3940 40 {lab=vref_temp}
N 1880 -200 2000 -200 {lab=Vimage}
N 2200 -370 2200 -340 {lab=Vtest_temp}
N 2200 -340 2300 -340 {lab=Vtest_temp}
N 2300 -340 2300 -290 {lab=Vtest_temp}
N 2300 -290 2440 -290 {lab=Vtest_temp}
N 2640 -340 2640 -280 {lab=rougesup}
N 2640 -280 2770 -280 {lab=rougesup}
N 1500 -280 1500 -290 {lab=Vtest1}
N 1500 -290 1760 -290 {lab=Vtest1}
N 2000 -260 2000 -180 {lab=V1m}
N 2000 -180 2120 -180 {lab=V1m}
N 2120 -180 2120 -190 {lab=V1m}
N 2120 -190 2240 -190 {lab=V1m}
N 3560 230 3560 440 {lab=4}
N 3560 440 3500 440 {lab=4}
N 3560 230 3560 260 {lab=4}
N 3560 260 3940 260 {lab=4}
N 3940 220 3940 400 {lab=vimage}
N 3940 400 3560 400 {lab=vimage}
C {devices/lab_pin.sym} 3500 -320 0 0 {name=l_iimage sig_type=std_logic lab=iimage}
C {devices/lab_pin.sym} 1380 -290 0 0 {name=l_iimage sig_type=std_logic lab=iimage}
C {devices/lab_pin.sym} 3560 -320 0 0 {name=l_vertsup sig_type=std_logic lab=vertsup}
C {devices/vdd.sym} 3500 -300 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 660 -370 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 880 -370 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 870 -520 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 700 170 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 1100 -370 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3720 -300 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 1540 -430 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3500 -120 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 1980 -430 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3720 -140 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3940 60 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3720 240 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3940 240 0 0 {name=l_Vcc lab=Vcc}
C {devices/vdd.sym} 3500 420 0 0 {name=l_Vcc lab=Vcc}
C {devices/gnd.sym} 3560 -300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 870 -580 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1320 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3780 -300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1760 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3560 -120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2200 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3940 -140 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2420 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3560 40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3780 40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2640 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 4000 60 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3780 240 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 4000 240 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3560 420 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2740 20 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 3500 -280 0 0 {name=l_ledverte sig_type=std_logic lab=ledverte}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_ledverte sig_type=std_logic lab=ledverte}
C {devices/lab_pin.sym} 2960 -310 0 0 {name=l_vmbatm sig_type=std_logic lab=vmbatm}
C {devices/lab_pin.sym} 440 230 0 0 {name=l_vmbatm sig_type=std_logic lab=vmbatm}
C {devices/lab_pin.sym} 3940 -120 0 0 {name=l_vmbatm sig_type=std_logic lab=vmbatm}
C {devices/lab_pin.sym} 2960 -250 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 660 -340 0 0 {name=l_Imbat sig_type=std_logic lab=Imbat}
C {devices/lab_pin.sym} 660 -280 0 0 {name=l_V9p sig_type=std_logic lab=V9p}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_V9p sig_type=std_logic lab=V9p}
C {devices/lab_pin.sym} 3720 -320 0 0 {name=l_V9p sig_type=std_logic lab=V9p}
C {devices/lab_pin.sym} 880 -430 0 0 {name=l_ledrouge sig_type=std_logic lab=ledrouge}
C {devices/lab_pin.sym} 1620 -280 0 0 {name=l_ledrouge sig_type=std_logic lab=ledrouge}
C {devices/lab_pin.sym} 3500 230 0 0 {name=l_ledrouge sig_type=std_logic lab=ledrouge}
C {devices/lab_pin.sym} 440 170 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 1740 -210 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 570 170 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 2770 -340 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 1120 -340 0 0 {name=l_vmbat sig_type=std_logic lab=vmbat}
C {devices/lab_pin.sym} 2200 -150 0 0 {name=l_vmbat sig_type=std_logic lab=vmbat}
C {devices/lab_pin.sym} 3500 -100 0 0 {name=l_Vs2 sig_type=std_logic lab=Vs2}
C {devices/lab_pin.sym} 3780 -140 0 0 {name=l_Vs2 sig_type=std_logic lab=Vs2}
C {devices/lab_pin.sym} 3940 80 0 0 {name=l_Vs2 sig_type=std_logic lab=Vs2}
C {devices/lab_pin.sym} 3500 -140 0 0 {name=l_vref2 sig_type=std_logic lab=vref2}
C {devices/lab_pin.sym} 3560 -140 0 0 {name=l_v7m sig_type=std_logic lab=v7m}
C {devices/lab_pin.sym} 1620 -190 0 0 {name=l_imbat sig_type=std_logic lab=imbat}
C {devices/lab_pin.sym} 3720 -120 0 0 {name=l_imbat sig_type=std_logic lab=imbat}
C {devices/vdd.sym} 3940 -310 0 0 {name=l_vcc lab=vcc}
C {devices/lab_pin.sym} 1540 -370 0 0 {name=l_vref1 sig_type=std_logic lab=vref1}
C {devices/lab_pin.sym} 3500 60 0 0 {name=l_vref1 sig_type=std_logic lab=vref1}
C {devices/lab_pin.sym} 1760 -230 0 0 {name=l_vref1 sig_type=std_logic lab=vref1}
C {devices/lab_pin.sym} 2120 -240 0 0 {name=l_vref1 sig_type=std_logic lab=vref1}
C {devices/lab_pin.sym} 1500 -260 0 0 {name=l_V2p sig_type=std_logic lab=V2p}
C {devices/lab_pin.sym} 1880 -260 0 0 {name=l_V2p sig_type=std_logic lab=V2p}
C {devices/lab_pin.sym} 4000 40 0 0 {name=l_V2p sig_type=std_logic lab=V2p}
C {devices/lab_pin.sym} 1980 -370 0 0 {name=l_vref_temp sig_type=std_logic lab=vref_temp}
C {devices/lab_pin.sym} 3720 260 0 0 {name=l_Vimage sig_type=std_logic lab=Vimage}
C {devices/lab_pin.sym} 3720 40 0 0 {name=l_Vtest_temp sig_type=std_logic lab=Vtest_temp}
C {devices/lab_pin.sym} 3500 400 0 0 {name=l_rougesup sig_type=std_logic lab=rougesup}
C {devices/lab_pin.sym} 2640 -280 0 0 {name=l_rougeinf sig_type=std_logic lab=rougeinf}
C {devices/lab_pin.sym} 2420 -370 0 0 {name=l_rougeinf sig_type=std_logic lab=rougeinf}
C {devices/lab_pin.sym} 4000 220 0 0 {name=l_rougeinf sig_type=std_logic lab=rougeinf}
C {devices/lab_pin.sym} 3500 40 0 0 {name=l_Vtest1 sig_type=std_logic lab=Vtest1}
C {devices/lab_pin.sym} 2640 -370 0 0 {name=l_v1p sig_type=std_logic lab=v1p}
C {devices/lab_pin.sym} 3720 220 0 0 {name=l_v1p sig_type=std_logic lab=v1p}
C {devices/lab_pin.sym} 2200 -90 0 0 {name=l_v1p sig_type=std_logic lab=v1p}
C {devices/lab_pin.sym} 2740 80 0 0 {name=l_v1p sig_type=std_logic lab=v1p}
C {devices/lab_pin.sym} 830 170 0 0 {name=l_cmd_buck sig_type=std_logic lab=cmd_buck}
C {devices/lab_pin.sym} 3780 220 0 0 {name=l_V1m sig_type=std_logic lab=V1m}
C {devices/lab_pin.sym} 3310 -310 0 0 {name=l_Vmbat sig_type=std_logic lab=Vmbat}
C {devices/lab_pin.sym} 2240 -250 0 0 {name=l_Vmbatm sig_type=std_logic lab=Vmbatm}
