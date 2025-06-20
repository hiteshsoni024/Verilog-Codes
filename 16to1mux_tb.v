module tb_mux16to1;
  reg [15:0] in;
  reg [3:0] sel;
  wire out;

  mux16to1 uut (
    .sel(sel),
    .in(in),
    .out(out)
  );

  initial begin
    $monitor("Time = %0t | sel = %b | out = %b", $time, sel, out);
    in = 16'b1010101010101010;
    #5 sel = 4'b0000;
    #5 sel = 4'b0001;
    #5 sel = 4'b0010;
    #5 sel = 4'b0011;
    #5 sel = 4'b0100;
    #5 sel = 4'b0101;
    #5 sel = 4'b0110;
    #5 sel = 4'b0111;
    #5 sel = 4'b1000;
    #5 sel = 4'b1001;
    #5 sel = 4'b1010;
    #5 sel = 4'b1011;
    #5 sel = 4'b1100;
    #5 sel = 4'b1101;
    #5 sel = 4'b1110;
    #5 sel = 4'b1111;
    #5 $finish;
  end
endmodule
