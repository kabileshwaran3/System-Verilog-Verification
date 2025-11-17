class driver;
  transaction trans;
  mailbox  gen_dr;
  
  virtual inter interf;
  
  function new(virtual inter interf,mailbox gen_dr);
    this.interf=interf;
    this.gen_dr=gen_dr;
  endfunction
  
  
  task main();
    repeat(20) begin
      gen_dr.get(trans);
      @(posedge interf.clk)
      #2;
      interf.data_in=trans.data_in;
      interf.addrs=trans.addrs;
      interf.enable=trans.enable;
      trans.display("Driver");
    end
  endtask
endclass
      
      
