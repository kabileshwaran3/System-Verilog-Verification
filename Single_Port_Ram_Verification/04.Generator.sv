class generator;
  
  transaction trans;
  mailbox gen_dr;
  
  event tr;
  
  function new(mailbox gen_dr);
    this.gen_dr=gen_dr;
  endfunction
  
  task main();
    
    trans=new();
    repeat(20) begin
//       $display("Generate Block");
      trans.randomize();
      trans.display("Generate Block");
      gen_dr.put(trans);
      @tr;
    end
  endtask
endclass

      
      
