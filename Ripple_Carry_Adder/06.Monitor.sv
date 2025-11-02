class monitor;
  transaction trans;
  mailbox mail_2;
  virtual interf vir;
  
    
  function new(mailbox mail_2, virtual interf vir);
    this.mail_2=mail_2;
    this.vir=vir;
  endfunction
  
    
  task main();
    repeat(10)
     
      begin
        trans=new();
        
        trans.a=vir.a;
        trans.b=vir.b;
        trans.cin=vir.cin;
        #3;
        trans.sum=vir.sum;
        trans.cout=vir.cout;
        
        mail_2.put(trans);
        
        $display("########## Enter into monitor block ########");
        trans.display("monitor block");
        
       
        $display("Ripple Carry adder opertion");
      #1;
        end
  endtask
endclass
