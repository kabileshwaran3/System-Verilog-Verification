class monitor;
  transaction trans;
  mailbox mon_sco;
  
  virtual inter interf;
  
  function new(virtual inter interf,mailbox mon_sco);
    this.interf=interf;
    this.mon_sco=mon_sco;
  endfunction
  
  task main();
    trans=new();
    repeat(20) begin
      
      @(posedge interf.clk)begin
        #3;
      trans.rst=interf.rst;
      trans.mode=interf.mode;
      trans.count=interf.count;
      
      
      
      mon_sco.put(trans);
      trans.display("Monitor");
      end
    end
  endtask
endclass

      
