`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/18 13:47:58
// Design Name: 
// Module Name: FullConnect
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


module FullConnect#(
    parameter BITWIDTH = 32,
    parameter LENGTH = 25,    
    parameter LENGTH_PLUS_1_POWER = 32,
    parameter FILTERBATCH = 1
)(
    input [BITWIDTH * LENGTH - 1 : 0] data,
    input [BITWIDTH * LENGTH * FILTERBATCH - 1 : 0] weight,
    input [BITWIDTH * FILTERBATCH - 1 : 0] bias,
    input clk,
    output [BITWIDTH * FILTERBATCH - 1 : 0] result
);
    wire [BITWIDTH * LENGTH - 1:0] out [0:FILTERBATCH - 1];
    wire [BITWIDTH - 1:0] biasArray [0:FILTERBATCH - 1];
    wire [BITWIDTH - 1:0] resultArray [0:FILTERBATCH - 1];
    
    genvar i, j;
    generate
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            assign biasArray[i] = bias[(i + 1) * BITWIDTH - 1: i * BITWIDTH];
            assign result[(i + 1) * BITWIDTH - 1: i * BITWIDTH] = resultArray[i];
        end
    endgenerate
    
    generate 
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            for(j = 0; j < LENGTH; j = j + 1) begin
                Mult#(BITWIDTH) mult(
                    data[(j + 1) * BITWIDTH - 1:j * BITWIDTH], 
                    weight[(i * LENGTH + j) * BITWIDTH + BITWIDTH - 1 : (i * LENGTH + j) * BITWIDTH], 
                    clk,
                    out[i][j * BITWIDTH + BITWIDTH - 1:j * BITWIDTH]
                );
            end
        end
    endgenerate

    generate
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            SumTree#(BITWIDTH, LENGTH + 1, LENGTH_PLUS_1_POWER) SumUp (
                .data({out[i], biasArray[i]}),
                .clk(clk),
                .result(resultArray[i])
            );
        end
    endgenerate
    
endmodule
