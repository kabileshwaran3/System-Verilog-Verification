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
  
  mailbox mail_1;
  mailbox mail_2;
  
  virtual interf vir;
    function new (virtual interf vir);
    this.vir=vir;
    
    mail_1=new();
    mail_2=new();
      gen =new(mail_1);
      dr=new(mail_1,vir);
      mon=new(mail_2,vir);
      sco=new(mail_2);
      
      gen.tr=tr;
      sco.tr=tr;
      
    
  endfunction
  
    task testrun();
    fork
      gen.main();
      dr.main();
      mon.main();
      sco.main();
     
    join
  endtask
endclass
