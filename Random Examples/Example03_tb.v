module tb_Example02;

  reg a, b, c, d;
  wire f;

  Example02 dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f(f)
  );

  initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b d=%b => f=%b", $time, a, b, c, d, f);

    #5 a=0; b=0; c=0; d=0;  // f = 0
    #5 a=1; b=1; c=0; d=0;  // f = 1
    #5 a=0; b=1; c=1; d=0;  // f = 1 
    #5 a=1; b=0; c=0; d=1;  // f = 1 
    #5 a=1; b=1; c=1; d=1;  // f = 1
    #5 a=0; b=0; c=1; d=1;  // f = 1
    #1 $finish;
  end

endmodule
