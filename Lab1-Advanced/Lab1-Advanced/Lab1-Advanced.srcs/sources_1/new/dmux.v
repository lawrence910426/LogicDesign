`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2021 03:40:35 AM
// Design Name: 
// Module Name: dmux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dmux(
    input [3:0] in, 
    input [1:0] sel,
    output [3:0] A, 
    output [3:0] B, 
    output [3:0] C, 
    output [3:0] D
);
    wire a, b, c, d;
    wire [1:0] nsel;
    
    not (nsel[0], sel[0]);
    not (nsel[1], sel[1]);
    
    and (a, nsel[0], nsel[1]);
    and (b, sel[0], nsel[1]);
    and (c, nsel[0], sel[1]);
    and (d, sel[0], sel[1]);
    
    sdmux   _0(
                .in(in[0]), 
                .a(a), .b(b), .c(c), .d(d), 
                .A(A[0]), .B(B[0]), .C(C[0]), .D(D[0])
             ),
            _1(
                .in(in[1]), 
                .a(a), .b(b), .c(c), .d(d), 
                .A(A[1]), .B(B[1]), .C(C[1]), .D(D[1])
             ),
            _2(
                .in(in[2]), 
                .a(a), .b(b), .c(c), .d(d), 
                .A(A[2]), .B(B[2]), .C(C[2]), .D(D[2])
             ),
            _3(
                .in(in[3]), 
                .a(a), .b(b), .c(c), .d(d), 
                .A(A[3]), .B(B[3]), .C(C[3]), .D(D[3])
             );
endmodule

module sdmux (
    input in,
    input a, input b, input c, input d,
    output A, output B, output C, output D
);
    and (A, a, in);
    and (B, b, in);
    and (C, c, in);
    and (D, d, in);
endmodule
