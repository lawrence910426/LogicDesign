`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 19:25:07
// Design Name: 
// Module Name: Universal_Gate
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


module Universal_Gate(a, b, out);
    input a, b;
    output out;
    wire b_n;
    
    not n1(b_n, b);
    and a1(out, b_n, b);
    
endmodule
