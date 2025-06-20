module tb_parallel_adder;
  reg [7:0] in1, in2;
  reg cin;
  wire [7:0] sum;
  wire cout;

  parallel_adder uut (
    .sum(sum),
    .cout(cout),
    .in1(in1),
    .in2(in2),
    .cin(cin)
  );

  initial begin
    $monitor("Time=%0t | in1=%d | in2=%d | cin=%b || sum=%d | cout=%b", $time, in1, in2, cin, sum, cout);

    in1 = 8'd10; in2 = 8'd5;  cin = 0; #30;
    in1 = 8'd100; in2 = 8'd50; cin = 1; #30;
    in1 = 8'd255; in2 = 8'd1;  cin = 0; #30;
    in1 = 8'd128; in2 = 8'd128; cin = 1; #30;
    in1 = 8'd0; in2 = 8'd0; cin = 0; #30;

    #1 $finish;
  end
endmodule
