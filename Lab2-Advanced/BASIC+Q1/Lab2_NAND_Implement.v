`timescale 1ns/1ps

module NAND_Implement (a, b, sel, out);
    input a, b;
    input [2:0] sel;
    output out;
    
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    nand Nand(w1, a, b);
    AND And(.out(w2), .a(a), .b(b));
    OR Or(.out(w3), .a(a), .b(b));
    NOR Nor(.out(w4), .a(a), .b(b));
    XOR Xor(.out(w5), .a(a), .b(b));
    XNOR Xnor(.out(w6), .a(a), .b(b));
    NOT Not1(.out(w7), .a(a));
    NOT Not2(.out(w8), .a(a));
    
    wire n_0, n_1, n_2;
    NOT Not3(.out(n_0), .a(sel[0]));
    NOT Not4(.out(n_1), .a(sel[1]));
    NOT Not5(.out(n_2), .a(sel[2]));
    
    //000
    wire w11, w12, w13;
    AND And11(.out(w12), .a(w1), .b(n_0));
    AND And12(.out(w13), .a(n_1), .b(n_2));
    AND And13(.out(w11), .a(w12), .b(w13));
    //001
    wire w21, w22, w23;
    AND And21(.out(w22), .a(w2), .b(sel[0]));
    AND And22(.out(w23), .a(n_1), .b(n_2));
    AND And23(.out(w21), .a(w22), .b(w23));
    //010
    wire w31, w32, w33;
    AND And31(.out(w32), .a(w3), .b(n_0));
    AND And32(.out(w33), .a(sel[1]), .b(n_2));
    AND And33(.out(w31), .a(w32), .b(w33));
    //011
    wire w41, w42, w43;
    AND And41(.out(w42), .a(w4), .b(sel[0]));
    AND And42(.out(w43), .a(sel[1]), .b(n_2));
    AND And43(.out(w41), .a(w42), .b(w43));
    //100
    wire w51, w52, w53;
    AND And51(.out(w52), .a(w5), .b(n_0));
    AND And52(.out(w53), .a(n_1), .b(sel[2]));
    AND And53(.out(w51), .a(w52), .b(w53));
    //101
    wire w61, w62, w63;
    AND And61(.out(w62), .a(w6), .b(sel[0]));
    AND And62(.out(w63), .a(n_1), .b(sel[2]));
    AND And63(.out(w61), .a(w62), .b(w63));
    //110
    wire w71, w72, w73;
    AND And71(.out(w72), .a(w7), .b(n_0));
    AND And72(.out(w73), .a(sel[1]), .b(sel[2]));
    AND And73(.out(w71), .a(w72), .b(w73));
    //111
    wire w81, w82, w83;
    AND And81(.out(w82), .a(w8), .b(sel[0]));
    AND And82(.out(w83), .a(sel[1]), .b(sel[2]));
    AND And83(.out(w81), .a(w82), .b(w83));
    
    wire o1,o2,o3,o4,o5,o6;
    OR Orr1(.out(o1), .a(w11), .b(w21));
    OR Orr2(.out(o2), .a(w31), .b(w41));
    OR Orr3(.out(o3), .a(w51), .b(w61));
    OR Orr4(.out(o4), .a(w71), .b(w81));
    OR Orr5(.out(o5), .a(o1), .b(o2));
    OR Orr6(.out(o6), .a(o3), .b(o4));
    OR Orr7(.out(out), .a(o5), .b(o6));
endmodule

module XNOR (a, b, out);
    input a, b;
    output out;
    wire w1, w2, a_n, b_n;
    NOT Not4(.a(a), .out(a_n));
    NOT Not5(.a(b), .out(b_n));
    AND And3(.a(a), .b(b), .out(w1));
    AND And4(.a(a_n), .b(b_n), .out(w2));
    OR Or3(.a(w1), .b(w2), .out(out));
endmodule

module XOR (a, b, out);
    input a, b;
    output out;
    wire w1, w2, a_n, b_n;
    NOT Not2(.a(a), .out(a_n));
    NOT Not3(.a(b), .out(b_n));
    AND And1(.a(a_n), .b(b), .out(w1));
    AND And2(.a(a), .b(b_n), .out(w2));
    OR Or2(.a(w1), .b(w2), .out(out));
endmodule

module NOR (a, b, out);
    input a, b;
    output out;
    wire w;
    OR Or1(.a(a), .b(b), .out(w));
    NOT Not1(.a(w), .out(out));
endmodule

module OR (a, b, out);
    input a, b;
    output out;
    wire w1, w2;
    nand Nand4(w1, a, a);
    nand Nand5(w2, b, b);
    nand Nand6(out, w1, w2);
endmodule

module AND (a, b, out);
    input a, b;
    output out;
    wire w;
    nand Nand2(w, a, b);
    nand Nand3(out, w, w);
endmodule


module NOT (a, out);
    input a;
    output out;
    nand Nand1(out, a, a);
endmodule
