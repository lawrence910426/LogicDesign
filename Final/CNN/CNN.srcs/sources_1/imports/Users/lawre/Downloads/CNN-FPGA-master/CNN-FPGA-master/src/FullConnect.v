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
    parameter FILTERBATCH = 1,
    parameter LATENCY_MAX = 10
)(
    input [BITWIDTH * LENGTH - 1 : 0] data,
    input [BITWIDTH * LENGTH * FILTERBATCH - 1 : 0] weight,
    input [BITWIDTH * FILTERBATCH - 1 : 0] bias,
    input start,
    input clk,
    output [BITWIDTH * FILTERBATCH - 1 : 0] result,
    output finish
);
    wire [BITWIDTH - 1:0] dataArray [LENGTH - 1 : 0];
    wire [BITWIDTH - 1:0] biasArray [FILTERBATCH - 1 : 0];
    wire [BITWIDTH - 1:0] weightArray [LENGTH - 1 : 0] [FILTERBATCH - 1 : 0];
    reg [BITWIDTH - 1:0] resultArray [FILTERBATCH - 1 : 0];
    
    genvar i, j;
    generate
        for (i = 0; i < FILTERBATCH; i = i + 1) begin
            assign biasArray[i] = bias[(i + 1) * BITWIDTH - 1: i * BITWIDTH];
            assign result[(i + 1) * BITWIDTH - 1: i * BITWIDTH] = resultArray[i];
        end
        
        for (i = 0; i < FILTERBATCH; i = i + 1) begin
            for (j = 0; j < LENGTH; j = j + 1) begin
                assign weightArray[j][i] = weight[
                    j * FILTERBATCH * BITWIDTH + BITWIDTH - 1:
                    j * FILTERBATCH * BITWIDTH
                ];
            end
        end
    endgenerate
    
    reg [BITWIDTH - 1:0] Sum, X, Y;
    reg [10 - 1:0] Latency;
    reg [FILTERBATCH - 1:0] _i;
    reg [LENGTH - 1:0] _j;
    reg Finish, Reset_Sum_Required;
    
    wire [BITWIDTH - 1:0] Sum_Output, Increment;
    
    assign finish = Finish;
    
    FLOAT32_ADD Summer      ( .a(Sum), .b(Increment), .out(Sum_Output) );
    FLOAT32_MUL Multipler   ( .a(X),   .b(Y),         .out(Increment) );
    
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            _i <= 0;
            _j <= 0;
            Latency <= 0;
            Finish <= 0;
            Reset_Sum_Required <= 1;
            
            resultArray[0][0] <= 0;
        end else if (Finish == 1'b1) begin
            _i <= 0;
            _j <= 0;
            Latency <= 0;
            Finish <= 1;
            Reset_Sum_Required <= Reset_Sum_Required;
        end else if (Reset_Sum_Required == 1) begin
            _i <= _i;
            _j <= _j;
            Latency <= Latency;
            Finish <= Finish;
            Reset_Sum_Required <= 0;
            
            Sum <= biasArray[_j];
        end else if (_i == FILTERBATCH) begin
            _i <= 0;
            _j <= _j + 1;
            Latency <= Latency;
            Finish <= 0;
            Reset_Sum_Required <= 1;
            
            resultArray[_j] <= Sum;
        end else if (_j == LENGTH) begin
            _i <= _i;
            _j <= _j;
            Latency <= Latency;
            Finish <= 1;
            Reset_Sum_Required <= Reset_Sum_Required;
        end else if (Latency == LATENCY_MAX) begin
            _i <= _i + 1;
            _j <= _j;
            Latency <= 0;
            Finish <= 0;
            Reset_Sum_Required <= Reset_Sum_Required;
            
            X <= weightArray[_j][_i];
            Y <= dataArray[_i];
        end else begin
            _i <= _i;
            _j <= _j;
            Latency <= Latency + 1;
            Finish <= 0;
            Reset_Sum_Required <= Reset_Sum_Required;
            
            X <= X;
            Y <= Y;
        end
    end
endmodule
