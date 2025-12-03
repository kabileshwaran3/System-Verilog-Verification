class driver;
  transaction trans;
  mailbox g2d;
  
  virtual interf vir;
  
  
  function new(mailbox g2d,virtual interf vir);
    this.g2d=g2d;
    this.vir=vir;
  endfunction
  
  task main();
    repeat(5)begin
      g2d.get(trans);
      vir.d0=trans.d0;
      vir.d1=trans.d1;
      vir.s=trans.s;
      #3;
      trans.display("DRIVER BLOCK");
    end
  endtask
endclass
    

