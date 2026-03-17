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
C {devices/vsource.sym} 500 1370 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 640 1370 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 780 1370 0 0 {name=Vpre
value=PWL(0}
C {devices/noconn.sym} 500 -100 0 0 {name=Xpre0}
C {devices/noconn.sym} 700 -100 0 0 {name=Xpre1}
C {devices/noconn.sym} 900 -100 0 0 {name=Xpre2}
C {devices/noconn.sym} 1100 -100 0 0 {name=Xpre3}
C {devices/noconn.sym} 1300 -100 0 0 {name=Xpre4}
C {devices/noconn.sym} 1500 -100 0 0 {name=Xpre5}
C {devices/noconn.sym} 1700 -100 0 0 {name=Xpre6}
C {devices/noconn.sym} 1900 -100 0 0 {name=Xpre7}
C {devices/capa.sym} 500 1170 0 0 {name=Cbl0
value=10p}
C {devices/capa.sym} 700 1170 0 0 {name=Cbl1
value=10p}
C {devices/capa.sym} 900 1170 0 0 {name=Cbl2
value=10p}
C {devices/capa.sym} 1100 1170 0 0 {name=Cbl3
value=10p}
C {devices/capa.sym} 1300 1170 0 0 {name=Cbl4
value=10p}
C {devices/capa.sym} 1500 1170 0 0 {name=Cbl5
value=10p}
C {devices/capa.sym} 1700 1170 0 0 {name=Cbl6
value=10p}
C {devices/capa.sym} 1900 1170 0 0 {name=Cbl7
value=10p}
C {devices/vsource.sym} 380 0 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 380 150 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 380 300 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 380 450 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 380 600 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 380 750 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 380 900 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 380 1050 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 260 0 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 260 150 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 260 300 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 260 450 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 260 600 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 260 750 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 260 900 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 260 1050 0 0 {name=Vwwl7
value=0}
C {devices/noconn.sym} 500 0 0 0 {name=Xcell_r0_c0}
C {devices/noconn.sym} 700 0 0 0 {name=Xcell_r0_c1}
C {devices/noconn.sym} 900 0 0 0 {name=Xcell_r0_c2}
C {devices/noconn.sym} 1100 0 0 0 {name=Xcell_r0_c3}
C {devices/noconn.sym} 1300 0 0 0 {name=Xcell_r0_c4}
C {devices/noconn.sym} 1500 0 0 0 {name=Xcell_r0_c5}
C {devices/noconn.sym} 1700 0 0 0 {name=Xcell_r0_c6}
C {devices/noconn.sym} 1900 0 0 0 {name=Xcell_r0_c7}
C {devices/noconn.sym} 500 150 0 0 {name=Xcell_r1_c0}
C {devices/noconn.sym} 700 150 0 0 {name=Xcell_r1_c1}
C {devices/noconn.sym} 900 150 0 0 {name=Xcell_r1_c2}
C {devices/noconn.sym} 1100 150 0 0 {name=Xcell_r1_c3}
C {devices/noconn.sym} 1300 150 0 0 {name=Xcell_r1_c4}
C {devices/noconn.sym} 1500 150 0 0 {name=Xcell_r1_c5}
C {devices/noconn.sym} 1700 150 0 0 {name=Xcell_r1_c6}
C {devices/noconn.sym} 1900 150 0 0 {name=Xcell_r1_c7}
C {devices/noconn.sym} 500 300 0 0 {name=Xcell_r2_c0}
C {devices/noconn.sym} 700 300 0 0 {name=Xcell_r2_c1}
C {devices/noconn.sym} 900 300 0 0 {name=Xcell_r2_c2}
C {devices/noconn.sym} 1100 300 0 0 {name=Xcell_r2_c3}
C {devices/noconn.sym} 1300 300 0 0 {name=Xcell_r2_c4}
C {devices/noconn.sym} 1500 300 0 0 {name=Xcell_r2_c5}
C {devices/noconn.sym} 1700 300 0 0 {name=Xcell_r2_c6}
C {devices/noconn.sym} 1900 300 0 0 {name=Xcell_r2_c7}
C {devices/noconn.sym} 500 450 0 0 {name=Xcell_r3_c0}
C {devices/noconn.sym} 700 450 0 0 {name=Xcell_r3_c1}
C {devices/noconn.sym} 900 450 0 0 {name=Xcell_r3_c2}
C {devices/noconn.sym} 1100 450 0 0 {name=Xcell_r3_c3}
C {devices/noconn.sym} 1300 450 0 0 {name=Xcell_r3_c4}
C {devices/noconn.sym} 1500 450 0 0 {name=Xcell_r3_c5}
C {devices/noconn.sym} 1700 450 0 0 {name=Xcell_r3_c6}
C {devices/noconn.sym} 1900 450 0 0 {name=Xcell_r3_c7}
C {devices/noconn.sym} 500 600 0 0 {name=Xcell_r4_c0}
C {devices/noconn.sym} 700 600 0 0 {name=Xcell_r4_c1}
C {devices/noconn.sym} 900 600 0 0 {name=Xcell_r4_c2}
C {devices/noconn.sym} 1100 600 0 0 {name=Xcell_r4_c3}
C {devices/noconn.sym} 1300 600 0 0 {name=Xcell_r4_c4}
C {devices/noconn.sym} 1500 600 0 0 {name=Xcell_r4_c5}
C {devices/noconn.sym} 1700 600 0 0 {name=Xcell_r4_c6}
C {devices/noconn.sym} 1900 600 0 0 {name=Xcell_r4_c7}
C {devices/noconn.sym} 500 750 0 0 {name=Xcell_r5_c0}
C {devices/noconn.sym} 700 750 0 0 {name=Xcell_r5_c1}
C {devices/noconn.sym} 900 750 0 0 {name=Xcell_r5_c2}
C {devices/noconn.sym} 1100 750 0 0 {name=Xcell_r5_c3}
C {devices/noconn.sym} 1300 750 0 0 {name=Xcell_r5_c4}
C {devices/noconn.sym} 1500 750 0 0 {name=Xcell_r5_c5}
C {devices/noconn.sym} 1700 750 0 0 {name=Xcell_r5_c6}
C {devices/noconn.sym} 1900 750 0 0 {name=Xcell_r5_c7}
C {devices/noconn.sym} 500 900 0 0 {name=Xcell_r6_c0}
C {devices/noconn.sym} 700 900 0 0 {name=Xcell_r6_c1}
C {devices/noconn.sym} 900 900 0 0 {name=Xcell_r6_c2}
C {devices/noconn.sym} 1100 900 0 0 {name=Xcell_r6_c3}
C {devices/noconn.sym} 1300 900 0 0 {name=Xcell_r6_c4}
C {devices/noconn.sym} 1500 900 0 0 {name=Xcell_r6_c5}
C {devices/noconn.sym} 1700 900 0 0 {name=Xcell_r6_c6}
C {devices/noconn.sym} 1900 900 0 0 {name=Xcell_r6_c7}
C {devices/noconn.sym} 500 1050 0 0 {name=Xcell_r7_c0}
C {devices/noconn.sym} 700 1050 0 0 {name=Xcell_r7_c1}
C {devices/noconn.sym} 900 1050 0 0 {name=Xcell_r7_c2}
C {devices/noconn.sym} 1100 1050 0 0 {name=Xcell_r7_c3}
C {devices/noconn.sym} 1300 1050 0 0 {name=Xcell_r7_c4}
C {devices/noconn.sym} 1500 1050 0 0 {name=Xcell_r7_c5}
C {devices/noconn.sym} 1700 1050 0 0 {name=Xcell_r7_c6}
C {devices/noconn.sym} 1900 1050 0 0 {name=Xcell_r7_c7}
T {col0} 500 -60 0 0 0.3 0.3 {}
T {col1} 700 -60 0 0 0.3 0.3 {}
T {col2} 900 -60 0 0 0.3 0.3 {}
T {col3} 1100 -60 0 0 0.3 0.3 {}
T {col4} 1300 -60 0 0 0.3 0.3 {}
T {col5} 1500 -60 0 0 0.3 0.3 {}
T {col6} 1700 -60 0 0 0.3 0.3 {}
T {col7} 1900 -60 0 0 0.3 0.3 {}
T {row0} 420 0 0 0 0.3 0.3 {}
T {row1} 420 150 0 0 0.3 0.3 {}
T {row2} 420 300 0 0 0.3 0.3 {}
T {row3} 420 450 0 0 0.3 0.3 {}
T {row4} 420 600 0 0 0.3 0.3 {}
T {row5} 420 750 0 0 0.3 0.3 {}
T {row6} 420 900 0 0 0.3 0.3 {}
T {row7} 420 1050 0 0 0.3 0.3 {}
T {8x8 Array} 420 -80 0 0 0.35 0.35 {}
N 500 -100 700 -100 {lab=pre}
N 700 -100 900 -100 {lab=pre}
N 900 -100 1100 -100 {lab=pre}
N 1100 -100 1300 -100 {lab=pre}
N 1300 -100 1500 -100 {lab=pre}
N 1500 -100 1700 -100 {lab=pre}
N 1700 -100 1900 -100 {lab=pre}
N 500 -100 500 0 {lab=bl0}
N 500 0 500 150 {lab=bl0}
N 500 150 500 300 {lab=bl0}
N 500 300 500 450 {lab=bl0}
N 500 450 500 600 {lab=bl0}
N 500 600 500 750 {lab=bl0}
N 500 750 500 900 {lab=bl0}
N 500 900 500 1050 {lab=bl0}
N 500 1050 500 1140 {lab=bl0}
N 700 -100 700 0 {lab=bl1}
N 700 0 700 150 {lab=bl1}
N 700 150 700 300 {lab=bl1}
N 700 300 700 450 {lab=bl1}
N 700 450 700 600 {lab=bl1}
N 700 600 700 750 {lab=bl1}
N 700 750 700 900 {lab=bl1}
N 700 900 700 1050 {lab=bl1}
N 700 1050 700 1140 {lab=bl1}
N 900 -100 900 0 {lab=bl2}
N 900 0 900 150 {lab=bl2}
N 900 150 900 300 {lab=bl2}
N 900 300 900 450 {lab=bl2}
N 900 450 900 600 {lab=bl2}
N 900 600 900 750 {lab=bl2}
N 900 750 900 900 {lab=bl2}
N 900 900 900 1050 {lab=bl2}
N 900 1050 900 1140 {lab=bl2}
N 1100 -100 1100 0 {lab=bl3}
N 1100 0 1100 150 {lab=bl3}
N 1100 150 1100 300 {lab=bl3}
N 1100 300 1100 450 {lab=bl3}
N 1100 450 1100 600 {lab=bl3}
N 1100 600 1100 750 {lab=bl3}
N 1100 750 1100 900 {lab=bl3}
N 1100 900 1100 1050 {lab=bl3}
N 1100 1050 1100 1140 {lab=bl3}
N 1300 -100 1300 0 {lab=bl4}
N 1300 0 1300 150 {lab=bl4}
N 1300 150 1300 300 {lab=bl4}
N 1300 300 1300 450 {lab=bl4}
N 1300 450 1300 600 {lab=bl4}
N 1300 600 1300 750 {lab=bl4}
N 1300 750 1300 900 {lab=bl4}
N 1300 900 1300 1050 {lab=bl4}
N 1300 1050 1300 1140 {lab=bl4}
N 1500 -100 1500 0 {lab=bl5}
N 1500 0 1500 150 {lab=bl5}
N 1500 150 1500 300 {lab=bl5}
N 1500 300 1500 450 {lab=bl5}
N 1500 450 1500 600 {lab=bl5}
N 1500 600 1500 750 {lab=bl5}
N 1500 750 1500 900 {lab=bl5}
N 1500 900 1500 1050 {lab=bl5}
N 1500 1050 1500 1140 {lab=bl5}
N 1700 -100 1700 0 {lab=bl6}
N 1700 0 1700 150 {lab=bl6}
N 1700 150 1700 300 {lab=bl6}
N 1700 300 1700 450 {lab=bl6}
N 1700 450 1700 600 {lab=bl6}
N 1700 600 1700 750 {lab=bl6}
N 1700 750 1700 900 {lab=bl6}
N 1700 900 1700 1050 {lab=bl6}
N 1700 1050 1700 1140 {lab=bl6}
N 1900 -100 1900 0 {lab=bl7}
N 1900 0 1900 150 {lab=bl7}
N 1900 150 1900 300 {lab=bl7}
N 1900 300 1900 450 {lab=bl7}
N 1900 450 1900 600 {lab=bl7}
N 1900 600 1900 750 {lab=bl7}
N 1900 750 1900 900 {lab=bl7}
N 1900 900 1900 1050 {lab=bl7}
N 1900 1050 1900 1140 {lab=bl7}
N 380 -30 380 0 {lab=wl0}
N 380 0 500 0 {lab=wl0}
N 500 0 700 0 {lab=wl0}
N 700 0 900 0 {lab=wl0}
N 900 0 1100 0 {lab=wl0}
N 1100 0 1300 0 {lab=wl0}
N 1300 0 1500 0 {lab=wl0}
N 1500 0 1700 0 {lab=wl0}
N 1700 0 1900 0 {lab=wl0}
N 380 120 380 150 {lab=wl1}
N 380 150 500 150 {lab=wl1}
N 500 150 700 150 {lab=wl1}
N 700 150 900 150 {lab=wl1}
N 900 150 1100 150 {lab=wl1}
N 1100 150 1300 150 {lab=wl1}
N 1300 150 1500 150 {lab=wl1}
N 1500 150 1700 150 {lab=wl1}
N 1700 150 1900 150 {lab=wl1}
N 380 270 380 300 {lab=wl2}
N 380 300 500 300 {lab=wl2}
N 500 300 700 300 {lab=wl2}
N 700 300 900 300 {lab=wl2}
N 900 300 1100 300 {lab=wl2}
N 1100 300 1300 300 {lab=wl2}
N 1300 300 1500 300 {lab=wl2}
N 1500 300 1700 300 {lab=wl2}
N 1700 300 1900 300 {lab=wl2}
N 380 420 380 450 {lab=wl3}
N 380 450 500 450 {lab=wl3}
N 500 450 700 450 {lab=wl3}
N 700 450 900 450 {lab=wl3}
N 900 450 1100 450 {lab=wl3}
N 1100 450 1300 450 {lab=wl3}
N 1300 450 1500 450 {lab=wl3}
N 1500 450 1700 450 {lab=wl3}
N 1700 450 1900 450 {lab=wl3}
N 380 570 380 600 {lab=wl4}
N 380 600 500 600 {lab=wl4}
N 500 600 700 600 {lab=wl4}
N 700 600 900 600 {lab=wl4}
N 900 600 1100 600 {lab=wl4}
N 1100 600 1300 600 {lab=wl4}
N 1300 600 1500 600 {lab=wl4}
N 1500 600 1700 600 {lab=wl4}
N 1700 600 1900 600 {lab=wl4}
N 380 720 380 750 {lab=wl5}
N 380 750 500 750 {lab=wl5}
N 500 750 700 750 {lab=wl5}
N 700 750 900 750 {lab=wl5}
N 900 750 1100 750 {lab=wl5}
N 1100 750 1300 750 {lab=wl5}
N 1300 750 1500 750 {lab=wl5}
N 1500 750 1700 750 {lab=wl5}
N 1700 750 1900 750 {lab=wl5}
N 380 870 380 900 {lab=wl6}
N 380 900 500 900 {lab=wl6}
N 500 900 700 900 {lab=wl6}
N 700 900 900 900 {lab=wl6}
N 900 900 1100 900 {lab=wl6}
N 1100 900 1300 900 {lab=wl6}
N 1300 900 1500 900 {lab=wl6}
N 1500 900 1700 900 {lab=wl6}
N 1700 900 1900 900 {lab=wl6}
N 380 1020 380 1050 {lab=wl7}
N 380 1050 500 1050 {lab=wl7}
N 500 1050 700 1050 {lab=wl7}
N 700 1050 900 1050 {lab=wl7}
N 900 1050 1100 1050 {lab=wl7}
N 1100 1050 1300 1050 {lab=wl7}
N 1300 1050 1500 1050 {lab=wl7}
N 1500 1050 1700 1050 {lab=wl7}
N 1700 1050 1900 1050 {lab=wl7}
N 260 -30 260 0 {lab=wwl0}
N 260 0 500 0 {lab=wwl0}
N 500 0 700 0 {lab=wwl0}
N 700 0 900 0 {lab=wwl0}
N 900 0 1100 0 {lab=wwl0}
N 1100 0 1300 0 {lab=wwl0}
N 1300 0 1500 0 {lab=wwl0}
N 1500 0 1700 0 {lab=wwl0}
N 1700 0 1900 0 {lab=wwl0}
N 260 120 260 150 {lab=wwl1}
N 260 150 500 150 {lab=wwl1}
N 500 150 700 150 {lab=wwl1}
N 700 150 900 150 {lab=wwl1}
N 900 150 1100 150 {lab=wwl1}
N 1100 150 1300 150 {lab=wwl1}
N 1300 150 1500 150 {lab=wwl1}
N 1500 150 1700 150 {lab=wwl1}
N 1700 150 1900 150 {lab=wwl1}
N 260 270 260 300 {lab=wwl2}
N 260 300 500 300 {lab=wwl2}
N 500 300 700 300 {lab=wwl2}
N 700 300 900 300 {lab=wwl2}
N 900 300 1100 300 {lab=wwl2}
N 1100 300 1300 300 {lab=wwl2}
N 1300 300 1500 300 {lab=wwl2}
N 1500 300 1700 300 {lab=wwl2}
N 1700 300 1900 300 {lab=wwl2}
N 260 420 260 450 {lab=wwl3}
N 260 450 500 450 {lab=wwl3}
N 500 450 700 450 {lab=wwl3}
N 700 450 900 450 {lab=wwl3}
N 900 450 1100 450 {lab=wwl3}
N 1100 450 1300 450 {lab=wwl3}
N 1300 450 1500 450 {lab=wwl3}
N 1500 450 1700 450 {lab=wwl3}
N 1700 450 1900 450 {lab=wwl3}
N 260 570 260 600 {lab=wwl4}
N 260 600 500 600 {lab=wwl4}
N 500 600 700 600 {lab=wwl4}
N 700 600 900 600 {lab=wwl4}
N 900 600 1100 600 {lab=wwl4}
N 1100 600 1300 600 {lab=wwl4}
N 1300 600 1500 600 {lab=wwl4}
N 1500 600 1700 600 {lab=wwl4}
N 1700 600 1900 600 {lab=wwl4}
N 260 720 260 750 {lab=wwl5}
N 260 750 500 750 {lab=wwl5}
N 500 750 700 750 {lab=wwl5}
N 700 750 900 750 {lab=wwl5}
N 900 750 1100 750 {lab=wwl5}
N 1100 750 1300 750 {lab=wwl5}
N 1300 750 1500 750 {lab=wwl5}
N 1500 750 1700 750 {lab=wwl5}
N 1700 750 1900 750 {lab=wwl5}
N 260 870 260 900 {lab=wwl6}
N 260 900 500 900 {lab=wwl6}
N 500 900 700 900 {lab=wwl6}
N 700 900 900 900 {lab=wwl6}
N 900 900 1100 900 {lab=wwl6}
N 1100 900 1300 900 {lab=wwl6}
N 1300 900 1500 900 {lab=wwl6}
N 1500 900 1700 900 {lab=wwl6}
N 1700 900 1900 900 {lab=wwl6}
N 260 1020 260 1050 {lab=wwl7}
N 260 1050 500 1050 {lab=wwl7}
N 500 1050 700 1050 {lab=wwl7}
N 700 1050 900 1050 {lab=wwl7}
N 900 1050 1100 1050 {lab=wwl7}
N 1100 1050 1300 1050 {lab=wwl7}
N 1300 1050 1500 1050 {lab=wwl7}
N 1500 1050 1700 1050 {lab=wwl7}
N 1700 1050 1900 1050 {lab=wwl7}
N 500 0 500 150 {lab=blb0}
N 500 150 500 300 {lab=blb0}
N 500 300 500 450 {lab=blb0}
N 500 450 500 600 {lab=blb0}
N 500 600 500 750 {lab=blb0}
N 500 750 500 900 {lab=blb0}
N 500 900 500 1050 {lab=blb0}
N 700 0 700 150 {lab=blb1}
N 700 150 700 300 {lab=blb1}
N 700 300 700 450 {lab=blb1}
N 700 450 700 600 {lab=blb1}
N 700 600 700 750 {lab=blb1}
N 700 750 700 900 {lab=blb1}
N 700 900 700 1050 {lab=blb1}
N 900 0 900 150 {lab=blb2}
N 900 150 900 300 {lab=blb2}
N 900 300 900 450 {lab=blb2}
N 900 450 900 600 {lab=blb2}
N 900 600 900 750 {lab=blb2}
N 900 750 900 900 {lab=blb2}
N 900 900 900 1050 {lab=blb2}
N 1100 0 1100 150 {lab=blb3}
N 1100 150 1100 300 {lab=blb3}
N 1100 300 1100 450 {lab=blb3}
N 1100 450 1100 600 {lab=blb3}
N 1100 600 1100 750 {lab=blb3}
N 1100 750 1100 900 {lab=blb3}
N 1100 900 1100 1050 {lab=blb3}
N 1300 0 1300 150 {lab=blb4}
N 1300 150 1300 300 {lab=blb4}
N 1300 300 1300 450 {lab=blb4}
N 1300 450 1300 600 {lab=blb4}
N 1300 600 1300 750 {lab=blb4}
N 1300 750 1300 900 {lab=blb4}
N 1300 900 1300 1050 {lab=blb4}
N 1500 0 1500 150 {lab=blb5}
N 1500 150 1500 300 {lab=blb5}
N 1500 300 1500 450 {lab=blb5}
N 1500 450 1500 600 {lab=blb5}
N 1500 600 1500 750 {lab=blb5}
N 1500 750 1500 900 {lab=blb5}
N 1500 900 1500 1050 {lab=blb5}
N 1700 0 1700 150 {lab=blb6}
N 1700 150 1700 300 {lab=blb6}
N 1700 300 1700 450 {lab=blb6}
N 1700 450 1700 600 {lab=blb6}
N 1700 600 1700 750 {lab=blb6}
N 1700 750 1700 900 {lab=blb6}
N 1700 900 1700 1050 {lab=blb6}
N 1900 0 1900 150 {lab=blb7}
N 1900 150 1900 300 {lab=blb7}
N 1900 300 1900 450 {lab=blb7}
N 1900 450 1900 600 {lab=blb7}
N 1900 600 1900 750 {lab=blb7}
N 1900 750 1900 900 {lab=blb7}
N 1900 900 1900 1050 {lab=blb7}
C {devices/vdd.sym} 500 1340 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 150 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 300 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 450 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 750 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 900 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 700 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1300 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1700 1050 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1900 1050 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 500 1400 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 640 1400 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 780 1400 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1100 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1300 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1500 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1900 1200 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 480 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 780 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 930 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 1080 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 480 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 780 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 930 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 1080 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 640 1340 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 300 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 450 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 750 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 900 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 700 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1300 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1700 1050 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1900 1050 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 780 1340 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_q_r0c0 sig_type=std_logic lab=q_r0c0}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_qb_r0c0 sig_type=std_logic lab=qb_r0c0}
C {devices/lab_pin.sym} 700 0 0 0 {name=l_q_r0c1 sig_type=std_logic lab=q_r0c1}
C {devices/lab_pin.sym} 700 0 0 0 {name=l_qb_r0c1 sig_type=std_logic lab=qb_r0c1}
C {devices/lab_pin.sym} 900 0 0 0 {name=l_q_r0c2 sig_type=std_logic lab=q_r0c2}
C {devices/lab_pin.sym} 900 0 0 0 {name=l_qb_r0c2 sig_type=std_logic lab=qb_r0c2}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_q_r0c3 sig_type=std_logic lab=q_r0c3}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_qb_r0c3 sig_type=std_logic lab=qb_r0c3}
C {devices/lab_pin.sym} 1300 0 0 0 {name=l_q_r0c4 sig_type=std_logic lab=q_r0c4}
C {devices/lab_pin.sym} 1300 0 0 0 {name=l_qb_r0c4 sig_type=std_logic lab=qb_r0c4}
C {devices/lab_pin.sym} 1500 0 0 0 {name=l_q_r0c5 sig_type=std_logic lab=q_r0c5}
C {devices/lab_pin.sym} 1500 0 0 0 {name=l_qb_r0c5 sig_type=std_logic lab=qb_r0c5}
C {devices/lab_pin.sym} 1700 0 0 0 {name=l_q_r0c6 sig_type=std_logic lab=q_r0c6}
C {devices/lab_pin.sym} 1700 0 0 0 {name=l_qb_r0c6 sig_type=std_logic lab=qb_r0c6}
C {devices/lab_pin.sym} 1900 0 0 0 {name=l_q_r0c7 sig_type=std_logic lab=q_r0c7}
C {devices/lab_pin.sym} 1900 0 0 0 {name=l_qb_r0c7 sig_type=std_logic lab=qb_r0c7}
C {devices/lab_pin.sym} 500 150 0 0 {name=l_q_r1c0 sig_type=std_logic lab=q_r1c0}
C {devices/lab_pin.sym} 500 150 0 0 {name=l_qb_r1c0 sig_type=std_logic lab=qb_r1c0}
C {devices/lab_pin.sym} 700 150 0 0 {name=l_q_r1c1 sig_type=std_logic lab=q_r1c1}
C {devices/lab_pin.sym} 700 150 0 0 {name=l_qb_r1c1 sig_type=std_logic lab=qb_r1c1}
C {devices/lab_pin.sym} 900 150 0 0 {name=l_q_r1c2 sig_type=std_logic lab=q_r1c2}
C {devices/lab_pin.sym} 900 150 0 0 {name=l_qb_r1c2 sig_type=std_logic lab=qb_r1c2}
C {devices/lab_pin.sym} 1100 150 0 0 {name=l_q_r1c3 sig_type=std_logic lab=q_r1c3}
C {devices/lab_pin.sym} 1100 150 0 0 {name=l_qb_r1c3 sig_type=std_logic lab=qb_r1c3}
C {devices/lab_pin.sym} 1300 150 0 0 {name=l_q_r1c4 sig_type=std_logic lab=q_r1c4}
C {devices/lab_pin.sym} 1300 150 0 0 {name=l_qb_r1c4 sig_type=std_logic lab=qb_r1c4}
C {devices/lab_pin.sym} 1500 150 0 0 {name=l_q_r1c5 sig_type=std_logic lab=q_r1c5}
C {devices/lab_pin.sym} 1500 150 0 0 {name=l_qb_r1c5 sig_type=std_logic lab=qb_r1c5}
C {devices/lab_pin.sym} 1700 150 0 0 {name=l_q_r1c6 sig_type=std_logic lab=q_r1c6}
C {devices/lab_pin.sym} 1700 150 0 0 {name=l_qb_r1c6 sig_type=std_logic lab=qb_r1c6}
C {devices/lab_pin.sym} 1900 150 0 0 {name=l_q_r1c7 sig_type=std_logic lab=q_r1c7}
C {devices/lab_pin.sym} 1900 150 0 0 {name=l_qb_r1c7 sig_type=std_logic lab=qb_r1c7}
C {devices/lab_pin.sym} 500 300 0 0 {name=l_q_r2c0 sig_type=std_logic lab=q_r2c0}
C {devices/lab_pin.sym} 500 300 0 0 {name=l_qb_r2c0 sig_type=std_logic lab=qb_r2c0}
C {devices/lab_pin.sym} 700 300 0 0 {name=l_q_r2c1 sig_type=std_logic lab=q_r2c1}
C {devices/lab_pin.sym} 700 300 0 0 {name=l_qb_r2c1 sig_type=std_logic lab=qb_r2c1}
C {devices/lab_pin.sym} 900 300 0 0 {name=l_q_r2c2 sig_type=std_logic lab=q_r2c2}
C {devices/lab_pin.sym} 900 300 0 0 {name=l_qb_r2c2 sig_type=std_logic lab=qb_r2c2}
C {devices/lab_pin.sym} 1100 300 0 0 {name=l_q_r2c3 sig_type=std_logic lab=q_r2c3}
C {devices/lab_pin.sym} 1100 300 0 0 {name=l_qb_r2c3 sig_type=std_logic lab=qb_r2c3}
C {devices/lab_pin.sym} 1300 300 0 0 {name=l_q_r2c4 sig_type=std_logic lab=q_r2c4}
C {devices/lab_pin.sym} 1300 300 0 0 {name=l_qb_r2c4 sig_type=std_logic lab=qb_r2c4}
C {devices/lab_pin.sym} 1500 300 0 0 {name=l_q_r2c5 sig_type=std_logic lab=q_r2c5}
C {devices/lab_pin.sym} 1500 300 0 0 {name=l_qb_r2c5 sig_type=std_logic lab=qb_r2c5}
C {devices/lab_pin.sym} 1700 300 0 0 {name=l_q_r2c6 sig_type=std_logic lab=q_r2c6}
C {devices/lab_pin.sym} 1700 300 0 0 {name=l_qb_r2c6 sig_type=std_logic lab=qb_r2c6}
C {devices/lab_pin.sym} 1900 300 0 0 {name=l_q_r2c7 sig_type=std_logic lab=q_r2c7}
C {devices/lab_pin.sym} 1900 300 0 0 {name=l_qb_r2c7 sig_type=std_logic lab=qb_r2c7}
C {devices/lab_pin.sym} 500 450 0 0 {name=l_q_r3c0 sig_type=std_logic lab=q_r3c0}
C {devices/lab_pin.sym} 500 450 0 0 {name=l_qb_r3c0 sig_type=std_logic lab=qb_r3c0}
C {devices/lab_pin.sym} 700 450 0 0 {name=l_q_r3c1 sig_type=std_logic lab=q_r3c1}
C {devices/lab_pin.sym} 700 450 0 0 {name=l_qb_r3c1 sig_type=std_logic lab=qb_r3c1}
C {devices/lab_pin.sym} 900 450 0 0 {name=l_q_r3c2 sig_type=std_logic lab=q_r3c2}
C {devices/lab_pin.sym} 900 450 0 0 {name=l_qb_r3c2 sig_type=std_logic lab=qb_r3c2}
C {devices/lab_pin.sym} 1100 450 0 0 {name=l_q_r3c3 sig_type=std_logic lab=q_r3c3}
C {devices/lab_pin.sym} 1100 450 0 0 {name=l_qb_r3c3 sig_type=std_logic lab=qb_r3c3}
C {devices/lab_pin.sym} 1300 450 0 0 {name=l_q_r3c4 sig_type=std_logic lab=q_r3c4}
C {devices/lab_pin.sym} 1300 450 0 0 {name=l_qb_r3c4 sig_type=std_logic lab=qb_r3c4}
C {devices/lab_pin.sym} 1500 450 0 0 {name=l_q_r3c5 sig_type=std_logic lab=q_r3c5}
C {devices/lab_pin.sym} 1500 450 0 0 {name=l_qb_r3c5 sig_type=std_logic lab=qb_r3c5}
C {devices/lab_pin.sym} 1700 450 0 0 {name=l_q_r3c6 sig_type=std_logic lab=q_r3c6}
C {devices/lab_pin.sym} 1700 450 0 0 {name=l_qb_r3c6 sig_type=std_logic lab=qb_r3c6}
C {devices/lab_pin.sym} 1900 450 0 0 {name=l_q_r3c7 sig_type=std_logic lab=q_r3c7}
C {devices/lab_pin.sym} 1900 450 0 0 {name=l_qb_r3c7 sig_type=std_logic lab=qb_r3c7}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_q_r4c0 sig_type=std_logic lab=q_r4c0}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_qb_r4c0 sig_type=std_logic lab=qb_r4c0}
C {devices/lab_pin.sym} 700 600 0 0 {name=l_q_r4c1 sig_type=std_logic lab=q_r4c1}
C {devices/lab_pin.sym} 700 600 0 0 {name=l_qb_r4c1 sig_type=std_logic lab=qb_r4c1}
C {devices/lab_pin.sym} 900 600 0 0 {name=l_q_r4c2 sig_type=std_logic lab=q_r4c2}
C {devices/lab_pin.sym} 900 600 0 0 {name=l_qb_r4c2 sig_type=std_logic lab=qb_r4c2}
C {devices/lab_pin.sym} 1100 600 0 0 {name=l_q_r4c3 sig_type=std_logic lab=q_r4c3}
C {devices/lab_pin.sym} 1100 600 0 0 {name=l_qb_r4c3 sig_type=std_logic lab=qb_r4c3}
C {devices/lab_pin.sym} 1300 600 0 0 {name=l_q_r4c4 sig_type=std_logic lab=q_r4c4}
C {devices/lab_pin.sym} 1300 600 0 0 {name=l_qb_r4c4 sig_type=std_logic lab=qb_r4c4}
C {devices/lab_pin.sym} 1500 600 0 0 {name=l_q_r4c5 sig_type=std_logic lab=q_r4c5}
C {devices/lab_pin.sym} 1500 600 0 0 {name=l_qb_r4c5 sig_type=std_logic lab=qb_r4c5}
C {devices/lab_pin.sym} 1700 600 0 0 {name=l_q_r4c6 sig_type=std_logic lab=q_r4c6}
C {devices/lab_pin.sym} 1700 600 0 0 {name=l_qb_r4c6 sig_type=std_logic lab=qb_r4c6}
C {devices/lab_pin.sym} 1900 600 0 0 {name=l_q_r4c7 sig_type=std_logic lab=q_r4c7}
C {devices/lab_pin.sym} 1900 600 0 0 {name=l_qb_r4c7 sig_type=std_logic lab=qb_r4c7}
C {devices/lab_pin.sym} 500 750 0 0 {name=l_q_r5c0 sig_type=std_logic lab=q_r5c0}
C {devices/lab_pin.sym} 500 750 0 0 {name=l_qb_r5c0 sig_type=std_logic lab=qb_r5c0}
C {devices/lab_pin.sym} 700 750 0 0 {name=l_q_r5c1 sig_type=std_logic lab=q_r5c1}
C {devices/lab_pin.sym} 700 750 0 0 {name=l_qb_r5c1 sig_type=std_logic lab=qb_r5c1}
C {devices/lab_pin.sym} 900 750 0 0 {name=l_q_r5c2 sig_type=std_logic lab=q_r5c2}
C {devices/lab_pin.sym} 900 750 0 0 {name=l_qb_r5c2 sig_type=std_logic lab=qb_r5c2}
C {devices/lab_pin.sym} 1100 750 0 0 {name=l_q_r5c3 sig_type=std_logic lab=q_r5c3}
C {devices/lab_pin.sym} 1100 750 0 0 {name=l_qb_r5c3 sig_type=std_logic lab=qb_r5c3}
C {devices/lab_pin.sym} 1300 750 0 0 {name=l_q_r5c4 sig_type=std_logic lab=q_r5c4}
C {devices/lab_pin.sym} 1300 750 0 0 {name=l_qb_r5c4 sig_type=std_logic lab=qb_r5c4}
C {devices/lab_pin.sym} 1500 750 0 0 {name=l_q_r5c5 sig_type=std_logic lab=q_r5c5}
C {devices/lab_pin.sym} 1500 750 0 0 {name=l_qb_r5c5 sig_type=std_logic lab=qb_r5c5}
C {devices/lab_pin.sym} 1700 750 0 0 {name=l_q_r5c6 sig_type=std_logic lab=q_r5c6}
C {devices/lab_pin.sym} 1700 750 0 0 {name=l_qb_r5c6 sig_type=std_logic lab=qb_r5c6}
C {devices/lab_pin.sym} 1900 750 0 0 {name=l_q_r5c7 sig_type=std_logic lab=q_r5c7}
C {devices/lab_pin.sym} 1900 750 0 0 {name=l_qb_r5c7 sig_type=std_logic lab=qb_r5c7}
C {devices/lab_pin.sym} 500 900 0 0 {name=l_q_r6c0 sig_type=std_logic lab=q_r6c0}
C {devices/lab_pin.sym} 500 900 0 0 {name=l_qb_r6c0 sig_type=std_logic lab=qb_r6c0}
C {devices/lab_pin.sym} 700 900 0 0 {name=l_q_r6c1 sig_type=std_logic lab=q_r6c1}
C {devices/lab_pin.sym} 700 900 0 0 {name=l_qb_r6c1 sig_type=std_logic lab=qb_r6c1}
C {devices/lab_pin.sym} 900 900 0 0 {name=l_q_r6c2 sig_type=std_logic lab=q_r6c2}
C {devices/lab_pin.sym} 900 900 0 0 {name=l_qb_r6c2 sig_type=std_logic lab=qb_r6c2}
C {devices/lab_pin.sym} 1100 900 0 0 {name=l_q_r6c3 sig_type=std_logic lab=q_r6c3}
C {devices/lab_pin.sym} 1100 900 0 0 {name=l_qb_r6c3 sig_type=std_logic lab=qb_r6c3}
C {devices/lab_pin.sym} 1300 900 0 0 {name=l_q_r6c4 sig_type=std_logic lab=q_r6c4}
C {devices/lab_pin.sym} 1300 900 0 0 {name=l_qb_r6c4 sig_type=std_logic lab=qb_r6c4}
C {devices/lab_pin.sym} 1500 900 0 0 {name=l_q_r6c5 sig_type=std_logic lab=q_r6c5}
C {devices/lab_pin.sym} 1500 900 0 0 {name=l_qb_r6c5 sig_type=std_logic lab=qb_r6c5}
C {devices/lab_pin.sym} 1700 900 0 0 {name=l_q_r6c6 sig_type=std_logic lab=q_r6c6}
C {devices/lab_pin.sym} 1700 900 0 0 {name=l_qb_r6c6 sig_type=std_logic lab=qb_r6c6}
C {devices/lab_pin.sym} 1900 900 0 0 {name=l_q_r6c7 sig_type=std_logic lab=q_r6c7}
C {devices/lab_pin.sym} 1900 900 0 0 {name=l_qb_r6c7 sig_type=std_logic lab=qb_r6c7}
C {devices/lab_pin.sym} 500 1050 0 0 {name=l_q_r7c0 sig_type=std_logic lab=q_r7c0}
C {devices/lab_pin.sym} 500 1050 0 0 {name=l_qb_r7c0 sig_type=std_logic lab=qb_r7c0}
C {devices/lab_pin.sym} 700 1050 0 0 {name=l_q_r7c1 sig_type=std_logic lab=q_r7c1}
C {devices/lab_pin.sym} 700 1050 0 0 {name=l_qb_r7c1 sig_type=std_logic lab=qb_r7c1}
C {devices/lab_pin.sym} 900 1050 0 0 {name=l_q_r7c2 sig_type=std_logic lab=q_r7c2}
C {devices/lab_pin.sym} 900 1050 0 0 {name=l_qb_r7c2 sig_type=std_logic lab=qb_r7c2}
C {devices/lab_pin.sym} 1100 1050 0 0 {name=l_q_r7c3 sig_type=std_logic lab=q_r7c3}
C {devices/lab_pin.sym} 1100 1050 0 0 {name=l_qb_r7c3 sig_type=std_logic lab=qb_r7c3}
C {devices/lab_pin.sym} 1300 1050 0 0 {name=l_q_r7c4 sig_type=std_logic lab=q_r7c4}
C {devices/lab_pin.sym} 1300 1050 0 0 {name=l_qb_r7c4 sig_type=std_logic lab=qb_r7c4}
C {devices/lab_pin.sym} 1500 1050 0 0 {name=l_q_r7c5 sig_type=std_logic lab=q_r7c5}
C {devices/lab_pin.sym} 1500 1050 0 0 {name=l_qb_r7c5 sig_type=std_logic lab=qb_r7c5}
C {devices/lab_pin.sym} 1700 1050 0 0 {name=l_q_r7c6 sig_type=std_logic lab=q_r7c6}
C {devices/lab_pin.sym} 1700 1050 0 0 {name=l_qb_r7c6 sig_type=std_logic lab=qb_r7c6}
C {devices/lab_pin.sym} 1900 1050 0 0 {name=l_q_r7c7 sig_type=std_logic lab=q_r7c7}
C {devices/lab_pin.sym} 1900 1050 0 0 {name=l_qb_r7c7 sig_type=std_logic lab=qb_r7c7}
