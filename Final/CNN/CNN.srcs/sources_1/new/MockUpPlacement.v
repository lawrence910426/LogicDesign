`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2022 10:21:56 AM
// Design Name: 
// Module Name: MockUpPlacement
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


module MockUpPlacement(
    input clk,
    input start,
    output finish
);
    wire [32 - 1:0] r, p, s;
    wire [4 - 1:0] h;
        
    CNN chip (
        clk,
        start,
        0,
        r, p, s, h,
        finish
    );
endmodule
