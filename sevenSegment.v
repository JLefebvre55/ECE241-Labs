module sevenSegment(input c1, input c0, output [6:0] h);
    assign h[0] = ~c1 & c0;
    assign h[1] = c0;
    assign h[2] = ~c1 | c0;
    assign h[3] = c1 ~^ c0;
    assign h[4] = ~c1 | ~c0;
    assign h[5] = h[4];
    assign h[6] = ~c1 & c0;
endmodule