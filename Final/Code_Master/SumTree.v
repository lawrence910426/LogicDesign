`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2022 10:05:53 PM
// Design Name: 
// Module Name: SumTree
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


// Similar to ZKW segment tree.

module SumTree#(
    parameter BITWIDTH = 32,   
    parameter VALUES = 3,
    parameter VALUES_POWER = 4
)(
    input [BITWIDTH * VALUES - 1 : 0] data,
    input clk,
    output [BITWIDTH - 1 : 0] result
);

    // Wasted 1 wire. SumTree[0]
    wire [BITWIDTH - 1:0] SumTree [VALUES_POWER * 2 - 1:0];
    generate
        genvar i;
        for(i = 0; i < VALUES; i = i + 1) begin
            assign SumTree[i + VALUES_POWER] = data[i * BITWIDTH + BITWIDTH - 1:i * BITWIDTH];
        end

        for(i = VALUES; i < VALUES_POWER; i = i + 1) begin
            assign SumTree[i + VALUES_POWER] = 32'd0;
        end

        for(i = 1; i < VALUES_POWER; i = i + 1) begin
            FLOAT32_ADD_PIPELINE SumUp (
                .a(SumTree[i * 2]), .b(SumTree[i * 2 + 1]),
                .out(SumTree[i]), .clk(clk)
            );
        end
    endgenerate

    assign result = SumTree[1];
endmodule