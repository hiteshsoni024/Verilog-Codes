module tb_top_module;
  reg [7:0] in;
  wire [31:0] out;
  top_module dut(
    .in(in),
    .out(out)
  );
initial begin
  $monitor("time %t: in=%b : out=%b",$time , in, out);
  #5 in = 8'b10101101;
  #1 $finish;
end
endmodule
