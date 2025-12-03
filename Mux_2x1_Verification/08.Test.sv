`include "environment.sv"

program test(interf interff);
  environment env;
  
  initial begin
    env=new(interff);
    env.perform();
  end
endprogram
  
