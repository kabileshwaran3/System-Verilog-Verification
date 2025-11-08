`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  transaction trans;
  generator gen;
  driver dr;
  monitor mon;
  scoreboard scb;
  
  mailbox gen_dri;
  mailbox mon_sco;
  
  virtual inter interf;
  event tr;
  
  function new(virtual inter interf);
    this.interf=interf;
    gen_dri=new();
    mon_sco=new();
    
    gen=new(gen_dri);
    dr=new(interf,gen_dri);
    mon=new(interf,mon_sco);
    scb=new(mon_sco);
    
    
    gen.tr=this.tr;
    scb.tr=this.tr;
    
  endfunction
  
  task run();
    fork
      gen.main();
      dr.main();
      mon.main();
      scb.main();
    join
  endtask
endclass

      
  
  
