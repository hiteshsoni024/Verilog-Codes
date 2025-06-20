module Example02(a,b,c,d,f);
  input a,b,c,d;
  output f;
  wire t;
  assign t = c | d;
  assign f = (a & b)|t;
  
endmodule
