`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/11 16:12:39
// Design Name: 
// Module Name: ConvKernel
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


module ConvKernel#(
    parameter BITWIDTH = 32,   
    parameter DATACHANNEL = 3,
    parameter DATACHANNEL_POWER = 4
)(
    input [BITWIDTH * DATACHANNEL * 2 * 2 - 1 : 0] data,
    input [BITWIDTH * DATACHANNEL * 2 * 2 - 1 : 0] weight,
    input [BITWIDTH - 1 : 0] bias,
    input clk,
    output [BITWIDTH - 1 : 0] result
);
    
    wire [BITWIDTH - 1 : 0] out [2 * 2 * DATACHANNEL - 1 : 0];
    
    generate
        genvar i;
        for(i = 0; i < 2 * 2 * DATACHANNEL; i = i + 1) begin
            Mult #(
                .BITWIDTH(BITWIDTH)
            ) mult (
                data[(i + 1) * BITWIDTH - 1 : i * BITWIDTH], 
                weight[(i + 1) * BITWIDTH - 1 : i * BITWIDTH], 
                clk,
                out[i]
            );
        end
    endgenerate
    
    wire [BITWIDTH * DATACHANNEL - 1:0] channels;
    generate
        wire [BITWIDTH - 1:0] x, y;
        for(i = 0; i < DATACHANNEL; i = i + 1) begin
            FLOAT32_ADD_PIPELINE
                X ( .a(out[i * 4 + 0]), .b(out[i * 4 + 1]), .out(x), .clk(clk) ),
                Y ( .a(out[i * 4 + 2]), .b(out[i * 4 + 3]), .out(y), .clk(clk) ),
                Z ( 
                    .a(x), .b(y), 
                    .out(channels[
                        i * BITWIDTH + BITWIDTH - 1:
                        i * BITWIDTH
                    ]), 
                    .clk(clk) 
		        );
        end
    endgenerate
    
    wire [BITWIDTH - 1:0] ValueSum;
    SumTree #(
        .BITWIDTH(BITWIDTH),   
        .VALUES(DATACHANNEL),
        .VALUES_POWER(DATACHANNEL_POWER)
    ) SumUp (
        .data(channels), .clk(clk), .result(ValueSum)
    );
    
    assign result = ValueSum;
endmodule
