module tb;
  reg a,b,c_i;
  wire s,c_o;

  f_a dut(.a(a),
          .b(b),
          .c_i(c_i),
          .s(s),
          .c_o(c_o));
  initial begin
    repeat(10)begin
      a= $random;
      #5;
      b=$random;
      #5;
      c_i=$random;
    end
  end
  initial begin
    $monitor("Time=%0t, a=%0b, b=%0b, c_i=%0b,s=%0b,c_o=%0b",a,b,c_i,s,c_o);
  end
endmodule
  
