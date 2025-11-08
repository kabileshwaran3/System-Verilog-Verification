// Code your testbench here
// or browse Examples

`include "interface.sv"
`include "test.sv"

module tb;
  
  inter interf();
  test ttf(interf);
  
  
  up_down_counter uut(.clk(interf.clk),.rst(interf.rst),.mode(interf.mode),.count(interf.count));
  
  
    initial begin
    interf.clk=0;
   forever #5 interf.clk=~interf.clk;
     end
  initial begin
     interf.rst=1;
    #15;interf.rst=0;
      
  end
   
  initial begin
    $dumpfile("dumpvars.vcd");
    $dumpvars();
      #1000;
    $finish;
  end
endmodule
