v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {delta sigma A/D converter 9 bit} 250 -420 0 0 0.5 0.5 {}
C {devices/vsource.sym} 300 150 0 0 {name=vin
value=0}
C {devices/vsource.sym} 430 150 0 0 {name=vclk
value=0}
C {devices/vsource.sym} 560 150 0 0 {name=vone
value=1}
C {devices/vsource.sym} 690 150 0 0 {name=vzero
value=0}
C {mod1.sym} 910 -300 0 0 {name=Xmod}
C {sinc1.sym} 1130 -300 0 0 {name=xsinc}
C {dac10.sym} 910 -120 0 0 {name=Xdac_latch}
C {dac10.sym} 1130 -120 0 0 {name=Xdac_counter}
T {Xmod} 890 -280 0 0 0.25 0.25 {}
T {xsinc} 1110 -280 0 0 0.25 0.25 {}
T {Xdac_latch} 890 -100 0 0 0.25 0.25 {}
T {Xdac_counter} 1110 -100 0 0 0.25 0.25 {}
N 880 -300 880 -340 {lab=dclk}
N 880 -340 1100 -340 {lab=dclk}
N 940 -300 1100 -300 {lab=dv}
N 1100 -300 1100 -360 {lab=dv}
N 880 -280 880 -360 {lab=dvb}
N 880 -360 1160 -360 {lab=dvb}
N 1100 -320 1100 -180 {lab=dlout2}
N 1100 -180 940 -180 {lab=dlout2}
N 1100 -300 1100 -160 {lab=dlout4}
N 1100 -160 940 -160 {lab=dlout4}
N 1100 -280 1100 -140 {lab=dlout6}
N 1100 -140 940 -140 {lab=dlout6}
N 1160 -280 1160 -120 {lab=dlout7}
N 1160 -120 880 -120 {lab=dlout7}
N 1100 -260 1100 -120 {lab=dlout8}
N 1100 -120 940 -120 {lab=dlout8}
N 1160 -260 1160 -100 {lab=dlout9}
N 1160 -100 880 -100 {lab=dlout9}
N 1100 -240 1100 -100 {lab=dlout10}
N 1100 -100 940 -100 {lab=dlout10}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 880 -320 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 300 180 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 940 -320 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 430 120 0 0 {name=l_aclk sig_type=std_logic lab=aclk}
C {devices/gnd.sym} 430 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 690 180 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 560 120 0 0 {name=l_aone sig_type=std_logic lab=aone}
C {devices/lab_pin.sym} 690 120 0 0 {name=l_azero sig_type=std_logic lab=azero}
C {devices/lab_pin.sym} 880 -80 0 0 {name=l_adaclout sig_type=std_logic lab=adaclout}
C {devices/lab_pin.sym} 1100 -180 0 0 {name=l_xsinc.dout1 sig_type=std_logic lab=xsinc.dout1}
C {devices/lab_pin.sym} 1160 -180 0 0 {name=l_xsinc.dout2 sig_type=std_logic lab=xsinc.dout2}
C {devices/lab_pin.sym} 1100 -160 0 0 {name=l_xsinc.dout3 sig_type=std_logic lab=xsinc.dout3}
C {devices/lab_pin.sym} 1160 -160 0 0 {name=l_xsinc.dout4 sig_type=std_logic lab=xsinc.dout4}
C {devices/lab_pin.sym} 1100 -140 0 0 {name=l_xsinc.dout5 sig_type=std_logic lab=xsinc.dout5}
C {devices/lab_pin.sym} 1160 -140 0 0 {name=l_xsinc.dout6 sig_type=std_logic lab=xsinc.dout6}
C {devices/lab_pin.sym} 1100 -120 0 0 {name=l_xsinc.dout7 sig_type=std_logic lab=xsinc.dout7}
C {devices/lab_pin.sym} 1160 -120 0 0 {name=l_xsinc.dout8 sig_type=std_logic lab=xsinc.dout8}
C {devices/lab_pin.sym} 1100 -100 0 0 {name=l_xsinc.dout9 sig_type=std_logic lab=xsinc.dout9}
C {devices/lab_pin.sym} 1160 -100 0 0 {name=l_xsinc.dout10 sig_type=std_logic lab=xsinc.dout10}
C {devices/lab_pin.sym} 1100 -80 0 0 {name=l_adaccout sig_type=std_logic lab=adaccout}
C {devices/lab_pin.sym} 1160 -180 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 1160 -340 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 880 -180 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 1160 -320 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 880 -160 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 1160 -160 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 880 -140 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
C {devices/lab_pin.sym} 1160 -140 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
C {devices/lab_pin.sym} 1160 -300 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
