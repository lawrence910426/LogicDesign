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
    parameter LATENCY_MAX = 4
)(
    input [BITWIDTH * DATACHANNEL * 2 * 2 - 1 : 0] data,
    input [BITWIDTH * DATACHANNEL * 2 * 2 - 1 : 0] weight,
    input [BITWIDTH - 1 : 0] bias,
    input start,
    input clk,
    output [BITWIDTH - 1 : 0] result,
    output finish,
    output [1024 - 1 : 0] debug
);
    wire [BITWIDTH - 1 : 0] data_wire [DATACHANNEL * 2 * 2 - 1:0];
    wire [BITWIDTH - 1 : 0] weight_wire [DATACHANNEL * 2 * 2 - 1:0];
    generate
        genvar j;
        for (j = 0; j < DATACHANNEL * 2 * 2; j = j + 1) begin
            assign data_wire[j] = data[j * BITWIDTH + BITWIDTH - 1:j * BITWIDTH];
            assign weight_wire[j] = weight[j * BITWIDTH + BITWIDTH - 1:j * BITWIDTH];
        end
    endgenerate
    
    reg [BITWIDTH - 1:0] Sum, Increment, X, Y;
    reg [10 - 1:0] Latency;
    reg [DATACHANNEL + 3 - 1:0] i;
    reg Finish;
    
    wire [BITWIDTH - 1:0] Sum_Output, Z;
    
    FLOAT32_ADD Summer      ( .a(Sum), .b(Increment), .out(Sum_Output) );
    FLOAT32_MUL Multipler   ( .a(X),   .b(Y),         .out(Z) );
    
    assign 
        finish = Finish, 
        result = Sum;
    
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            Sum <= bias;
            Increment <= 0;
            X <= 0;
            Y <= 0;
            Latency <= 0;
            i <= 0;
            Finish <= 1'b0;
        end else if (Finish == 1'b1) begin
            Sum <= Sum;
            Increment <= 0;
            X <= 0;
            Y <= 0;
            Latency <= 0;
            i <= 0;
            Finish <= 1'b1;
        end else if (i == DATACHANNEL * 2 * 2) begin
            Sum <= Sum;
            Increment <= Increment;
            X <= X;
            Y <= Y;
            i <= i;
            Latency <= Latency + 1;
            Finish <= 1'b1;
        end else if (Latency == LATENCY_MAX) begin
            Sum <= Sum_Output;
            Increment <= Z;
            i <= i + 1;
            Latency <= 0;
            X <= data_wire[i];
            Y <= weight_wire[i];
            Finish <= 1'b0;
        end else begin
            Sum <= Sum;
            Increment <= Increment;
            X <= X;
            Y <= Y;
            i <= i;
            Latency <= Latency + 1;
            Finish <= 1'b0;
        end
    end
endmodule