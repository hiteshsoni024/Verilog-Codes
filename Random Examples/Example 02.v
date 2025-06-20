//two level combinational cuircuit including basic gates like -> and nor nand
module two_level(a,b,c,d,f);
  input a,b,c,d;
  output f;
  wire t1,t2;
  assign t1 = a&b;
  assign t2 = ~(c|d);
  assign f = ~(t1&t2);
endmodule
