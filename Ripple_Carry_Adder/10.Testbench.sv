

`include "test.sv"
`include "interface.sv"

module tb;
  interf interff();
  test tff(interff);
  
  ripple ri(.a(interff.a),.b(interff.b),.cin(interff.cin),.sum(interff.sum),.cout(interff.cout));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
endmodule


https://www.edaplayground.com/x/tDj5
