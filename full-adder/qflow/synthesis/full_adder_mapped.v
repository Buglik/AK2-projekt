/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:1" *)
module full_adder(i_x, i_y, i_carry, o_sum, o_carry);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  wire _7_;
  wire _8_;
  (* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:3" *)
  input i_carry;
  (* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:3" *)
  input i_x;
  (* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:3" *)
  input i_y;
  (* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:4" *)
  output o_carry;
  (* src = "/home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v:4" *)
  output o_sum;
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
  (* keep = 32'd1 *)
  BUFX2 _18_ (
    .A(_7_),
    .Y(o_carry)
  );
  (* keep = 32'd1 *)
  BUFX2 _19_ (
    .A(_8_),
    .Y(o_sum)
  );
  INVX1 _9_ (
    .A(i_carry),
    .Y(_3_)
  );
endmodule
