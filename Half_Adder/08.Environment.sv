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
  
  mailbox g_d;
  mailbox m_s;
  virtual inter interf;
  event tr;
  
  function new(virtual inter interf);
    this.interf=interf;
    
    g_d=new();
    m_s=new();
    
    gen=new(g_d);
    dr=new(interf,g_d);
    mon=new(interf,m_s);
    scb=new(m_s);
    gen.tr=tr;
    scb.tr=tr;
    
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

  
  
