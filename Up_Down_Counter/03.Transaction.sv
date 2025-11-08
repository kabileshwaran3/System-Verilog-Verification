class transaction;
  bit rst;
  rand bit mode;
  bit [3:0]count;
  
  
  function void display(string name);
    $display("%0s",name);
    $display("$time=%0t,rst=%0b,mode=%0d,count=%0d",$time,rst,mode,count);
  endfunction
endclass

  
  
  
  
  
