module tb_using_supply_wire;
  reg a, b, c;
  wire f;

  using_supply_wire dut (
    .a(a),
    .b(b),
    .c(c),
    .f(f)
  );

  initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b => f=%b", $time, a, b, c, f);

    #5 a=0; b=0; c=0;
    #5 a=1; b=0; c=1;
    #5 a=1; b=1; c=0;
    #5 a=0; b=1; c=1;
    #5 a=1; b=1; c=1;

    #1 $finish;
  end
endmodule
