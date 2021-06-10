// `include "../libs/freepdk-45nm/stdcells.v"
`include "../libs/osu018/osu018_stdcells.v"
`include "./build/full_adder_synth.v"
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module full_adder_tb;

  reg x, y, c;
  wire sum, o_carry;

  localparam period = 20;  

  full_adder adder_inst (
    .i_x(x),
    .i_y(y),
    .i_carry(c),
    .o_sum(sum),
    .o_carry(o_carry)
  );
 
  initial
    begin
      $dumpfile("test_bench.vcd");
      $dumpvars(1, full_adder_tb);
      x = 0; y = 0; c = 0; #period; 
      x = 0; y = 0; c = 1; #period;
      x = 0; y = 1; c = 0; #period; 
      x = 0; y = 1; c = 1; #period; 
      x = 1; y = 0; c = 0; #period; 
      x = 1; y = 0; c = 1; #period; 
      x = 1; y = 1; c = 0; #period; 
      x = 1; y = 1; c = 1; #period; 
    end 

  // initial begin
  //   		 $monitor("x=%b,y=%b,c=%b,oS=%b,oC=%b \n",x,y,c,sum,o_carry );
  // end
endmodule
