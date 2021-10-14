`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 22:10:36
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder( a, b, cin, cout, sum);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire c0, c1, c2;
    
    Full_Adder fa1 (.a(a[0]), .b(b[0]), .cin(cin), .cout(c0), .sum(sum[0]));
    Full_Adder fa2 (.a(a[1]), .b(b[1]), .cin(c0), .cout(c1), .sum(sum[1]));
    Full_Adder fa3 (.a(a[2]), .b(b[2]), .cin(c0), .cout(c2), .sum(sum[2]));
    Full_Adder fa4 (.a(a[3]), .b(b[3]), .cin(c2), .cout(cout), .sum(sum[3]));
    
endmodule
