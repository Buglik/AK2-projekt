* supply voltages
.global Vss Vdd
Vss Vss 0 DC 0
Vdd Vdd 0 DC 3

* simple transistor model
.MODEL cmosn NMOS LEVEL=1 VT0=0.7 KP=110U GAMMA=0.4 LAMBDA=0.04 PHI=0.7
.MODEL cmosp PMOS LEVEL=1 VT0=-0.7 KP=50U GAMMA=0.57 LAMBDA=0.05 PHI=0.8

* load design and library
.include ../libs/osu018/osu018_stdcells.lib
.include ./build/synth.sp


.end