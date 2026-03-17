v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt fadd a b cin sum cout} 470 -415 0 0 0.35 0.35 {}
C {hadd.sym} 520 -300 0 0 {name=x1_ha}
C {hadd.sym} 520 -120 0 0 {name=x2_ha}
C {74lv32a.sym} 520 60 0 0 {name=x3_or}
T {x1_ha} 500 -280 0 0 0.25 0.25 {}
T {x2_ha} 500 -100 0 0 0.25 0.25 {}
T {x3_or} 500 80 0 0 0.25 0.25 {}
N 490 -300 490 -140 {lab=1}
N 550 -300 550 40 {lab=2}
N 550 -120 550 40 {lab=3}
N 550 40 490 40 {lab=3}
C {devices/lab_pin.sym} 490 -320 0 0 {name=l_a sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 550 -320 0 0 {name=l_b sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 550 -140 0 0 {name=l_cin sig_type=std_logic lab=cin}
C {devices/lab_pin.sym} 490 -120 0 0 {name=l_sum sig_type=std_logic lab=sum}
C {devices/lab_pin.sym} 490 60 0 0 {name=l_cout sig_type=std_logic lab=cout}
C {devices/ipin.sym} 400 -120 0 0 {name=p_cin lab=cin}
C {devices/iopin.sym} 400 -300 0 0 {name=p_a lab=a}
C {devices/iopin.sym} 400 -260 0 0 {name=p_b lab=b}
C {devices/iopin.sym} 400 -80 0 0 {name=p_sum lab=sum}
C {devices/opin.sym} 680 60 0 0 {name=p_cout lab=cout}
