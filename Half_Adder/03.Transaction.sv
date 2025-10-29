class transaction;
  rand bit a;
  rand bit b;
  int value=20;
  bit sum;
  bit carry;
  
  function void display(string name);
    $display("%s",name);
    $display("$time=%0t a=%0b b=%0b sum=%0b carry=%0b",$time,a,b,sum,carry);
  endfunction
endclass

  
  
  
