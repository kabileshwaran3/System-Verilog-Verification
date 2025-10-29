// Code your testbench here
// or browse Examples

`include "test.sv"
`include "interface.sv"

module testbench;
   interf intff(); 
  test tff(intff); 
  	
  full_adder uut(.a(intff.a),.b(intff.b),.cin(intff.cin),.sum(intff.sum),.carry(intff.carry));
  initial begin
    $dumpfile("dumpvars.vcd");
    $dumpvars();
  end
    initial begin
      #300;
    $finish;
  end
endmodule

https://www.edaplayground.com/x/WweQ
