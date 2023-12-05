module d_ff(clk,rst,d,q,q_b);
  input clk,rst,d;
  output reg q,q_b;
  assign q_b=~q;
  always@(posedge clk)begin
    if(rst)
      q<=0;
  else
    q<=d;
  end
endmodule
