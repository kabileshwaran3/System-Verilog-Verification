class generator;
  transaction trans;
  mailbox mail_1;
  event tr;
  function new(mailbox mail_1);
    this.mail_1=mail_1;
  endfunction
  task main();
    
    repeat(10)
      begin
        trans=new();
        
        trans.randomize(); 
        $display ("Generator Class");
        trans.display("start randomize value ");
        mail_1.put(trans);
        @(tr);
       
      end
  endtask
endclass

      
