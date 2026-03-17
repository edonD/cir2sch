v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CIM Array -- 64x64 Compute-in-Memory Array} 210 -295 0 0 0.5 0.5 {}
T {8T SRAM: 6T storage + 2T decoupled read port} 210 -265 0 0 0.35 0.35 {}
T {Ports: bl blb wl wwl q qb vdd vss} 210 -240 0 0 0.35 0.35 {}
T {Ports: bl pre vdd vss} 210 -215 0 0 0.35 0.35 {}
C {devices/vsource.sym} 500 1510 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 640 1510 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 780 1510 0 0 {name=Vpre
value=PWL(0}
C {precharge.sym} 500 -100 0 0 {name=Xpre0}
C {precharge.sym} 700 -100 0 0 {name=Xpre1}
C {precharge.sym} 900 -100 0 0 {name=Xpre2}
C {precharge.sym} 1100 -100 0 0 {name=Xpre3}
C {precharge.sym} 1300 -100 0 0 {name=Xpre4}
C {precharge.sym} 1500 -100 0 0 {name=Xpre5}
C {precharge.sym} 1700 -100 0 0 {name=Xpre6}
C {precharge.sym} 1900 -100 0 0 {name=Xpre7}
C {devices/capa.sym} 500 1310 0 0 {name=Cbl0
value=10p}
C {devices/capa.sym} 700 1310 0 0 {name=Cbl1
value=10p}
C {devices/capa.sym} 900 1310 0 0 {name=Cbl2
value=10p}
C {devices/capa.sym} 1100 1310 0 0 {name=Cbl3
value=10p}
C {devices/capa.sym} 1300 1310 0 0 {name=Cbl4
value=10p}
C {devices/capa.sym} 1500 1310 0 0 {name=Cbl5
value=10p}
C {devices/capa.sym} 1700 1310 0 0 {name=Cbl6
value=10p}
C {devices/capa.sym} 1900 1310 0 0 {name=Cbl7
value=10p}
C {devices/vsource.sym} 380 0 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 380 170 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 380 340 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 380 510 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 380 680 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 380 850 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 380 1020 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 380 1190 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 260 0 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 260 170 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 260 340 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 260 510 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 260 680 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 260 850 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 260 1020 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 260 1190 0 0 {name=Vwwl7
value=0}
C {cim_bitcell_array.sym} 500 0 0 0 {name=Xcell_r0_c0}
C {cim_bitcell_array.sym} 700 0 0 0 {name=Xcell_r0_c1}
C {cim_bitcell_array.sym} 900 0 0 0 {name=Xcell_r0_c2}
C {cim_bitcell_array.sym} 1100 0 0 0 {name=Xcell_r0_c3}
C {cim_bitcell_array.sym} 1300 0 0 0 {name=Xcell_r0_c4}
C {cim_bitcell_array.sym} 1500 0 0 0 {name=Xcell_r0_c5}
C {cim_bitcell_array.sym} 1700 0 0 0 {name=Xcell_r0_c6}
C {cim_bitcell_array.sym} 1900 0 0 0 {name=Xcell_r0_c7}
C {cim_bitcell_array.sym} 500 170 0 0 {name=Xcell_r1_c0}
C {cim_bitcell_array.sym} 700 170 0 0 {name=Xcell_r1_c1}
C {cim_bitcell_array.sym} 900 170 0 0 {name=Xcell_r1_c2}
C {cim_bitcell_array.sym} 1100 170 0 0 {name=Xcell_r1_c3}
C {cim_bitcell_array.sym} 1300 170 0 0 {name=Xcell_r1_c4}
C {cim_bitcell_array.sym} 1500 170 0 0 {name=Xcell_r1_c5}
C {cim_bitcell_array.sym} 1700 170 0 0 {name=Xcell_r1_c6}
C {cim_bitcell_array.sym} 1900 170 0 0 {name=Xcell_r1_c7}
C {cim_bitcell_array.sym} 500 340 0 0 {name=Xcell_r2_c0}
C {cim_bitcell_array.sym} 700 340 0 0 {name=Xcell_r2_c1}
C {cim_bitcell_array.sym} 900 340 0 0 {name=Xcell_r2_c2}
C {cim_bitcell_array.sym} 1100 340 0 0 {name=Xcell_r2_c3}
C {cim_bitcell_array.sym} 1300 340 0 0 {name=Xcell_r2_c4}
C {cim_bitcell_array.sym} 1500 340 0 0 {name=Xcell_r2_c5}
C {cim_bitcell_array.sym} 1700 340 0 0 {name=Xcell_r2_c6}
C {cim_bitcell_array.sym} 1900 340 0 0 {name=Xcell_r2_c7}
C {cim_bitcell_array.sym} 500 510 0 0 {name=Xcell_r3_c0}
C {cim_bitcell_array.sym} 700 510 0 0 {name=Xcell_r3_c1}
C {cim_bitcell_array.sym} 900 510 0 0 {name=Xcell_r3_c2}
C {cim_bitcell_array.sym} 1100 510 0 0 {name=Xcell_r3_c3}
C {cim_bitcell_array.sym} 1300 510 0 0 {name=Xcell_r3_c4}
C {cim_bitcell_array.sym} 1500 510 0 0 {name=Xcell_r3_c5}
C {cim_bitcell_array.sym} 1700 510 0 0 {name=Xcell_r3_c6}
C {cim_bitcell_array.sym} 1900 510 0 0 {name=Xcell_r3_c7}
C {cim_bitcell_array.sym} 500 680 0 0 {name=Xcell_r4_c0}
C {cim_bitcell_array.sym} 700 680 0 0 {name=Xcell_r4_c1}
C {cim_bitcell_array.sym} 900 680 0 0 {name=Xcell_r4_c2}
C {cim_bitcell_array.sym} 1100 680 0 0 {name=Xcell_r4_c3}
C {cim_bitcell_array.sym} 1300 680 0 0 {name=Xcell_r4_c4}
C {cim_bitcell_array.sym} 1500 680 0 0 {name=Xcell_r4_c5}
C {cim_bitcell_array.sym} 1700 680 0 0 {name=Xcell_r4_c6}
C {cim_bitcell_array.sym} 1900 680 0 0 {name=Xcell_r4_c7}
C {cim_bitcell_array.sym} 500 850 0 0 {name=Xcell_r5_c0}
C {cim_bitcell_array.sym} 700 850 0 0 {name=Xcell_r5_c1}
C {cim_bitcell_array.sym} 900 850 0 0 {name=Xcell_r5_c2}
C {cim_bitcell_array.sym} 1100 850 0 0 {name=Xcell_r5_c3}
C {cim_bitcell_array.sym} 1300 850 0 0 {name=Xcell_r5_c4}
C {cim_bitcell_array.sym} 1500 850 0 0 {name=Xcell_r5_c5}
C {cim_bitcell_array.sym} 1700 850 0 0 {name=Xcell_r5_c6}
C {cim_bitcell_array.sym} 1900 850 0 0 {name=Xcell_r5_c7}
C {cim_bitcell_array.sym} 500 1020 0 0 {name=Xcell_r6_c0}
C {cim_bitcell_array.sym} 700 1020 0 0 {name=Xcell_r6_c1}
C {cim_bitcell_array.sym} 900 1020 0 0 {name=Xcell_r6_c2}
C {cim_bitcell_array.sym} 1100 1020 0 0 {name=Xcell_r6_c3}
C {cim_bitcell_array.sym} 1300 1020 0 0 {name=Xcell_r6_c4}
C {cim_bitcell_array.sym} 1500 1020 0 0 {name=Xcell_r6_c5}
C {cim_bitcell_array.sym} 1700 1020 0 0 {name=Xcell_r6_c6}
C {cim_bitcell_array.sym} 1900 1020 0 0 {name=Xcell_r6_c7}
C {cim_bitcell_array.sym} 500 1190 0 0 {name=Xcell_r7_c0}
C {cim_bitcell_array.sym} 700 1190 0 0 {name=Xcell_r7_c1}
C {cim_bitcell_array.sym} 900 1190 0 0 {name=Xcell_r7_c2}
C {cim_bitcell_array.sym} 1100 1190 0 0 {name=Xcell_r7_c3}
C {cim_bitcell_array.sym} 1300 1190 0 0 {name=Xcell_r7_c4}
C {cim_bitcell_array.sym} 1500 1190 0 0 {name=Xcell_r7_c5}
C {cim_bitcell_array.sym} 1700 1190 0 0 {name=Xcell_r7_c6}
C {cim_bitcell_array.sym} 1900 1190 0 0 {name=Xcell_r7_c7}
T {col0} 500 -60 0 0 0.3 0.3 {}
T {col1} 700 -60 0 0 0.3 0.3 {}
T {col2} 900 -60 0 0 0.3 0.3 {}
T {col3} 1100 -60 0 0 0.3 0.3 {}
T {col4} 1300 -60 0 0 0.3 0.3 {}
T {col5} 1500 -60 0 0 0.3 0.3 {}
T {col6} 1700 -60 0 0 0.3 0.3 {}
T {col7} 1900 -60 0 0 0.3 0.3 {}
T {row0} 420 0 0 0 0.3 0.3 {}
T {row1} 420 170 0 0 0.3 0.3 {}
T {row2} 420 340 0 0 0.3 0.3 {}
T {row3} 420 510 0 0 0.3 0.3 {}
T {row4} 420 680 0 0 0.3 0.3 {}
T {row5} 420 850 0 0 0.3 0.3 {}
T {row6} 420 1020 0 0 0.3 0.3 {}
T {row7} 420 1190 0 0 0.3 0.3 {}
T {8x8 Array} 420 -80 0 0 0.35 0.35 {}
N 530 -120 730 -120 {lab=pre}
N 730 -120 930 -120 {lab=pre}
N 930 -120 1130 -120 {lab=pre}
N 1130 -120 1330 -120 {lab=pre}
N 1330 -120 1530 -120 {lab=pre}
N 1530 -120 1730 -120 {lab=pre}
N 1730 -120 1930 -120 {lab=pre}
N 470 -120 470 -40 {lab=bl0}
N 470 -40 490 -40 {lab=bl0}
N 490 -40 490 140 {lab=bl0}
N 490 140 490 300 {lab=bl0}
N 490 300 490 480 {lab=bl0}
N 490 480 490 640 {lab=bl0}
N 490 640 490 820 {lab=bl0}
N 490 820 490 980 {lab=bl0}
N 490 980 490 1160 {lab=bl0}
N 490 1160 490 1280 {lab=bl0}
N 490 1280 500 1280 {lab=bl0}
N 670 -120 670 -40 {lab=bl1}
N 670 -40 690 -40 {lab=bl1}
N 690 -40 690 140 {lab=bl1}
N 690 140 690 300 {lab=bl1}
N 690 300 690 480 {lab=bl1}
N 690 480 690 640 {lab=bl1}
N 690 640 690 820 {lab=bl1}
N 690 820 690 980 {lab=bl1}
N 690 980 690 1160 {lab=bl1}
N 690 1160 690 1280 {lab=bl1}
N 690 1280 700 1280 {lab=bl1}
N 870 -120 870 -40 {lab=bl2}
N 870 -40 890 -40 {lab=bl2}
N 890 -40 890 140 {lab=bl2}
N 890 140 890 300 {lab=bl2}
N 890 300 890 480 {lab=bl2}
N 890 480 890 640 {lab=bl2}
N 890 640 890 820 {lab=bl2}
N 890 820 890 980 {lab=bl2}
N 890 980 890 1160 {lab=bl2}
N 890 1160 890 1280 {lab=bl2}
N 890 1280 900 1280 {lab=bl2}
N 1070 -120 1070 -40 {lab=bl3}
N 1070 -40 1090 -40 {lab=bl3}
N 1090 -40 1090 140 {lab=bl3}
N 1090 140 1090 300 {lab=bl3}
N 1090 300 1090 480 {lab=bl3}
N 1090 480 1090 640 {lab=bl3}
N 1090 640 1090 820 {lab=bl3}
N 1090 820 1090 980 {lab=bl3}
N 1090 980 1090 1160 {lab=bl3}
N 1090 1160 1090 1280 {lab=bl3}
N 1090 1280 1100 1280 {lab=bl3}
N 1270 -120 1270 -40 {lab=bl4}
N 1270 -40 1290 -40 {lab=bl4}
N 1290 -40 1290 140 {lab=bl4}
N 1290 140 1290 300 {lab=bl4}
N 1290 300 1290 480 {lab=bl4}
N 1290 480 1290 640 {lab=bl4}
N 1290 640 1290 820 {lab=bl4}
N 1290 820 1290 980 {lab=bl4}
N 1290 980 1290 1160 {lab=bl4}
N 1290 1160 1290 1280 {lab=bl4}
N 1290 1280 1300 1280 {lab=bl4}
N 1470 -120 1470 -40 {lab=bl5}
N 1470 -40 1490 -40 {lab=bl5}
N 1490 -40 1490 140 {lab=bl5}
N 1490 140 1490 300 {lab=bl5}
N 1490 300 1490 480 {lab=bl5}
N 1490 480 1490 640 {lab=bl5}
N 1490 640 1490 820 {lab=bl5}
N 1490 820 1490 980 {lab=bl5}
N 1490 980 1490 1160 {lab=bl5}
N 1490 1160 1490 1280 {lab=bl5}
N 1490 1280 1500 1280 {lab=bl5}
N 1670 -120 1670 -40 {lab=bl6}
N 1670 -40 1690 -40 {lab=bl6}
N 1690 -40 1690 140 {lab=bl6}
N 1690 140 1690 300 {lab=bl6}
N 1690 300 1690 480 {lab=bl6}
N 1690 480 1690 640 {lab=bl6}
N 1690 640 1690 820 {lab=bl6}
N 1690 820 1690 980 {lab=bl6}
N 1690 980 1690 1160 {lab=bl6}
N 1690 1160 1690 1280 {lab=bl6}
N 1690 1280 1700 1280 {lab=bl6}
N 1870 -120 1870 -40 {lab=bl7}
N 1870 -40 1890 -40 {lab=bl7}
N 1890 -40 1890 140 {lab=bl7}
N 1890 140 1890 300 {lab=bl7}
N 1890 300 1890 480 {lab=bl7}
N 1890 480 1890 640 {lab=bl7}
N 1890 640 1890 820 {lab=bl7}
N 1890 820 1890 980 {lab=bl7}
N 1890 980 1890 1160 {lab=bl7}
N 1890 1160 1890 1280 {lab=bl7}
N 1890 1280 1900 1280 {lab=bl7}
N 380 -30 380 -10 {lab=wl0}
N 380 -10 460 -10 {lab=wl0}
N 460 -10 660 -10 {lab=wl0}
N 660 -10 860 -10 {lab=wl0}
N 860 -10 1060 -10 {lab=wl0}
N 1060 -10 1260 -10 {lab=wl0}
N 1260 -10 1460 -10 {lab=wl0}
N 1460 -10 1660 -10 {lab=wl0}
N 1660 -10 1860 -10 {lab=wl0}
N 380 140 380 160 {lab=wl1}
N 380 160 460 160 {lab=wl1}
N 460 160 660 160 {lab=wl1}
N 660 160 860 160 {lab=wl1}
N 860 160 1060 160 {lab=wl1}
N 1060 160 1260 160 {lab=wl1}
N 1260 160 1460 160 {lab=wl1}
N 1460 160 1660 160 {lab=wl1}
N 1660 160 1860 160 {lab=wl1}
N 380 310 380 330 {lab=wl2}
N 380 330 460 330 {lab=wl2}
N 460 330 660 330 {lab=wl2}
N 660 330 860 330 {lab=wl2}
N 860 330 1060 330 {lab=wl2}
N 1060 330 1260 330 {lab=wl2}
N 1260 330 1460 330 {lab=wl2}
N 1460 330 1660 330 {lab=wl2}
N 1660 330 1860 330 {lab=wl2}
N 380 480 380 500 {lab=wl3}
N 380 500 460 500 {lab=wl3}
N 460 500 660 500 {lab=wl3}
N 660 500 860 500 {lab=wl3}
N 860 500 1060 500 {lab=wl3}
N 1060 500 1260 500 {lab=wl3}
N 1260 500 1460 500 {lab=wl3}
N 1460 500 1660 500 {lab=wl3}
N 1660 500 1860 500 {lab=wl3}
N 380 650 380 670 {lab=wl4}
N 380 670 460 670 {lab=wl4}
N 460 670 660 670 {lab=wl4}
N 660 670 860 670 {lab=wl4}
N 860 670 1060 670 {lab=wl4}
N 1060 670 1260 670 {lab=wl4}
N 1260 670 1460 670 {lab=wl4}
N 1460 670 1660 670 {lab=wl4}
N 1660 670 1860 670 {lab=wl4}
N 380 820 380 840 {lab=wl5}
N 380 840 460 840 {lab=wl5}
N 460 840 660 840 {lab=wl5}
N 660 840 860 840 {lab=wl5}
N 860 840 1060 840 {lab=wl5}
N 1060 840 1260 840 {lab=wl5}
N 1260 840 1460 840 {lab=wl5}
N 1460 840 1660 840 {lab=wl5}
N 1660 840 1860 840 {lab=wl5}
N 380 990 380 1010 {lab=wl6}
N 380 1010 460 1010 {lab=wl6}
N 460 1010 660 1010 {lab=wl6}
N 660 1010 860 1010 {lab=wl6}
N 860 1010 1060 1010 {lab=wl6}
N 1060 1010 1260 1010 {lab=wl6}
N 1260 1010 1460 1010 {lab=wl6}
N 1460 1010 1660 1010 {lab=wl6}
N 1660 1010 1860 1010 {lab=wl6}
N 380 1160 380 1180 {lab=wl7}
N 380 1180 460 1180 {lab=wl7}
N 460 1180 660 1180 {lab=wl7}
N 660 1180 860 1180 {lab=wl7}
N 860 1180 1060 1180 {lab=wl7}
N 1060 1180 1260 1180 {lab=wl7}
N 1260 1180 1460 1180 {lab=wl7}
N 1460 1180 1660 1180 {lab=wl7}
N 1660 1180 1860 1180 {lab=wl7}
N 260 -30 260 10 {lab=wwl0}
N 260 10 460 10 {lab=wwl0}
N 460 10 660 10 {lab=wwl0}
N 660 10 860 10 {lab=wwl0}
N 860 10 1060 10 {lab=wwl0}
N 1060 10 1260 10 {lab=wwl0}
N 1260 10 1460 10 {lab=wwl0}
N 1460 10 1660 10 {lab=wwl0}
N 1660 10 1860 10 {lab=wwl0}
N 260 140 260 180 {lab=wwl1}
N 260 180 460 180 {lab=wwl1}
N 460 180 660 180 {lab=wwl1}
N 660 180 860 180 {lab=wwl1}
N 860 180 1060 180 {lab=wwl1}
N 1060 180 1260 180 {lab=wwl1}
N 1260 180 1460 180 {lab=wwl1}
N 1460 180 1660 180 {lab=wwl1}
N 1660 180 1860 180 {lab=wwl1}
N 260 310 260 350 {lab=wwl2}
N 260 350 460 350 {lab=wwl2}
N 460 350 660 350 {lab=wwl2}
N 660 350 860 350 {lab=wwl2}
N 860 350 1060 350 {lab=wwl2}
N 1060 350 1260 350 {lab=wwl2}
N 1260 350 1460 350 {lab=wwl2}
N 1460 350 1660 350 {lab=wwl2}
N 1660 350 1860 350 {lab=wwl2}
N 260 480 260 520 {lab=wwl3}
N 260 520 460 520 {lab=wwl3}
N 460 520 660 520 {lab=wwl3}
N 660 520 860 520 {lab=wwl3}
N 860 520 1060 520 {lab=wwl3}
N 1060 520 1260 520 {lab=wwl3}
N 1260 520 1460 520 {lab=wwl3}
N 1460 520 1660 520 {lab=wwl3}
N 1660 520 1860 520 {lab=wwl3}
N 260 650 260 690 {lab=wwl4}
N 260 690 460 690 {lab=wwl4}
N 460 690 660 690 {lab=wwl4}
N 660 690 860 690 {lab=wwl4}
N 860 690 1060 690 {lab=wwl4}
N 1060 690 1260 690 {lab=wwl4}
N 1260 690 1460 690 {lab=wwl4}
N 1460 690 1660 690 {lab=wwl4}
N 1660 690 1860 690 {lab=wwl4}
N 260 820 260 860 {lab=wwl5}
N 260 860 460 860 {lab=wwl5}
N 460 860 660 860 {lab=wwl5}
N 660 860 860 860 {lab=wwl5}
N 860 860 1060 860 {lab=wwl5}
N 1060 860 1260 860 {lab=wwl5}
N 1260 860 1460 860 {lab=wwl5}
N 1460 860 1660 860 {lab=wwl5}
N 1660 860 1860 860 {lab=wwl5}
N 260 990 260 1030 {lab=wwl6}
N 260 1030 460 1030 {lab=wwl6}
N 460 1030 660 1030 {lab=wwl6}
N 660 1030 860 1030 {lab=wwl6}
N 860 1030 1060 1030 {lab=wwl6}
N 1060 1030 1260 1030 {lab=wwl6}
N 1260 1030 1460 1030 {lab=wwl6}
N 1460 1030 1660 1030 {lab=wwl6}
N 1660 1030 1860 1030 {lab=wwl6}
N 260 1160 260 1200 {lab=wwl7}
N 260 1200 460 1200 {lab=wwl7}
N 460 1200 660 1200 {lab=wwl7}
N 660 1200 860 1200 {lab=wwl7}
N 860 1200 1060 1200 {lab=wwl7}
N 1060 1200 1260 1200 {lab=wwl7}
N 1260 1200 1460 1200 {lab=wwl7}
N 1460 1200 1660 1200 {lab=wwl7}
N 1660 1200 1860 1200 {lab=wwl7}
N 510 -40 510 140 {lab=blb0}
N 510 140 510 300 {lab=blb0}
N 510 300 510 480 {lab=blb0}
N 510 480 510 640 {lab=blb0}
N 510 640 510 820 {lab=blb0}
N 510 820 510 980 {lab=blb0}
N 510 980 510 1160 {lab=blb0}
N 710 -40 710 140 {lab=blb1}
N 710 140 710 300 {lab=blb1}
N 710 300 710 480 {lab=blb1}
N 710 480 710 640 {lab=blb1}
N 710 640 710 820 {lab=blb1}
N 710 820 710 980 {lab=blb1}
N 710 980 710 1160 {lab=blb1}
N 910 -40 910 140 {lab=blb2}
N 910 140 910 300 {lab=blb2}
N 910 300 910 480 {lab=blb2}
N 910 480 910 640 {lab=blb2}
N 910 640 910 820 {lab=blb2}
N 910 820 910 980 {lab=blb2}
N 910 980 910 1160 {lab=blb2}
N 1110 -40 1110 140 {lab=blb3}
N 1110 140 1110 300 {lab=blb3}
N 1110 300 1110 480 {lab=blb3}
N 1110 480 1110 640 {lab=blb3}
N 1110 640 1110 820 {lab=blb3}
N 1110 820 1110 980 {lab=blb3}
N 1110 980 1110 1160 {lab=blb3}
N 1310 -40 1310 140 {lab=blb4}
N 1310 140 1310 300 {lab=blb4}
N 1310 300 1310 480 {lab=blb4}
N 1310 480 1310 640 {lab=blb4}
N 1310 640 1310 820 {lab=blb4}
N 1310 820 1310 980 {lab=blb4}
N 1310 980 1310 1160 {lab=blb4}
N 1510 -40 1510 140 {lab=blb5}
N 1510 140 1510 300 {lab=blb5}
N 1510 300 1510 480 {lab=blb5}
N 1510 480 1510 640 {lab=blb5}
N 1510 640 1510 820 {lab=blb5}
N 1510 820 1510 980 {lab=blb5}
N 1510 980 1510 1160 {lab=blb5}
N 1710 -40 1710 140 {lab=blb6}
N 1710 140 1710 300 {lab=blb6}
N 1710 300 1710 480 {lab=blb6}
N 1710 480 1710 640 {lab=blb6}
N 1710 640 1710 820 {lab=blb6}
N 1710 820 1710 980 {lab=blb6}
N 1710 980 1710 1160 {lab=blb6}
N 1910 -40 1910 140 {lab=blb7}
N 1910 140 1910 300 {lab=blb7}
N 1910 300 1910 480 {lab=blb7}
N 1910 480 1910 640 {lab=blb7}
N 1910 640 1910 820 {lab=blb7}
N 1910 820 1910 980 {lab=blb7}
N 1910 980 1910 1160 {lab=blb7}
C {devices/vdd.sym} 500 1480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 470 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 670 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 870 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1070 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1270 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1470 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1670 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1870 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 380 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 540 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 880 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 1060 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 490 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 690 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1090 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1290 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1490 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1690 1220 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1890 1220 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 500 1540 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 640 1540 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 780 1540 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1100 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1300 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1500 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1900 1340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 540 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 710 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 880 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 1050 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 1220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 540 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 710 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 880 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 1050 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 1220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 640 1480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 530 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 730 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 930 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1130 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1330 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1530 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1730 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1930 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 380 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 540 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 880 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 1060 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 510 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 710 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 910 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1110 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1310 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1510 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1710 1220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1910 1220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 780 1480 0 0 {name=l_pre sig_type=std_logic lab=pre}
