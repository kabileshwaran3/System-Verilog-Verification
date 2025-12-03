class transaction;
  
  rand bit d0;
  rand bit d1;
  rand bit s;
  bit y;
  
  function void display(string name);
    $display("%s",name);
    $display( "$time=%0t | d0=%0b | d1 = %0b s= %0d | y=%0b", $time,d0,d1,s,y);
    $display("-------------------------------------");
  endfunction
endclass


    
    
    
