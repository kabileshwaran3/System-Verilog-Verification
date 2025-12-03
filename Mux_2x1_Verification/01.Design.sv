module mux2x1(
  input  d0, d1,
  input  s,
  output reg y);
  always @(*) begin
    if (s == 0)
      y = d0;
    else
      y = d1;
  end
endmodule
