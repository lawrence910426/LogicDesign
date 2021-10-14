`timescale 1ns/1ps

module Decode_And_Execute(rs, rt, sel, rd, w1,w2,w3,w4,w5,w6,w7,w8);
    input [3:0] rs, rt;
    input [2:0] sel;
    output [3:0] rd;
    output [3:0] w1,w2,w3,w4,w5,w6,w7,w8;
    
    //FUNCTION
    //wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8;
    ADD func1 (.a(rs), .b(rt), .out(w1));
    SUB func2 (.a(rs), .b(rt), .out(w2));
    BITWISE_AND func3 (.a(rs), .b(rt), .out(w3));
    BITWISE_OR func4 (.a(rs), .b(rt), .out(w4));
    LEFT_SHIFT func5 (.a(rs), .out(w5));
    RIGHT_SHIFT func6 (.a(rt), .out(w6));
    COMPARE_EQ func7 (.a(rs), .b(rt), .out(w7));
    COMPARE_GT func8 (.a(rs), .b(rt), .out(w8));
    
    //SELECTION SIGNAL
    wire s0_n, s1_n, s2_n;
    wire s01, s02, s03, s04, s05, s06, s07, s08;
    wire [7:0] s;
    NOT n_s_0 (.a(sel[0]), .out(s0_n));
    NOT n_s_1 (.a(sel[1]), .out(s1_n));
    NOT n_s_2 (.a(sel[2]), .out(s2_n));
    
    //000
    AND a_s_11 (.a(s0_n), .b(s1_n), .out(s01));
    AND a_s_12 (.a(s2_n), .b(s01), .out(s[0]));
    //001
    AND a_s_21 (.a(sel[0]), .b(s1_n), .out(s02));
    AND a_s_22 (.a(s2_n), .b(s02), .out(s[1]));
    //010
    AND a_s_31 (.a(s0_n), .b(sel[1]), .out(s03));
    AND a_s_32 (.a(s2_n), .b(s03), .out(s[2]));
    //011
    AND a_s_41 (.a(sel[0]), .b(sel[1]), .out(s04));
    AND a_s_42 (.a(s2_n), .b(s04), .out(s[3]));
    //100
    AND a_s_51 (.a(s0_n), .b(s1_n), .out(s05));
    AND a_s_52 (.a(sel[2]), .b(s05), .out(s[4]));
    //101
    AND a_s_61 (.a(sel[0]), .b(s1_n), .out(s06));
    AND a_s_62 (.a(sel[2]), .b(s06), .out(s[5]));
    //110
    AND a_s_71 (.a(s0_n), .b(sel[1]), .out(s07));
    AND a_s_72 (.a(sel[2]), .b(s07), .out(s[6]));
    //111
    AND a_s_81 (.a(sel[0]), .b(sel[1]), .out(s08));
    AND a_s_82 (.a(sel[2]), .b(s08), .out(s[7]));
    
    //SELECTION FOR EACH
    SELECT sel_0 (.sel(s), .w1(w1[0]), .w2(w2[0]), .w3(w3[0]),
                  .w4(w4[0]), .w5(w5[0]), .w6(w6[0]), .w7(w7[0]), .w8(w8[0]), .out(rd[0]));
    SELECT sel_1 (.sel(s), .w1(w1[1]), .w2(w2[1]), .w3(w3[1]),
                  .w4(w4[1]), .w5(w5[1]), .w6(w6[1]), .w7(w7[1]), .w8(w8[1]), .out(rd[1]));
    SELECT sel_2 (.sel(s), .w1(w1[2]), .w2(w2[2]), .w3(w3[2]),
                  .w4(w4[2]), .w5(w5[2]), .w6(w6[2]), .w7(w7[2]), .w8(w8[2]), .out(rd[2]));
    SELECT sel_3 (.sel(s), .w1(w1[3]), .w2(w2[3]), .w3(w3[3]),
                  .w4(w4[3]), .w5(w5[3]), .w6(w6[3]), .w7(w7[3]), .w8(w8[3]), .out(rd[3]));
    
    
endmodule

module SELECT (sel, w1, w2, w3, w4, w5, w6, w7, w8, out);
    input [7:0] sel;
    input w1, w2, w3, w4, w5, w6, w7, w8;
    output out;
    wire a01,a02,a03,a04,a05,a06,a07,a08;
    wire o1, o2, o3, o4, o5, o6;
    AND and0_1 (.a(w1), .b(sel[0]), .out(a01));
    AND and0_2 (.a(w2), .b(sel[1]), .out(a02));
    AND and0_3 (.a(w3), .b(sel[2]), .out(a03));
    AND and0_4 (.a(w4), .b(sel[3]), .out(a04));
    AND and0_5 (.a(w5), .b(sel[4]), .out(a05));
    AND and0_6 (.a(w6), .b(sel[5]), .out(a06));
    AND and0_7 (.a(w7), .b(sel[6]), .out(a07));
    AND and0_8 (.a(w8), .b(sel[7]), .out(a08));
    OR or0_1 (.a(a01), .b(a02), .out(o1));
    OR or0_2 (.a(a03), .b(a04), .out(o2));
    OR or0_3 (.a(a05), .b(a06), .out(o3));
    OR or0_4 (.a(a07), .b(a08), .out(o4));
    OR or0_5 (.a(o1), .b(o2), .out(o5));
    OR or0_6 (.a(o3), .b(o4), .out(o6));
    OR or0_7 (.a(o5), .b(o6), .out(out));
    
endmodule

//1
module ADD (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    wire c0, c1, c2, c3;
    H_ADDER ha1 (.a(a[0]), .b(b[0]), .cout(c0), .sum(out[0]));
    F_ADDER fa1 (.a(a[1]), .b(b[1]), .cin(c0), .cout(c1), .sum(out[1]));
    F_ADDER fa2 (.a(a[2]), .b(b[2]), .cin(c1), .cout(c2), .sum(out[2]));
    F_ADDER fa3 (.a(a[3]), .b(b[3]), .cin(c2), .cout(c3), .sum(out[3]));
endmodule


module F_ADDER (a, b, cin, cout, sum);
    input a, b, cin;
    output cout ,sum;
    wire c1, c2, s1;
    H_ADDER ha1 (.a(a), .b(b), .cout(c1), .sum(s1));
    H_ADDER ha2 (.a(s1), .b(cin), .cout(c2), .sum(sum));
    OR or1 (.a(c1), .b(c2), .out(cout));
endmodule

module H_ADDER (a, b, cout, sum);
    input a, b;
    output cout ,sum;
    XOR xor1 (.a(a), .b(b), .out(sum));
    AND and1 (.a(a), .b(b), .out(cout));
endmodule

//2
module SUB (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    wire [3:0] b_n, b_2;
    wire n_0, n_1, n_2, n_3;
    
    //2's complement
    NOT not0 (.a(b[0]), .out(b_n[0]));
    NOT not1 (.a(b[1]), .out(b_n[1]));
    NOT not2 (.a(b[2]), .out(b_n[2]));
    NOT not3 (.a(b[3]), .out(b_n[3]));
    ADD add1 (.a(b_n), .b(4'b0001), .out(b_2));
    ADD add2 (.a(a), .b(b_2), .out(out));
endmodule

//3
module BITWISE_AND (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    AND and0 (.a(a[0]), .b(b[0]), .out(out[0]));
    AND and1 (.a(a[1]), .b(b[1]), .out(out[1]));
    AND and2 (.a(a[2]), .b(b[2]), .out(out[2]));
    AND and3 (.a(a[3]), .b(b[3]), .out(out[3]));
endmodule

//4
module BITWISE_OR (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    OR or0 (.a(a[0]), .b(b[0]), .out(out[0]));
    OR or1 (.a(a[1]), .b(b[1]), .out(out[1]));
    OR or2 (.a(a[2]), .b(b[2]), .out(out[2]));
    OR or3 (.a(a[3]), .b(b[3]), .out(out[3]));
endmodule

//5
module LEFT_SHIFT (a, out);
    input [3:0] a;
    output [3:0] out;

    Universal_Gate u0 (.a(a[0]), .b(1'b0), .out(out[1]));
    Universal_Gate u1 (.a(a[1]), .b(1'b0), .out(out[2]));
    Universal_Gate u2 (.a(a[2]), .b(1'b0), .out(out[3]));
    Universal_Gate u3 (.a(a[3]), .b(1'b0), .out(out[0]));
endmodule

//6
module RIGHT_SHIFT (a, out);
    input [3:0] a;
    output [3:0] out;

    Universal_Gate u0 (.a(a[3]), .b(1'b0), .out(out[3]));
    Universal_Gate u1 (.a(a[1]), .b(1'b0), .out(out[0]));
    Universal_Gate u2 (.a(a[2]), .b(1'b0), .out(out[1]));
    Universal_Gate u3 (.a(a[3]), .b(1'b0), .out(out[2]));
endmodule

//7
module COMPARE_EQ (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    wire c1, c2, c3, c0, w1, w2;

    XNOR xnor0 (.a(a[0]), .b(b[0]), .out(c0));
    XNOR xnor1 (.a(a[1]), .b(b[1]), .out(c1));
    XNOR xnor2 (.a(a[2]), .b(b[2]), .out(c2));
    XNOR xnor3 (.a(a[3]), .b(b[3]), .out(c3));
    AND and1 (.a(c0), .b(c1), .out(w1));
    AND and2 (.a(c2), .b(c3), .out(w2));
    AND and3 (.a(w1), .b(w2), .out(out[0]));
    NOT not1 (.a(1'b0), .out(out[1]));
    NOT not2 (.a(1'b0), .out(out[2]));
    NOT not3 (.a(1'b0), .out(out[3]));
endmodule

//8
module COMPARE_GT (a, b, out);
    input [3:0] a, b;
    output [3:0] out;
    wire a3_n, a2_n, a1_n, b3_n, b2_n, b1_n, b0_n;
    wire w0, w11, w12, w21, w22, w31, w32;
    wire w1, w1_n, w2, w2_n, w3, w3_n;
    wire a1_1, a2_1, a2_2, a3_1, a3_2, a3_3, o1, o2;
    
    //invert
    NOT not1 (.a(a[1]), .out(a1_n));
    NOT not2 (.a(a[2]), .out(a2_n));
    NOT not3 (.a(a[3]), .out(a3_n));
    NOT not4 (.a(b[0]), .out(b0_n));
    NOT not5 (.a(b[1]), .out(b1_n));
    NOT not6 (.a(b[2]), .out(b2_n));
    NOT not7 (.a(b[3]), .out(b3_n));
    
    //and
    AND and1 (.a(a3_n), .b(b[3]), .out(w31));
    AND and2 (.a(a[3]), .b(b3_n), .out(w32));
    AND and3 (.a(a2_n), .b(b[2]), .out(w21));
    AND and4 (.a(a[2]), .b(b2_n), .out(w22));
    AND and5 (.a(a1_n), .b(b[1]), .out(w11));
    AND and6 (.a(a[1]), .b(b1_n), .out(w12));
    AND and7 (.a(a[0]), .b(b0_n), .out(w0));
    
    //
    OR or1 (.a(w31), .b(w32), .out(w3));
    NOT n1 (.a(w3), .out(w3_n));
    OR or2 (.a(w21), .b(w22), .out(w2));
    NOT n2 (.a(w2), .out(w2_n));
    OR or3 (.a(w11), .b(w12), .out(w1));
    NOT n3 (.a(w1), .out(w1_n));
    
    //
    AND a1 (.a(w3_n), .b(w22), .out(a1_1));
    
    AND a21 (.a(w3_n), .b(w2_n), .out(a2_1));
    AND a22 (.a(w12), .b(a2_1), .out(a2_2));
    
    AND a31 (.a(w3_n), .b(w2_n), .out(a3_1));
    AND a32 (.a(w1_n), .b(w0), .out(a3_2));
    AND a33 (.a(a3_1), .b(a3_2), .out(a3_3));
    
    OR or_last_1 (.a(w32), .b(a1_1), .out(o1));
    OR or_last_2 (.a(a2_2), .b(a3_3), .out(o2));
    OR or_last_3 (.a(o1), .b(o2), .out(out[0]));
    
    //
    NOT not11 (.a(1'b0), .out(out[1]));
    NOT not22 (.a(1'b0), .out(out[2]));
    NOT not33 (.a(1'b0), .out(out[3]));
endmodule

//using
module XNOR (a, b, out);
    input a, b;
    output out;
    wire a_n, b_n, w1, w2;
    NOT not1 (.a(a), .out(a_n));
    NOT not2 (.a(b), .out(b_n));
    AND and1 (.a(a), .b(b), .out(w1));
    AND and2 (.a(a_n), .b(b_n), .out(w2));
    OR or1 (.a(w1), .b(w2), .out(out));
endmodule

module XOR (a, b, out);
    input a, b;
    output out;
    wire a_n, b_n, w1, w2;
    NOT not1 (.a(a), .out(a_n));
    NOT not2 (.a(b), .out(b_n));
    AND and1 (.a(a_n), .b(b), .out(w1));
    AND and2 (.a(a), .b(b_n), .out(w2));
    OR or1 (.a(w1), .b(w2), .out(out));
endmodule

module OR (a, b, out);
    input a, b;
    output out;

    wire a_n, b_n, w1, w2;
    Universal_Gate u1 (.a(1'b1), .b(a), .out(a_n));
    Universal_Gate u2 (.a(1'b1), .b(b), .out(b_n));
    Universal_Gate u3 (.a(1'b1), .b(b_n), .out(w1));
    Universal_Gate u4 (.a(a_n), .b(w1), .out(w2));
    Universal_Gate u5 (.a(1'b1), .b(w2), .out(out));
endmodule

module AND (a, b, out);
    input a, b;
    output out;

    wire w;
    Universal_Gate u1 (.a(1'b1), .b(b), .out(w));
    Universal_Gate u2 (.a(a), .b(w), .out(out));
endmodule

module NOT (a, out);
    input a;
    output out;

    Universal_Gate u1 (.a(1'b1), .b(a), .out(out));
endmodule