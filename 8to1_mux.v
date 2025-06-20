module mux8to1(sel,in,y);
  input [7:0] in;
  input [2:0] sel;
  output y;
  assign y = in[sel];
endmodule
