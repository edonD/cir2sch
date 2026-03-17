v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 300 150 0 0 {name=VBIC}
C {devices/vsource.sym} 430 150 0 0 {name=V1
value=0.0}
C {devices/vsource.sym} 560 150 0 0 {name=VB
value=0.5}
C {devices/vsource.sym} 690 150 0 0 {name=VC
value=0.0}
N 430 180 430 120 {lab=V1_N}
N 430 120 560 120 {lab=V1_N}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_Output sig_type=std_logic lab=Output}
C {devices/lab_pin.sym} 300 180 0 0 {name=l_Test sig_type=std_logic lab=Test}
C {devices/lab_pin.sym} 430 120 0 0 {name=l_V1_P sig_type=std_logic lab=V1_P}
C {devices/gnd.sym} 560 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 690 180 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 690 120 0 0 {name=l_Q1_C sig_type=std_logic lab=Q1_C}
