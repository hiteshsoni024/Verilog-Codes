module mux16to1(sel,in,out);
  input [15:0] in;
  input [3:0] sel ;
  output out;
  assign out = in[sel];
endmodule
