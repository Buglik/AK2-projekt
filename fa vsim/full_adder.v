/* Verilog module written by vlog2Verilog (qflow) */

module full_adder(
    input i_carry,
    input i_x,
    input i_y,
    output o_carry,
    output o_sum
);

wire vdd = 1'b1;
wire gnd = 1'b0;

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
wire _2_ ;

OR2X2 _10_ (
    .A(i_y),
    .B(i_x),
    .Y(_4_)
);

NAND2X1 _11_ (
    .A(i_y),
    .B(i_x),
    .Y(_5_)
);

NAND3X1 _12_ (
    .A(_3_),
    .B(_5_),
    .C(_4_),
    .Y(_6_)
);

NOR2X1 _13_ (
    .A(i_y),
    .B(i_x),
    .Y(_0_)
);

AND2X2 _14_ (
    .A(i_y),
    .B(i_x),
    .Y(_1_)
);

OAI21X1 _15_ (
    .A(_1_),
    .B(_0_),
    .C(i_carry),
    .Y(_2_)
);

NAND2X1 _16_ (
    .A(_2_),
    .B(_6_),
    .Y(_8_)
);

OAI21X1 _17_ (
    .A(_0_),
    .B(_3_),
    .C(_5_),
    .Y(_7_)
);

BUFX2 _18_ (
    .A(_7_),
    .Y(o_carry)
);

BUFX2 _19_ (
    .A(_8_),
    .Y(o_sum)
);

INVX1 _9_ (
    .A(i_carry),
    .Y(_3_)
);

endmodule
