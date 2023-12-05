module tb;
  reg a,b;
  wire s,c;

  h_a dut(.a(a),
          .b(b),
          .s(s),
          .c(c)
         );
  initial begin
    repeat(5)begin
      a=$random;
      b=$random;
    end
  end
  initial begin
    $monitor("Time=%0t,a=%0b,b=%0b,s=%0b,c=%0b",a,b,c,$time);
  end
endmodule

  
