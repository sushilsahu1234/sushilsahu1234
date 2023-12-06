// Code your testbench here
// or browse Example
module tb;
  reg clk,rst;
  wire [3:0]count;

  counter_1 dut(.clk(clk),
                .rst(rst),
                .count(count));
  initial begin
    clk=0;
    repeat(5)begin
    rst=1;
    #1;
    rst=0;
    end
  end
  
  always #2clk=~clk;
    
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("Time =%0t,rst=%0d,count=%0d",$time,rst,count);
  #100 ;
    $finish;
  end
endmodule
