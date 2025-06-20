module tb_counter;
  reg clk,reset;
  wire [31:0] count;
  counter dut(
    .clk(clk),
    .reset(reset),
    .count(count)
  );
  always #5 clk = ~clk;
  initial begin
    clk = 0;
    reset = 1;
    
    $monitor("At time %t | reset = %b | clock =%b | count = %d",$time,reset,clk,count);
    #10 reset = 0;
    #100;
    reset = 1;
    #10 reset = 0;
    #50;
    #1 $finish;
  end
endmodule
//with asynchronous clock
