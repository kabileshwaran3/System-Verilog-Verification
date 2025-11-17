class transaction;
  rand bit[7:0]data_in;
  rand bit[2:0]addrs;
  bit rst;
  rand bit enable;
  bit[7:0]data_out;
  
//   constraint value{enable dist{1:=10,0:=10};} 
//   constraint value_1{addrs dist{3:=3,5:=3};}
//   constraint value_2{data_in dist{[20:40]};}
  
  
  function void display(string name);
    $display("%s",name);
    $display("$time=%0t rst=%0b enable=%0b,addrs=%0d, data_in=%0d data_out=%0d,",$time,rst,enable,addrs,data_in,data_out);
    $display("________________________________");
  endfunction
endclass
    
