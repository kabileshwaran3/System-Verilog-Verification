class generator;
  transaction trans;
  mailbox g_d;
  event tr;
  
  function new(mailbox g_d);
    this.g_d=g_d;
  endfunction
  
  task main();
    trans=new();
    repeat(trans.value) begin
    trans.randomize();
    trans.display("GENERATOR");
    g_d.put(trans);
//       #5;
      
      @tr;
    end
  endtask
endclass

    
