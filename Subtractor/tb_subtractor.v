`timescale 1ns / 1ps

module tb_subtractor;
  reg a, b, Bin;
  wire D, Bout;
  
  subtractor dut (
    .a(a),
    .b(b),
    .Bin(Bin),
    .Bout(Bout),
    .D(D)
  );
  
  initial begin
    $monitor("at time %t: a=%b, b= %b , Bin = %b, Bout = %b , D=%b",$time,a,b,Bin,Bout,D);
     #5	a = 0; b = 0; Bin = 0;
     #5	a = 0; b = 0; Bin = 1; 
     #5 a = 0; b = 1; Bin = 0;
     #5 a = 0; b = 1; Bin = 1;
     #5 a = 1; b = 0; Bin = 0;
     #5 a = 1; b = 0; Bin = 1;
     #5 a = 1; b = 1; Bin = 0;
     #5 a = 1; b = 1; Bin = 1;
    #1 $finish;
  end
endmodule
