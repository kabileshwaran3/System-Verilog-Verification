class generator;
  transaction trans;
  mailbox gen_dri;
  
  event tr;
  
  function new(mailbox gen_dri);
    this.gen_dri=gen_dri;
  endfunction
  
  task main();
    trans=new();
    repeat(20) begin
      trans.randomize();
      gen_dri.put(trans);
      trans.display("Generator");
      
      @tr;
    end
  endtask
endclass
