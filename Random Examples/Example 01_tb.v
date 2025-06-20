module Example01_tb;
  reg A,B,C,D,E,F;
  wire Y;
  
  Example01 dut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .Y(Y)
  );
  
  initial begin 
    $monitor("At time %t: A=%b,B=%b,C=%b,D=%b,E=%b,F=%b=>Y=%b",$time,A,B,C,D,E,F,Y);
    #5 A=0; B=0; C=0; D=0; E=0; F=0;
    #5 A=1; B=0; C=1; D=1; E=1; F=0;
    #5 A=1; B=1; C=0; D=1; E=0; F=1;
    #5 A=0; B=1; C=1; D=0; E=1; F=1;
    #5 A=1; B=1; C=1; D=1; E=0; F=0;
    #1 $finish;
  end
endmodule
  
