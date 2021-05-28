module full_adder 
(
  input wire i_x, i_y, i_carry,
  output wire o_sum, o_carry
);

  assign o_sum = i_x ^ i_y ^ i_carry;
  assign o_carry = i_x & i_y | (i_x ^ i_y) & i_carry;

endmodule
