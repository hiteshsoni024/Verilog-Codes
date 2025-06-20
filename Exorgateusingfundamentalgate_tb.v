module tb_exor;
  reg a ,b;
  wire f;
  exor dut (
    .a(a),
    .b(b),
    .f(f)
  );
  initial begin 
    $monitor("At time %t:a=%b,b=%b=>f=%b",$time,a,b,f);
    #5 a=0;b=0;
    #5 a=1;b=0;
    #5 a=0;b=1;
    #5 a=1;b=1;
  end
endmodule
