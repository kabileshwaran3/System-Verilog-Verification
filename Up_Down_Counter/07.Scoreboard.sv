class scoreboard;
  transaction trans;
  mailbox mon_sco;
  
  event tr;
  bit[3:0]exp_out;
  
  function new(mailbox mon_sco);
    this.mon_sco=mon_sco;
  endfunction
  
  task main();
    trans=new();
    repeat(20)begin
      mon_sco.get(trans);
      trans.display("Scoreboard");
      
      if(trans.rst)begin
        exp_out=0;
        $display("Scoreboard: Reset");

      end
      else begin
               exp_out=trans.mode;

        if(trans.mode==exp_out)begin
          $display("pass");
        end
        else begin
          $display("Fail");
        end
//        exp_out=trans.mode;
      end
      
      ->tr;
      $display("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    end
  endtask
endclass
