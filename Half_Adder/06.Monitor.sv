class monitor;
  transaction trans;
  mailbox m_s;
  virtual inter interf;
  
  function new(virtual inter interf ,mailbox m_s);
    this.interf=interf;
    this.m_s=m_s;
  endfunction
  
  task main();
     trans=new();
    repeat(trans.value)begin
//       #2;
     
      
      trans.a=interf.a;
      trans.b=interf.b;
      #1;
      trans.sum=interf.sum;
      trans.carry=interf.carry;
      m_s.put(trans);
      trans.display("MONITOR");
     #5;
    end
  endtask
endclass

      
