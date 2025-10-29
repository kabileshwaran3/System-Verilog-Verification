class scoreboard;
  transaction trans;
  mailbox m_s;
  event tr;
  
  function new(mailbox m_s);
    this.m_s=m_s;
  endfunction
  
  task main();
     trans=new();
    repeat(trans.value)begin
      trans=new();
      m_s.get(trans);
      trans.display("SCOREBOARD");
      if(((trans.a^trans.b) == (trans.sum)) && ((trans.a & trans.b) == (trans.carry)))begin
        $display("Correct");
        $display("___________________");
      end
      else begin
        $display("Incorrect");
        $display("_______________________");
      end
      ->tr;
    end
  endtask
endclass
 

                    
      
