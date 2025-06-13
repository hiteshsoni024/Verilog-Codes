`timescale 1ns / 1ps

module subtractor(a,b,Bin,Bout,D);
  input a,b,Bin;
  output D,Bout;
  assign D = a ^ b ^ Bin;
  assign Bout = (~a & b) | (Bin & ~(a ^ b));
endmodule
