class driver;
  transaction trans;
  mailbox g_d;
  virtual inter interf;
  
  function new(virtual inter interf,mailbox g_d);
    this.interf=interf;
    this.g_d=g_d;
  endfunction
  
  task main();
    trans=new();
    repeat(trans.value)begin
      g_d.get(trans);
      
      interf.a=trans.a;
      interf.b=trans.b;
      trans.display("DRIVER");
    end
  endtask
endclass

      
