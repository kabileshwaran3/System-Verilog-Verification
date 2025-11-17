class scoreboard;
  transaction trans;
  mailbox mon_sco;
  bit[7:0]mem[0:7];
  
  event tr;
  function new(mailbox mon_sco);
    this.mon_sco=mon_sco;
  endfunction
  
  task main();
    trans=new();
    
    foreach(mem[i])
      mem[i]=0;
    
    repeat(20)
      begin
        mon_sco.get(trans);
        
        trans.display("Scoreboard");
        
        if(trans.enable)begin
          mem[trans.addrs]=trans.data_in;
          $display("Data has been Written");
        end
        else
          begin
            if(trans.data_out==mem[trans.addrs])begin
              $display("passed");
            end
            else begin
              $display("Incorrect");
            end
          end
        $display("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        ->tr;
      end
    
  endtask
endclass
      
             
        
            
         
             
            
            
      
      
  
