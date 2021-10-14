`timescale 1s/1ps

module Carry_Look_Ahead_Adder_8bit(a, b, c0, s, c8, debug);
    input [7:0] a, b;
    input c0;
    output [7:0] s;
    output c8;
    
    output [16:0] debug;
    
    wire [7:0] p, g;
    wire [1:0] P, G;
    wire [2:0] c1_3, c5_7;
    wire c4;
    
    CLA_Generator_4bit
        Low_Genrator (
            p[3:0], g[3:0], c0,
            P[0], G[0], c1_3
        ),
        High_Generator (
            p[7:4], g[7:4], c4,
            P[1], G[1], c5_7
        );
        
    CLA_Generator_2bit
        Generator (
            P, G, c0,
            {c8, c4}
        );
    
    genvar i;
    generate
        for (i = 1; i <= 3; i = i + 1) begin
            Adder adder1_3 (a[i], b[i], c1_3[i - 1], s[i], p[i], g[i]);
        end
        for (i = 5; i <= 7; i = i + 1) begin
            Adder adder5_7 (a[i], b[i], c5_7[i - 5], s[i], p[i], g[i]);
        end
    endgenerate
    Adder adder0 (a[0], b[0], c0, s[0], p[0], g[0]);
    Adder adder4 (a[4], b[4], c4, s[4], p[4], g[4]);
    
    /*
    always @*
        $display ("Carry_Look_Ahead_Adder_8bit: %b %b %b %b", 
            p[0], p[1], p[2], p[3]);
    */
    
    // assign debug[8:0] = {c8, c5_7, c4, c1_3, c0};
    // assign debug[7:0] = p[7:0];
    // assign debug[15:8] = g[7:0];
endmodule

module CLA_Generator_4bit(pin, gin, cin, pout, gout, cout, debug);
    input [3:0] pin, gin;
    input cin;
    output [2:0] cout;
    output pout, gout;
    
    output [16:0] debug;
    
    wire    c1_term1,
            c2_term1, c2_term2,
            c3_term1, c3_term2, c3_term3,
            gout_term1, gout_term2, gout_term3, gout_term4;
    
    // pout
    AND4 _1 (pout, pin[0], pin[1], pin[2], pin[3]);
    
    // c1
    AND _2 (c1_term1, cin, pin[0]);
    OR _3 (cout[0], c1_term1, gin[0]);
    
    // c2
    AND3 _4 (c2_term1, cin, pin[0], pin[1]);
    AND _5 (c2_term2, gin[0], pin[1]);
    OR3 _6 (cout[1], c2_term1, c2_term2, gin[1]);
    
    // c3
    AND4 _7 (c3_term1, cin, pin[0], pin[1], pin[2]);
    AND3 _8 (c3_term2, gin[0], pin[1], pin[2]);
    AND _9 (c3_term3, gin[1], pin[2]);
    OR4  _10(cout[2], c3_term1, c3_term2, c3_term3, gin[2]);
    
    // gout
    AND5 _11 (gout_term1, cin, pin[0], pin[1], pin[2], pin[3]);
    AND4 _12 (gout_term2, gin[0], pin[1], pin[2], pin[3]);
    AND3 _13 (gout_term3, gin[1], pin[2], pin[3]);
    AND _14 (gout_term4, gin[2], pin[3]);
    OR5 _15 (gout, gout_term1, gout_term2, gout_term3, gout_term4, gin[3]);
    
    assign debug[3:0] = {cout, gout};
    
    /*
    always @*
        $display ("CLA_Generator_4bit: %b %b %b %b -> %b", 
            pin[0], pin[1], pin[2], pin[3], pout);
    */
endmodule

module CLA_Generator_2bit(pin, gin, cin, cout, debug);
    input [1:0] pin, gin;
    input cin;
    output [1:0] cout;
    
    output [16:0] debug;
    
    wire    c1_term1,
            c2_term1, c2_term2;
            
    // c1
    AND _1 (c1_term1, cin, pin[0]);
    OR _2 (cout[0], c1_term1, gin[0]);
    
    // c2
    AND3 _3 (c2_term1, cin, pin[0], pin[1]);
    AND _4 (c2_term2, gin[0], pin[1]);
    OR3 _5 (cout[1], c2_term1, c2_term2, gin[1]);
    
    assign debug[1:0] = pin[1:0];
    assign debug[3:2] = gin[1:0];
    assign debug[5:4] = cout[1:0];

    /*
    always @*
        $display ("CLA_Generator_2bit: %b %b %b -> %b %b %b", 
            cin, pin[0], pin[1], c1_term1, c2_term1, c2_term2);
    */
endmodule

module Adder(a, b, c, s, p, g);
    input a, b, c;
    output s, p, g;
    
    XOR _1 (p, a, b);
    AND _2 (g, a, b);
    XOR _3 (s, p, c);
endmodule