`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment;
  generator gen;
  driver dr;
  monitor mon;
  scoreboard sco;
  
  event tr;
  virtual inter interf;
  
  mailbox gen_dr;
  mailbox mon_sco;
  
  function new(virtual inter interf);
    this.interf=interf;
    
    gen_dr=new();
    mon_sco=new();

    
    gen=new(gen_dr);
    dr=new(interf,gen_dr);
    mon=new(interf,mon_sco);
    sco=new(mon_sco);
        gen.tr=this.tr;
    sco.tr=this.tr;
    
  endfunction
  
  task run();
    fork 
    gen.main();
    dr.main();
    mon.main();
    sco.main();
    join
  endtask
endclass

    
    
  
  
  
