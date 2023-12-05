module tb;
  reg clk,rst;
  wire q,q_b;

  d_ff dut(.clk(clk),
           .rst(rst),
           .q(q),
           .q_b(q_b));
  initial begin
    clk=0;
    rst=1;
  end
  always #5 clk=~clk;
  initial begin
    d= $random;
    #5;
    rst=0;
  end
  initial begin
    $monitor("Time ,d=%0b,rst=%0b,q=%0b,q_b=%0b",d,rst,q,q_b);
    #100;
    $finish;
  end
endmodule
  
    

  
