// Code your design here
module s_ram
  (input clk,
   input [7:0]data_in,
   input [2:0]addrs,
  input rst,
  input enable,
   output reg [7:0]data_out);
 
  reg [7:0]mem[0:7];
  
  always @(posedge clk)begin
    if(rst)
      data_out=8'b0;
  else begin
    if(enable)
      mem[addrs]<=data_in;
  
     else
       data_out<=mem[addrs];
  end
  end
endmodule
       
      
    
