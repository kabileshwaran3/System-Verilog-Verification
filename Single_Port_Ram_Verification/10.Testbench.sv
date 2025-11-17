// Code your testbench here
// or browse Examples
`include "test.sv"
`include "interface.sv"


module tb;
  
  inter interf();
  test tst(interf);
  
  s_ram uut(.clk(interf.clk),.data_in(interf.data_in),.addrs(interf.addrs),.rst(interf.rst),.enable(interf.enable),.data_out(interf.data_out));
  
  initial begin
    interf.clk=0; #2;
    forever #4 interf.clk =~interf.clk;
  end
  
  initial begin
    interf.rst=1; #4;
    interf.rst=0;
  end
//   initial begin
//     interf.enable=1;#3;
//     forever #20 interf.enable=~interf.enable;
//   end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
endmodule

   
    
            
            
