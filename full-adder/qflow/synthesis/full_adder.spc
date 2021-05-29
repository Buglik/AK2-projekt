*SPICE netlist created from BLIF module full_adder by blif2BSpice
.include /usr/share/qflow/tech/osu018/osu018_stdcells.sp
.subckt full_adder vdd gnd i_x i_y i_carry o_sum o_carry 
XOR2X2_1 _4_ i_x vdd gnd i_y OR2X2
XNAND2X1_1 vdd _5_ gnd i_y i_x NAND2X1
XNAND3X1_1 _5_ vdd gnd _3_ _4_ _6_ NAND3X1
XNOR2X1_1 vdd i_x gnd _0_ i_y NOR2X1
XAND2X2_1 vdd gnd i_y i_x _1_ AND2X2
XOAI21X1_1 gnd vdd _1_ _0_ _2_ i_carry OAI21X1
XNAND2X1_2 vdd _8_ gnd _2_ _6_ NAND2X1
XOAI21X1_2 gnd vdd _0_ _3_ _7_ _5_ OAI21X1
XBUFX2_1 vdd gnd _7_ o_carry BUFX2
XBUFX2_2 vdd gnd _8_ o_sum BUFX2
XINVX1_1 i_carry _3_ vdd gnd INVX1
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
.ends full_adder
 
