// Code your design here
module half_adder(inter interf);
  assign interf.sum=interf.a^interf.b;
  assign interf.carry=interf.a & interf.b;
endmodule
  
  
