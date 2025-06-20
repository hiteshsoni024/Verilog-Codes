module tb_top_module;
    reg  [7:0] in;
    wire [7:0] out;

    top_module dut (
        .in(in),
        .out(out)
    );

    initial begin
        $monitor("Time=%0t | in = %b | out = %b", $time, in, out);

       
        in = 8'b00000000; #10;
        in = 8'b11111111; #10;
        in = 8'b10101010; #10;
        in = 8'b01010101; #10;
        in = 8'b10000001; #10;
        in = 8'b11001100; #10;
        in = 8'b00110011; #10;

        $finish;
    end
endmodule
