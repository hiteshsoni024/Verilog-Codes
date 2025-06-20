module tb_top_module;

    
    reg a, b, c, d, e;

    wire [24:0] out;

    top_module uut (
        .a(a), .b(b), .c(c), .d(d), .e(e),
        .out(out)
    );

    initial begin
        $display("  a b c d e  |   out");
        $monitor("%2b %2b %2b %2b %2b | %b", a, b, c, d, e, out);

        a = 0; b = 0; c = 0; d = 0; e = 0; #10;
        a = 1; b = 0; c = 1; d = 0; e = 1; #10;
        a = 1; b = 1; c = 1; d = 1; e = 1; #10;
        a = 0; b = 1; c = 0; d = 1; e = 0; #10;

        $finish;
    end
endmodule
