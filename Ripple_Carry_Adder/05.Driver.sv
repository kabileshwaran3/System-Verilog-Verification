class driver;
  transaction trans;
  mailbox mail_1;
  
  virtual interf vir;
  
  function new(mailbox mail_1, virtual interf vir);
    this.mail_1=mail_1;
    this.vir=vir;
  endfunction
  
  task main();
    repeat(10)begin
      mail_1.get(trans);
      vir.a=trans.a;
      vir.b=trans.b;
      vir.cin=trans.cin;
      
      $display("driver class");
      trans.display("######## Enter into driver class #########");
      
     
      $display("Value passed to interface");
     #2;
    end
  endtask
endclass
