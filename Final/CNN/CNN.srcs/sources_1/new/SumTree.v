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
    wire [BITWIDTH - 1:0] SumTree [VALUES_POWER - 1:0];
    generate
        genvar i;
        for(i = 1; i < VALUES_POWER; i = i + 1) begin
            FLOAT32_ADD_PIPELINE finalize (
                .a(
                    0 <= i * 2 - VALUES_POWER && i * 2 - VALUES_POWER < VALUES ? 
                        data[
                            (i * 2 - VALUES_POWER + 1) * BITWIDTH - 1:
                            (i * 2 - VALUES_POWER) * BITWIDTH
                        ] :
                    0 <= i * 2 - VALUES_POWER && VALUES <= i * 2 - VALUES_POWER ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 :
                    SumTree[i * 2]
                ), 
                .b(
                    0 <= i * 2 + 1 - VALUES_POWER && i * 2 + 1 - VALUES_POWER < VALUES ? 
                        data[
                            (i * 2 + 1 - VALUES_POWER + 1) * BITWIDTH - 1:
                            (i * 2 + 1 - VALUES_POWER) * BITWIDTH
                        ] :
                    0 <= i * 2 + 1 - VALUES_POWER && VALUES <= i * 2 + 1 - VALUES_POWER ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 :
                    SumTree[i * 2 + 1]
                ),
                .out(SumTree[i]),
                .clk(clk)
            );
        end
    endgenerate

    assign result = SumTree[1];
endmodule
