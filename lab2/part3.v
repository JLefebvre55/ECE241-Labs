module hexdecoder(c, display);
    input [3:0] c;
    output [6:0] display;
    assign display[0] = (~c[0] & ~c[1] & ~c[2] & ~c[3]) | (~c[0] & ~c[1] & c[2] & ~c[3]) | (~c[0] & ~c[1] & c[2] & c[3]) | (~c[0] & c[1] & c[2] & c[3]) | (~c[0] & c[1] & ~c[2] & c[3]) | (~c[0] & c[1] & c[2] & ~c[3]) | (~c[0] & c[1] & c[2] & c[3]) | (c[0] & ~c[1] & ~c[2] & ~c[3]) | (c[0] & ~c[1] & ~c[2] & c[3]) | (c[0] & ~c[1] & c[2] & ~c[3]) | (c[0] & c[1] & ~c[2] & ~c[3]) | (c[0] & c[1] & c[2] & ~c[3]) | (c[0] & c[1] & c[2] & c[3]);
    assign display[1] = (~c[0]& ~c[1] & ~c[2] & ~c[3]) | (~c[0]& ~c[1] & ~c[2] & c[3]) | (~c[0]& ~c[1] & c[2] & ~c[3]) | (~c[0]& ~c[1] & c[2] & c[3]) | (~c[0]& c[1] & ~c[2] & ~c[3]) | (~c[0]& c[1] & c[2] & c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & c[3]) | (c[0]& ~c[1] & c[2] & ~c[3]) | (c[0]& c[1] & ~c[2] & c[3]);
    assign display[2] = (~c[0]& ~c[1] & ~c[2] & ~c[3]) | (~c[0]& ~c[1] & ~c[2] & c[3]) | (~c[0]& ~c[1] & c[2] & c[3]) | (~c[0]& c[1] & ~c[2] & ~c[3]) | (~c[0]& c[1] & ~c[2] & c[3]) | (~c[0]& c[1] & c[2] & ~c[3]) | (~c[0]& c[1] & c[2] & c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & c[3]) | (c[0]& ~c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & c[2] & c[3]) | (c[0]& c[1] & ~c[2] & c[3]);
    assign display[3] = (~c[0]& ~c[1] & ~c[2] & ~c[3]) | (~c[0]& ~c[1] & c[2] & ~c[3]) | (~c[0]& ~c[1] & c[2] & c[3]) | (~c[0]& c[1] & ~c[2] & c[3]) | (~c[0]& c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & c[3]) | (c[0]& ~c[1] & c[2] & c[3]) | (c[0]& c[1] & ~c[2] & ~c[3]) | (c[0]& c[1] & ~c[2] & c[3]) | (c[0]& c[1] & c[2] & ~c[3]);
    assign display[4] = (~c[0]& ~c[1] & ~c[2] & ~c[3]) | (~c[0]& ~c[1] & c[2] & ~c[3]) | (~c[0]& c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & c[2] & c[3]) | (c[0]& c[1] & ~c[2] & ~c[3]) | (c[0]& c[1] & ~c[2] & c[3]) | (c[0]& c[1] & c[2] & ~c[3]) | (c[0]& c[1] & c[2] & c[3]);
    assign display[5] = (~c[0]& ~c[1] & ~c[2] & ~c[3]) | (~c[0]& c[1] & ~c[2] & ~c[3]) | (~c[0]& c[1] & ~c[2] & c[3]) | (~c[0]& c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & c[3]) | (c[0]& ~c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & c[2] & c[3]) | (c[0]& c[1] & ~c[2] & ~c[3]) | (c[0]& c[1] & c[2] & ~c[3]) | (c[0]& c[1] & c[2] & c[3]);
    assign display[6] = (~c[0]& ~c[1] & c[2] & ~c[3]) | (~c[0]& ~c[1] & c[2] & c[3]) | (~c[0]& c[1] & ~c[2] & ~c[3]) | (~c[0]& c[1] & ~c[2] & c[3]) | (~c[0]& c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & ~c[3]) | (c[0]& ~c[1] & ~c[2] & c[3]) | (c[0]& ~c[1] & c[2] & ~c[3]) | (c[0]& ~c[1] & c[2] & c[3]) | (c[0]& c[1] & ~c[2] & c[3]) | (c[0]& c[1] & c[2] & ~c[3]) | (c[0]& c[1] & c[2] & c[3]);
endmodule


// (~a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (~a & ~b & c & ~d) | (~a & ~b & c & d) | (~a & b & ~c & ~d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (~a & b & c & d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & ~b & c & d) | (a & b & ~c & ~d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & b & c & d);

// assign display[0] = (~a & ~b & ~c & ~d) | (~a & ~b & c & ~d) | (~a & ~b & c & d) | (~a & b & c & d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (~a & b & c & d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & b & ~c & ~d) | (a & b & c & ~d) | (a & b & c & d);
// assign display[1] = (~a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (~a & ~b & c & ~d) | (~a & ~b & c & d) | (~a & b & ~c & ~d) | (~a & b & c & d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & b & ~c & d);
// assign display[2] = (~a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (~a & ~b & c & d) | (~a & b & ~c & ~d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (~a & b & c & d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & ~b & c & d) | (a & b & ~c & d);
// assign display[3] = (~a & ~b & ~c & ~d) | (~a & ~b & c & ~d) | (~a & ~b & c & d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & d) | (a & b & ~c & ~d) | (a & b & ~c & d) | (a & b & c & ~d);
// assign display[4] = (~a & ~b & ~c & ~d) | (~a & ~b & c & ~d) | (~a & b & c & ~d) | (a & ~b & ~c & ~d) | (a & ~b & c & ~d) | (a & ~b & c & d) | (a & b & ~c & ~d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & b & c & d);
// assign display[5] = (~a & ~b & ~c & ~d) | (~a & b & ~c & ~d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & ~b & c & d) | (a & b & ~c & ~d) | (a & b & c & ~d) | (a & b & c & d);
// assign display[6] = (~a & ~b & c & ~d) | (~a & ~b & c & d) | (~a & b & ~c & ~d) | (~a & b & ~c & d) | (~a & b & c & ~d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d) | (a & ~b & c & ~d) | (a & ~b & c & d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & b & c & d);