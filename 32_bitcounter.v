module counter(clk , reset,count);
  input clk,reset;
  output reg [31:0] count ;
  always @ (posedge clk or posedge reset )
    begin
      if (reset)
        count = 32'b0;
      else 
        count = count + 1;
    end
endmodule
//with asynchronous clock
