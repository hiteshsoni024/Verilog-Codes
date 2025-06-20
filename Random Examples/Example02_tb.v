module Two_level_tb;
  reg a,b,c,d;
  wire f;
  
  two_level dut(.a(a),.b(b),.c(c),.d(d),.f(f));
  initial begin
    $monitor("at time %t: a=%b,b=%b,c=%b,d=%b=>f=%b",$time,a,b,c,d,f);
    #5 a=0; b=0; c=0; d=0;
    #5 a=0; b=1; c=0; d=1;
    #5 a=1; b=0; c=1; d=0;
    #5 a=1; b=1; c=1; d=1;
    #5 a=1; b=1; c=0; d=0;

    #1 $finish;
  end
endmodule
