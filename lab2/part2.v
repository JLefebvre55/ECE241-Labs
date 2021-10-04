// NOT
module v7404 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin3, pin5, pin9, pin11, pin13;
    output pin2, pin4, pin6, pin8, pin10, pin12;
    assign pin2 = ~pin1;
    assign pin4 = ~pin3;
    assign pin6 = ~pin5;
    assign pin8 = ~pin9;
    assign pin10 = ~pin11;
    assign pin12 = ~pin13;
endmodule

// AND
module v7408 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin2, pin4, pin5, pin9, pin10, pin12, pin13;
    output pin3, pin6, pin8, pin11;
    assign pin3 = pin1 & pin2;
    assign pin6 = pin4 & pin5;
    assign pin8 = pin9 & pin10;
    assign pin11 = pin12 & pin13;
endmodule

// OR
module v7432 (pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin2, pin4, pin5, pin9, pin10, pin12, pin13;
    output pin3, pin6, pin8, pin11;
    assign pin3 = pin1 | pin2;
    assign pin6 = pin4 | pin5;
    assign pin8 = pin9 | pin10;
    assign pin11 = pin12 | pin13;
endmodule

// m= ~s & x | s & y
module mux2to1 (x, y, s, m);
    input x, y, s;
    output m;
    wire a, b, c;
    // a = ~s
    v7404 u1 (.pin1(s), .pin2(a));
    // b = s & y; c = x & a (aka ~s)
    v7408 u2 (.pin1(s), .pin2(y), .pin3(b), .pin4(x), .pin5(a), .pin6(c));
    // m = b (aka s & y) | c (aka x & ~s)
    v7432 u3 (.pin1(b), .pin2(c), .pin3(m));
endmodule