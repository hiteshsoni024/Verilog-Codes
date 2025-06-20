module exor(f,a,b);
  input a,b;
  output f;
  wire t1,t2;
  and G1 (t1,~a,b);
  and G2 (t2,a,~b);
  or G3 (f,t1,t2);
endmodule
