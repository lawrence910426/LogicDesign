`timescale 1ns/1ps

module Majority(a, b, c, out);
    input a, b, c;
    output out;
    wire w1,w2,w3,w4;
    AND and1(.out(w1), .a(a), .b(b));
    AND and2(.out(w2), .a(a), .b(c));
    AND and3(.out(w3), .a(b), .b(c));
    OR or1(.out(w4), .a(w1), .b(w2));
    OR or2(.out(out), .a(w3), .b(w4));

endmodule