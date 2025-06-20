module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
 //   and G1(out_and, in[0],in[1],in[2],in[3]);
   // or G2(out_or, in[0],in[1],in[2],in[3]);
   // xor G3(out_xor,in[0],in[1],in[2],in[3]);
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
    

endmodule
