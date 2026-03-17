v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt sub1 n1 n2} 100 -415 0 0 0.35 0.35 {}
C {sub_in_lib.sym} 370 -300 0 0 {name=X2}
C {devices/res.sym} 150 -280 0 0 {name=R2
value=2k}
T {X2} 350 -280 0 0 0.25 0.25 {}
N 340 -310 150 -310 {lab=n1}
N 400 -310 400 -250 {lab=n2}
N 400 -250 150 -250 {lab=n2}
C {devices/iopin.sym} 30 -290 0 0 {name=p_n1 lab=n1}
C {devices/iopin.sym} 30 -250 0 0 {name=p_n2 lab=n2}
