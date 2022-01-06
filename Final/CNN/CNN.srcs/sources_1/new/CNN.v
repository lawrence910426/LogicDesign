`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2022 10:50:39 PM
// Design Name: 
// Module Name: CNN
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

module CNN(
    input clk,
    input [25 * 25 * 3 * 8 - 1:0] CAM,
    output [7 - 1:0] Rock,
    output [7 - 1:0] Paper,
    output [7 - 1:0] Scissors,
    output reg [4 - 1:0] Highest
);
    // Make CAM information to float
    wire [32 * 25 * 25 * 3] Model_Input;  


    // Weights definition
    wire weight_1;
    wire bias_1;
    wire weight_2;
    wire bias_2;
    wire weight_3;
    wire bias_3;
    wire weight_4;
    wire bias_4;  
    
    // 1st Convolution
    wire [32 * 12 * 12 * 8] conv_1_out;
    Convolution_Layer #(
        parameter DATAWIDTH = 25,
        parameter DATAHEIGHT = 25,
        parameter DATACHANNEL = 3,
        parameter DATACHANNEL_POWER = 4,
        parameter FILTERBATCH = 8,
    ) conv_1 (
        .clk(clk),
        .Model_Input(Model_Input), .Model_Output(conv_1_out),
        .weight(weight_1), .bias(bias_1),
    );
    
    
    // 2nd Convolution
    wire [32 * 5 * 5 * 20] conv_2_out;
    Convolution_Layer #(
        parameter DATAWIDTH = 12,
        parameter DATAHEIGHT = 12,
        parameter DATACHANNEL = 8,
        parameter DATACHANNEL_POWER = 8,
        parameter FILTERBATCH = 20,
    ) conv_2 (
        .clk(clk),
        .Model_Input(conv_1_out), .Model_Output(conv_2_out),
        .weight(weight_2), .bias(bias_2),
    );

    
    //  First dense
    wire [32 * 8] dense_1_out;
    Dense_Layer #(
        parameter LENGTH = 500,
        parameter LENGTH_PLUS_1_POWER = 512,
        parameter UNITS = 8
    ) dense_1 (
        .Model_Input(conv_2_out), .Model_Output(dense_1_out),
        .weight(weight_3), .bias(bias_3), .clk(clk)
    );

    // Second dense
    wire [32 * 3] dense_2_out;
    Dense_Layer #(
        parameter LENGTH = 8,
        parameter LENGTH_PLUS_1_POWER = 16,
        parameter UNITS = 3
    ) dense_1 (
        .Model_Input(dense_1_out), .Model_Output(dense_2_out),
        .weight(weight_4), .bias(bias_4), .clk(clk)
    );

    // Find the maximum and output Highest
    assign Rock = 7'd0, Scissors = 7'd0, Paper = 7'd0;
    
    always @ (posedge clk) begin
        if (dense_2_out[0] > dense_2_out[1]) begin
            Highest <= (dense_2_out[0] > dense_2_out[2] ? 3'd0 : 3'd2);
        end else begin
            Highest <= (dense_2_out[1] > dense_2_out[2] ? 3'd1 : 3'd2);
        end
    end
endmodule
