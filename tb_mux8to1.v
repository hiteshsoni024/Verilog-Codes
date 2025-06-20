module tb_mux8to1;
  reg [7:0] in;
  reg [2:0] sel;
  wire y;

  mux8to1 uut (
    .sel(sel),
    .in(in),
    .y(y)
  );

  initial begin
        $monitor("Time = %0t | sel = %b | y = %b", $time, sel, y);
    
    in = 8'b10101010;
    #5 sel = 3'b000;
    #5 sel = 3'b001;
    #5 sel = 3'b010;
    #5 sel = 3'b011;
    #5 sel = 3'b100;
    #5 sel = 3'b101;
    #5 sel = 3'b110;
    #5 sel = 3'b111;
    #5 $finish;
  end
endmodule
