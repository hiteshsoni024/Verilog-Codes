module tb_Example03_using_wor;

  reg a, b, c, d;
  wire f;

  Example03_using_wor dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f(f)
  );

  initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b d=%b => f=%b", $time, a, b, c, d, f);

    #5 a=0; b=0; c=0; d=0;
    #5 a=1; b=1; c=0; d=0;
    #5 a=1; b=0; c=1; d=0;
    #5 a=1; b=1; c=1; d=1;
    #5 a=0; b=1; c=1; d=0;

    #1 $finish;
  end

endmodule
