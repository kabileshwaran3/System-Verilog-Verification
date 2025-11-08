class driver;
  transaction trans;
  mailbox gen_dri;
  
  virtual inter interf;
  
  function new(virtual inter interf,mailbox gen_dri);
    this.interf=interf;
    this.gen_dri=gen_dri;
  endfunction
  
  task main();
    trans=new();
    repeat(20)begin
      gen_dri.get(trans);
//       interf.rst=trans.rst;
      
      @(posedge interf.clk);
     interf.mode=trans.mode;
      
     trans.display("Driver");
      
     
    end
  endtask
endclass

      
