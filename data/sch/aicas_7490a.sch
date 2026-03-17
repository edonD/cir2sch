v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 440 -280 0 0 {name=Conversion
value=7490a}
C {7490a.sym} 660 -300 0 0 {name=x1}
C {7490a.sym} 660 -120 0 0 {name=x2}
T {x1} 640 -280 0 0 0.25 0.25 {}
T {x2} 640 -100 0 0 0.25 0.25 {}
N 630 -340 630 -160 {lab=r01}
N 690 -340 690 -160 {lab=r02}
N 630 -320 630 -140 {lab=r91}
N 690 -320 690 -140 {lab=r92}
N 690 -300 690 -280 {lab=qa1}
N 690 -280 630 -280 {lab=qa1}
N 630 -120 630 -80 {lab=o2}
N 630 -80 690 -80 {lab=o2}
C {devices/lab_pin.sym} 440 -310 0 0 {name=l_of sig_type=std_logic lab=of}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_Pspice sig_type=std_logic lab=Pspice}
C {devices/lab_pin.sym} 630 -300 0 0 {name=l_clka sig_type=std_logic lab=clka}
C {devices/lab_pin.sym} 690 -280 0 0 {name=l_qb1 sig_type=std_logic lab=qb1}
C {devices/lab_pin.sym} 630 -260 0 0 {name=l_qc1 sig_type=std_logic lab=qc1}
C {devices/lab_pin.sym} 690 -260 0 0 {name=l_qd1 sig_type=std_logic lab=qd1}
C {devices/lab_pin.sym} 690 -120 0 0 {name=l_clkb sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 630 -100 0 0 {name=l_o1 sig_type=std_logic lab=o1}
C {devices/lab_pin.sym} 690 -100 0 0 {name=l_o4 sig_type=std_logic lab=o4}
C {devices/lab_pin.sym} 630 -80 0 0 {name=l_o3 sig_type=std_logic lab=o3}
