module f_a(a,b,c_i,s,c_o);
  input a,b,c_i;
  output s,c_o;
  assign s= (a^b^c);
  assign c= (a&b) | (b&c) | (c&a);
endmodule
