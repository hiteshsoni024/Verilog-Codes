module tb_counter;
  reg clk;
  reg rst;
  wire [31:0] count;
  
  counter dut(
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  always #5 clk = ~clk;
  
  initial begin
  	clk = 0;
    rst = 1;
    $monitor("at time %t|clk = %b | rst = %b | count =%d",$time,clk,rst,count);
    #10 rst = 0;
    #100;
    rst = 1;
    #10 rst = 0;
    #50;
    #1 $finish;
  end
endmodule
