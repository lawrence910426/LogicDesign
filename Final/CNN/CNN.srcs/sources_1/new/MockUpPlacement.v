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
    wire [32 * 5 * 5 * 20 - 1:0] conv_2_out;
    
    Convolution_Layer #(
        .DATAWIDTH(12),
        .DATAHEIGHT(12),
        .DATACHANNEL(8),
        .FILTERBATCH(20)
    ) conv_2 (
        .clk(clk), .start(start),
        .Model_Input(conv_1_out), .Model_Output(conv_2_out),
        .weight(0), .bias(0), .finish(finish)
    );
endmodule
