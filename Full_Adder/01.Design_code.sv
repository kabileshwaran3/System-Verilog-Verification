// Code your design here

module full_adder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;	
//   wire c1,c2,c3;
//   xor y(sum,a,b,cin);
//   and y1(c1,a,b);
//   and y2(c2,b,cin);
//   and y3(c3,a,cin);
  
 //   assign {carry,sum}=a+b+cin;
  
  assign sum=a^b^cin;
  assign carry=((a&b) | (b&cin) | (a&cin));

  
endmodule
