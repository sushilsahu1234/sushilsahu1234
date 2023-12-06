module tb;
  reg clk,rst;
  wire [3:0]count;

  counter_1 dut(.clk(clk),
                .rst(rst),
                .count(count));
  initial begin
    clk=0;
    rst=0;
  end
  always #5clk=~clk;

  initial begin
    #5 rst=1;
    $monitor("Time =%0t,rst=%0b,count=%0b",$time,rst,count);
  #100 ;
    $finish;
  end
endmodule
