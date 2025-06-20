module N_bit_counter (clear, clock, count);
  parameter N = 7;
  input clock, clear;
  output reg [0:N] count;

  always @ (posedge clock) begin
    if (clear)
      count <= 0;
    else
      count <= count + 1;
  end
endmodule
