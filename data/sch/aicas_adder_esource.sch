v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt 74HC00 in1 in2 out NVCC NVGND vcc1={vcc} tripdt1={tripdt}} 100 -395 0 0 0.35 0.35 {}
C {devices/res.sym} 150 -280 0 0 {name=Rout
value={Rout}}
C {devices/lab_pin.sym} 150 -310 0 0 {name=l_out20 sig_type=std_logic lab=out20}
C {devices/lab_pin.sym} 150 -250 0 0 {name=l_out sig_type=std_logic lab=out}
C {devices/ipin.sym} 30 -320 0 0 {name=p_in1 lab=in1}
C {devices/ipin.sym} 30 -280 0 0 {name=p_in2 lab=in2}
C {devices/iopin.sym} 30 -240 0 0 {name=p_NVCC lab=NVCC}
C {devices/iopin.sym} 30 -200 0 0 {name=p_NVGND lab=NVGND}
C {devices/iopin.sym} 30 -160 0 0 {name=p_vcc1={vcc} lab=vcc1={vcc}}
C {devices/iopin.sym} 30 -120 0 0 {name=p_tripdt1={tripdt} lab=tripdt1={tripdt}}
C {devices/opin.sym} 310 -280 0 0 {name=p_out lab=out}
