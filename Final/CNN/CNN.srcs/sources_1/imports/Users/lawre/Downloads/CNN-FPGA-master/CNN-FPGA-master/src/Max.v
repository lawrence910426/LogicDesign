`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/15 13:56:38
// Design Name: 
// Module Name: Max
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


module Max#(
    parameter BITWIDTH = 8,
    parameter LENGTH = 4 // Length must be 4
)(
    input [BITWIDTH * LENGTH - 1 : 0] data,
    output [BITWIDTH - 1 : 0] result
);
    wire [BITWIDTH - 1:0] dataArray[0:LENGTH - 1];
    
    genvar i;
    generate      
        for(i = 0; i < LENGTH; i = i + 1) begin
            assign dataArray[i] = data[i * BITWIDTH + BITWIDTH - 1: i * BITWIDTH];
        end
    endgenerate
    
    wire [BITWIDTH - 1:0] x, y;
    assign x = (dataArray[0] > dataArray[1] ? dataArray[0] : dataArray[1]); 
    assign y = (dataArray[0] > dataArray[1] ? dataArray[0] : dataArray[1]);
    assign result = (x > y ? x : y);
endmodule
