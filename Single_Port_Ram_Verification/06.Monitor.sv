class monitor;
  transaction trans;
  mailbox mon_sco;
  virtual inter interf;
  
  function new(virtual inter interf ,mailbox mon_sco);
    this.interf=interf;
    this.mon_sco=mon_sco;
  endfunction
  
  task main();
    trans=new();
    repeat(20)begin
      @(posedge interf.clk)
      
      trans.data_in<=interf.data_in;
      trans.addrs<=interf.addrs;
      trans.rst<=interf.rst;
      trans.enable<=interf.enable;
      #1
      trans.data_out<=interf.data_out;
      
      mon_sco.put(trans);
      
      trans.display("Monitor");
    end
  endtask
endclass
      
