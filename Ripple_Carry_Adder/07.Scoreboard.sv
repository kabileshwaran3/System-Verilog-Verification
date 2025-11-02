
class scoreboard;
  mailbox mail_2;
  transaction trans;
  event tr;

  function new(mailbox mail_2);
    this.mail_2 = mail_2;
  endfunction

  task main();
   
    repeat(10) begin
       bit [4:0] expected;
      mail_2.get(trans);

       
        trans.display("scoreboard signal");

      expected = trans.a + trans.b + trans.cin;

      if ((expected[3:0] === trans.sum) && (expected[4] === trans.cout))
        $display("Scoreboard: Correct output");
      else
        $display("Scoreboard: Incorrect output! Expected sum = %b, cout = %b", expected[3:0], expected[4]);
      ->tr;
    end
  endtask
endclass
