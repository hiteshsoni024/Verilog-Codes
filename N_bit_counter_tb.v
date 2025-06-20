module tb_N_bit_counter;
  reg clock, clear;
  wire [0:7] count;

  N_bit_counter uut (
    .clock(clock),
    .clear(clear),
    .count(count)
  );
  
  always #5 clock = ~clock;

 
  initial begin
    clock = 0;
    clear = 1;
    $monitor("At time %t == clock = %b == clear = %b == count = %d", $time, clock, clear, count);
    #10 clear = 0;
    #100 clear = 1;
    #10 clear = 0;
    #50
    #1 $finish;
  end
endmodule
