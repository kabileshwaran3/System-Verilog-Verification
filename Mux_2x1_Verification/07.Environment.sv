`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  
  generator gen;
  driver dr;
  monitor mon;
  event tr;
  
  mailbox g2d;
//   mailbox d2s;
  event tr;
  
  virtual interf vir;
  
  function new(virtual interf vir);
    this.vir=vir;
    
    g2d=new();
//     d2s=new();
    
    gen=new(g2d);
    dr=new(g2d,vir);
    mon=new(vir);
    gen.tr=this.tr;
    mon.tr=this.tr;
  endfunction
  
  task perform();
    fork
      gen.main();
      dr.main();
      mon.main();
    join
  endtask
endclass

    
    
