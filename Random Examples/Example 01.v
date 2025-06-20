module Example01(A,B,C,D,E,F,Y);
  input A,B,C,D,E,F;
  output Y;
  wire t1, t2, t3;
  nand g1(t1,A,B);
  and g2(t2,C,~B,D);
  nor g3(t3,E,F);
  nand g4(Y,t1,t2,t3);
endmodule
