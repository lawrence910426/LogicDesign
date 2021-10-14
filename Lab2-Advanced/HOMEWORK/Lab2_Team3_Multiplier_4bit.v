`timescale 1ns/1ps

module Multiplier_4bit(a, b, p);
    input [3:0] a, b;
    output [7:0] p;
    
    wire [15:0] product;
    wire [11:0] cout, sum;
    
    genvar i;
    genvar j;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                AND production (product[i * 4 + j], a[i], b[j]); 
            end
        end
    endgenerate
    
    WIRE w (p[0], product[0]);
    FullAdder 
        _1  (product[0 * 4 + 1], product[1 * 4 + 0], 0,          p[1],          cout[0]),
        _2  (product[0 * 4 + 2], product[1 * 4 + 1], cout[0],    sum[1],        cout[1]),
        _3  (product[0 * 4 + 3], product[1 * 4 + 2], cout[1],    sum[2],        cout[2]),
        _4  (0,                  product[1 * 4 + 3], cout[2],    sum[3],        cout[3]),
        
        _5  (sum[1],             product[2 * 4 + 0], 0,          p[2],          cout[5]),
        _6  (sum[2],             product[2 * 4 + 1], cout[5],    sum[6],        cout[6]),
        _7  (sum[3],             product[2 * 4 + 2], cout[6],    sum[7],        cout[7]),
        _8  (cout[3],            product[2 * 4 + 3], cout[7],    sum[8],        cout[8]),
        
        _9  (sum[6],            product[3 * 4 + 0], 0,          p[3],          cout[9]),
        _10 (sum[7],            product[3 * 4 + 1], cout[9],    p[4],          cout[10]),
        _11 (sum[8],            product[3 * 4 + 2], cout[10],   p[5],          cout[11]),
        _12 (cout[8],           product[3 * 4 + 3], cout[11],   p[6],          p[7]);
endmodule

module FullAdder (a, b, c0, s, c1);
    input a, b, c0;
    output s, c1;
    
    wire carry, sum;
    HalfAdder   ha1 (a, b, sum, carry),
                ha2 (sum, c0, s, c1);
endmodule

module HalfAdder (a, b, s, c);
    input a, b;
    output s, c;
    
    XOR g1 (s, a, b);
    AND g2 (c, a, b);
endmodule