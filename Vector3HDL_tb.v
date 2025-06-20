module tb_top_module;
  reg [4:0] a,b,c,d,e,f;
  wire [7:0] w,x,y,z;
  top_module uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
  );
  initial begin
    $monitor("Time = %t | a=%b b=%b c=%b d=%b e=%b f=%b || w=%b x=%b y=%b z=%b",
              $time, a, b, c, d, e, f, w, x, y, z);

    // Test Case 1
    a = 5'b00001;
    b = 5'b00010;
    c = 5'b00100;
    d = 5'b01000;
    e = 5'b10000;
    f = 5'b11111;
    #10;

    // Test Case 2
    a = 5'b11111;
    b = 5'b11111;
    c = 5'b00000;
    d = 5'b00000;
    e = 5'b10101;
    f = 5'b01010;
    #10;

    // Test Case 3
    a = 5'b00000;
    b = 5'b00000;
    c = 5'b00000;
    d = 5'b00000;
    e = 5'b00000;
    f = 5'b00000;
    #10;

    $finish;
  end

endmodule
