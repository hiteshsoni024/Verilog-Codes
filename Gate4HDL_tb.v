module tb_top_module;
  reg [3:0] in;
  wire out_and,out_or,out_xor;
  top_module dut(
    .in(in),
    .out_and(out_and),
    .out_or(out_or),
    .out_xor(out_xor)
  );
  
  initial begin 
    $monitor("time : %t , in= %b , AND = %b , OR = %b , XOR = %b",$time,in,out_and,out_or,out_xor);
    in = 4'b0000; #10;
    in = 4'b0001; #10;
    in = 4'b1111; #10;
    in = 4'b1010; #10;
    in = 4'b0101; #10;
    in = 4'b1001; #10;
    in = 4'b0011; #10;

  #1 $finish;
  end
endmodule
