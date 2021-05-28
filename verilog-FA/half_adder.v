module half_adder 
(
  input wire i_a, i_b,
  output wire o_sum, o_carry
);

  assign o_sum = i_a ^ i_b;
  assign o_carry = i_a & i_b;

endmodule
