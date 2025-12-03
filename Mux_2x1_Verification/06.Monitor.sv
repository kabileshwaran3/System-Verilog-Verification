class monitor;
  transaction trans;
//   mailbox m2s;
  event tr;
  virtual interf vir;
  function new(virtual interf vir);
//     this.m2s=m2s;
    this.vir=vir;
  endfunction
  
  task main();
    repeat(5)begin
      @(vir.d0 or vir.d1 or vir.s or vir.y);
      trans=new();
      
      trans.d0=vir.d0;
      trans.d1=vir.d1;
      trans.s=vir.s;
      #5;
      trans.y=vir.y;
     
//           m2s.put(trans);
      
      trans.display("MONITOR BLOCK");
      ->tr;
    end
  endtask
endclass
