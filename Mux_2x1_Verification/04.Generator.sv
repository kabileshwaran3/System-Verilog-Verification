class generator;
  transaction trans;
  mailbox g2d;
  event tr;
  
  function new(mailbox g2d);
    this.g2d=g2d;
  endfunction
  
  
  task main();
    repeat(5)begin
      trans=new();
      trans.randomize();
      g2d.put(trans);
      trans.display("GENERATOR BLOCK");
          @tr;
    end
  endtask
endclass
