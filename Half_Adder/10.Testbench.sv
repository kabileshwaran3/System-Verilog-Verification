// Code your testbench here
// or browse Examples
`include "test.sv"
`include "interface.sv"

module tb;
  inter interf();
  test tst(interf);
  half_adder ha (interf);
    initial begin
    $dumpfile("dumpvars.vcd");
    $dumpvars();
  end
  
endmodule
  
  
  https://www.edaplayground.com/x/b8SB
