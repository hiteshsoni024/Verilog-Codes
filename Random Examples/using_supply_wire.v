module using_supply_wire(a,b,c,f);
  input a,b,c;
  output f;
 wire t1,t2;
  supply0 gnd;
  supply1 vdd;
  nand G1(t1,vdd,a,b);
  xor G2(t2,c,gnd);
  and G3(f,t1,t2);
endmodule
  
