v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {delta sigma A/D converter 9 bit} 470 -420 0 0 0.5 0.5 {}
C {mod1.sym} 520 -300 0 0 {name=Xmod}
C {sinc1.sym} 740 -300 0 0 {name=xsinc}
C {dac10.sym} 520 -120 0 0 {name=Xdac_latch}
C {dac10.sym} 740 -120 0 0 {name=Xdac_counter}
T {Xmod} 500 -280 0 0 0.25 0.25 {}
T {xsinc} 720 -280 0 0 0.25 0.25 {}
T {Xdac_latch} 500 -100 0 0 0.25 0.25 {}
T {Xdac_counter} 720 -100 0 0 0.25 0.25 {}
N 490 -300 490 -340 {lab=dclk}
N 490 -340 710 -340 {lab=dclk}
N 550 -300 710 -300 {lab=dv}
N 710 -300 710 -360 {lab=dv}
N 490 -280 490 -360 {lab=dvb}
N 490 -360 770 -360 {lab=dvb}
N 710 -320 710 -180 {lab=dlout2}
N 710 -180 550 -180 {lab=dlout2}
N 710 -300 710 -160 {lab=dlout4}
N 710 -160 550 -160 {lab=dlout4}
N 710 -280 710 -140 {lab=dlout6}
N 710 -140 550 -140 {lab=dlout6}
N 770 -280 770 -120 {lab=dlout7}
N 770 -120 490 -120 {lab=dlout7}
N 710 -260 710 -120 {lab=dlout8}
N 710 -120 550 -120 {lab=dlout8}
N 770 -260 770 -100 {lab=dlout9}
N 770 -100 490 -100 {lab=dlout9}
N 710 -240 710 -100 {lab=dlout10}
N 710 -100 550 -100 {lab=dlout10}
C {devices/lab_pin.sym} 490 -320 0 0 {name=l_inp sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 550 -320 0 0 {name=l_inm sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 490 -80 0 0 {name=l_adaclout sig_type=std_logic lab=adaclout}
C {devices/lab_pin.sym} 710 -180 0 0 {name=l_xsinc.dout1 sig_type=std_logic lab=xsinc.dout1}
C {devices/lab_pin.sym} 770 -180 0 0 {name=l_xsinc.dout2 sig_type=std_logic lab=xsinc.dout2}
C {devices/lab_pin.sym} 710 -160 0 0 {name=l_xsinc.dout3 sig_type=std_logic lab=xsinc.dout3}
C {devices/lab_pin.sym} 770 -160 0 0 {name=l_xsinc.dout4 sig_type=std_logic lab=xsinc.dout4}
C {devices/lab_pin.sym} 710 -140 0 0 {name=l_xsinc.dout5 sig_type=std_logic lab=xsinc.dout5}
C {devices/lab_pin.sym} 770 -140 0 0 {name=l_xsinc.dout6 sig_type=std_logic lab=xsinc.dout6}
C {devices/lab_pin.sym} 710 -120 0 0 {name=l_xsinc.dout7 sig_type=std_logic lab=xsinc.dout7}
C {devices/lab_pin.sym} 770 -120 0 0 {name=l_xsinc.dout8 sig_type=std_logic lab=xsinc.dout8}
C {devices/lab_pin.sym} 710 -100 0 0 {name=l_xsinc.dout9 sig_type=std_logic lab=xsinc.dout9}
C {devices/lab_pin.sym} 770 -100 0 0 {name=l_xsinc.dout10 sig_type=std_logic lab=xsinc.dout10}
C {devices/lab_pin.sym} 710 -80 0 0 {name=l_adaccout sig_type=std_logic lab=adaccout}
C {devices/lab_pin.sym} 490 -180 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 770 -180 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 770 -340 0 0 {name=l_dlout1 sig_type=std_logic lab=dlout1}
C {devices/lab_pin.sym} 770 -320 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 490 -160 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 770 -160 0 0 {name=l_dlout3 sig_type=std_logic lab=dlout3}
C {devices/lab_pin.sym} 770 -300 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
C {devices/lab_pin.sym} 490 -140 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
C {devices/lab_pin.sym} 770 -140 0 0 {name=l_dlout5 sig_type=std_logic lab=dlout5}
