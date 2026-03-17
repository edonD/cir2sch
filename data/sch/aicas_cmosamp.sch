v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 830 -280 0 0 {name=CMOS
value=AMPLIFIER}
C {devices/isource.sym} 110 180 0 0 {name=IBIAS
value=100UA}
C {devices/pmos4.sym} 110 -400 0 0 {name=M1
w=15U
l=1U
model=M_PMOS_1}
C {devices/pmos4.sym} 330 -400 0 1 {name=M2
w=15U
l=1U
model=M_PMOS_1}
C {devices/nmos4.sym} 180 30 0 0 {name=M3
w=7.5U
l=1U
model=M_NMOS_1}
C {devices/nmos4.sym} 110 -150 0 0 {name=M4
w=7.5U
l=1U
model=M_NMOS_1}
C {devices/nmos4.sym} 330 -150 0 1 {name=M5
w=15U
l=1U
model=M_NMOS_1}
C {devices/pmos4.sym} 500 -550 0 0 {name=M6
w=15U
l=1U
model=M_PMOS_1}
C {devices/pmos4.sym} 390 -400 0 0 {name=M7
w=15U
l=1U
model=M_PMOS_1}
C {devices/pmos4.sym} 610 -400 0 1 {name=M8
w=15U
l=1U
model=M_PMOS_1}
N 520 -520 520 -550 {lab=1}
N 520 -520 520 -400 {lab=1}
N 520 -400 590 -400 {lab=1}
N 590 -400 590 -370 {lab=1}
N 590 -370 410 -370 {lab=1}
N 410 -370 410 -400 {lab=1}
N 200 60 200 30 {lab=2}
N 200 30 200 -120 {lab=2}
N 200 -120 130 -120 {lab=2}
N 130 -120 130 -150 {lab=2}
N 130 -120 310 -120 {lab=2}
N 310 -120 310 -150 {lab=2}
N 520 -580 520 -550 {lab=9}
N 520 -550 480 -550 {lab=9}
N 480 -550 480 -400 {lab=9}
N 480 -400 370 -400 {lab=9}
N 370 -400 630 -400 {lab=9}
N 130 -430 130 -150 {lab=6}
N 130 -150 90 -150 {lab=6}
N 90 -150 90 30 {lab=6}
N 90 30 160 30 {lab=6}
N 160 30 160 0 {lab=6}
N 160 0 200 0 {lab=6}
N 130 -370 130 -400 {lab=5}
N 130 -370 310 -370 {lab=5}
N 310 -370 310 -400 {lab=5}
N 310 -400 310 -430 {lab=5}
N 310 -430 410 -430 {lab=5}
N 310 -430 310 -150 {lab=7}
N 310 -150 350 -150 {lab=7}
N 350 -150 130 -150 {lab=7}
N 130 -150 130 -180 {lab=7}
N 310 -180 590 -180 {lab=8}
N 590 -180 590 -430 {lab=8}
C {devices/lab_pin.sym} 830 -310 0 0 {name=l_2-STAGE sig_type=std_logic lab=2-STAGE}
C {devices/lab_pin.sym} 830 -250 0 0 {name=l_OPERATIONAL sig_type=std_logic lab=OPERATIONAL}
C {devices/gnd.sym} 110 210 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 110 150 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 90 -400 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 350 -400 0 0 {name=l_4 sig_type=std_logic lab=4}
