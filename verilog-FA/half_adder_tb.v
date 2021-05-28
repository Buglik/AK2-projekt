`include "half_adder.v"

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module half_adder_tb;

  reg x1, x2;
  wire sum, carry;

  localparam period = 20;  

  half_adder half_adder_inst (
    .i_a(x1),
    .i_b(x2),
    .o_sum(sum),
    .o_carry(carry)
  );
 
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars(1, half_adder_tb);
      x1 = 0;
      x2 = 0;
      #period;
      x1 = 0;
      x2 = 1;
      #period;
      x1 = 1;
      x2 = 0;
      #period;
      x1 = 1;
      x2 = 1;
      #period;
    end 

endmodule
