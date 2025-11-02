class transaction;
  rand bit [3:0]a,b;
  rand bit cin;
  bit [3:0]sum;
  bit cout;
    function void display (string name);
      $display("*****%s*********",name);
      $display($time,"  a=%b,b=%b, cin=%b, sum=%b, cout=%b",a,b,cin,sum,cout);
  endfunction
endclass
