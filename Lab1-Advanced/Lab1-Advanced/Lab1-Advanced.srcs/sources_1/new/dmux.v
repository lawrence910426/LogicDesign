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
    output [3:0] a, 
    output [3:0] b, 
    output [3:0] c, 
    output [3:0] d
);
    or (a[0], 1'b1, 1'b1);
    or (a[1], 1'b1, 1'b1);
    or (a[2], 1'b1, 1'b1);
    or (a[3], 1'b1, 1'b1);
endmodule
