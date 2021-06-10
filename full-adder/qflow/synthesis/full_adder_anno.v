/* Verilog module written by DEF2Verilog (qflow) */
module full_adder (
    input i_carry,
    input i_x,
    input i_y,
    output o_carry,
    output o_sum
);

wire _7_ ;
wire i_x ;
wire i_y ;
wire _4_ ;
wire _1_ ;
wire o_sum ;
wire i_carry ;
wire _6_ ;
wire _3_ ;
wire _0_ ;
wire o_carry ;
wire _8_ ;
wire _5_ ;
wire gnd = 1'b0 ;
wire _2_ ;
wire vdd = 1'b1 ;

BUFX2 _19_ (
    .A(_8_),
    .Y(o_sum)
);

NAND2X1 _16_ (
    .A(_2_),
    .B(_6_),
    .Y(_8_)
);

NOR2X1 _13_ (
    .A(i_y),
    .B(i_x),
    .Y(_0_)
);

FILL SFILL840x50 (
);

OR2X2 _10_ (
    .A(i_y),
    .B(i_x),
    .Y(_4_)
);

FILL SFILL920x50 (
);

FILL SFILL760x50 (
);

BUFX2 _18_ (
    .A(_7_),
    .Y(o_carry)
);

OAI21X1 _15_ (
    .A(_1_),
    .B(_0_),
    .C(i_carry),
    .Y(_2_)
);

INVX1 _9_ (
    .A(i_carry),
    .Y(_3_)
);

NAND3X1 _12_ (
    .A(_3_),
    .B(_5_),
    .C(_4_),
    .Y(_6_)
);

FILL SFILL2520x50 (
);

OAI21X1 _17_ (
    .A(_0_),
    .B(_3_),
    .C(_5_),
    .Y(_7_)
);

AND2X2 _14_ (
    .A(i_y),
    .B(i_x),
    .Y(_1_)
);

FILL SFILL2600x50 (
);

NAND2X1 _11_ (
    .A(i_y),
    .B(i_x),
    .Y(_5_)
);

FILL SFILL2440x50 (
);

endmodule
