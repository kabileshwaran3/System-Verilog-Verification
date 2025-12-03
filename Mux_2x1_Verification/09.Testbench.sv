// Code your testbench here
// or browse Examples

`include "test.sv"
`include "interface.sv"

module tb;
  interf interff();
  test tst(interff);
  
  mux2x1 dut(.d0(interff.d0),.d1(interff.d1),.s(interff.s),.y(interff.y));
  initial begin
    $dumpfile("dumpvars.vcd");
    $dumpvars;
     #300;
   
  end
endmodule
