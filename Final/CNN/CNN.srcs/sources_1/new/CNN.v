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
    input start,
    input [25 * 25 * 3 * 8 - 1:0] CAM,
    output [32 - 1:0] Rock,
    output [32 - 1:0] Paper,
    output [32 - 1:0] Scissors,
    output reg [4 - 1:0] Highest,
    output reg finish
);
    // Make CAM information to float
    wire [32 * 25 * 25 * 3 - 1:0] Model_Input;
    assign Model_Input = 0;

    // Weights definition
    wire [32 * 2 * 2 * 3 * 8 - 1:0] weight_1;
    wire [32 * 8 - 1:0] bias_1;
    conv1_params ( .weight(weight_1), .bias(bias_1) );
    
    wire [32 * 2 * 2 * 8 * 20 - 1:0] weight_2;
    wire [32 * 20 - 1:0] bias_2;
    conv2_params ( .weight(weight_2), .bias(bias_2) );
    
    wire [32 * 500 * 8 - 1:0] weight_3;
    wire [32 * 8 - 1:0] bias_3;
    dense1_params ( .weight(weight_3), .bias(bias_3) );
    
    wire [32 * 8 * 3 - 1:0] weight_4;
    wire [32 * 3 - 1:0] bias_4;  
    dense2_params ( .weight(weight_4), .bias(bias_4) );
    
    assign 
        weight_1 = 0, bias_1 = 0,
        weight_2 = 0, bias_2 = 0,
        weight_3 = 0, bias_3 = 0,
        weight_4 = 0, bias_4 = 0;
    
    // 1st Convolution
    wire [32 * 12 * 12 * 8 - 1:0] conv_1_out;
    wire conv_1_finish;
    reg conv_1_start;
    Convolution_Layer #(
        .DATAWIDTH(25),
        .DATAHEIGHT(25),
        .DATACHANNEL(3),
        .FILTERBATCH(8)
    ) conv_1 (
        .clk(clk), .start(conv_1_start),
        .Model_Input(Model_Input), .Model_Output(conv_1_out),
        .weight(weight_1), .bias(bias_1), .finish(conv_1_finish)
    );
    
    
    // 2nd Convolution
    wire [32 * 5 * 5 * 20 - 1:0] conv_2_out;
    wire conv_2_finish;
    reg conv_2_start;
    Convolution_Layer #(
        .DATAWIDTH(12),
        .DATAHEIGHT(12),
        .DATACHANNEL(8),
        .FILTERBATCH(20)
    ) conv_2 (
        .clk(clk), .start(conv_2_start),
        .Model_Input(conv_1_out), .Model_Output(conv_2_out),
        .weight(weight_2), .bias(bias_2), .finish(conv_2_finish)
    );

    
    //  First dense
    wire [32 * 8 - 1:0] dense_1_out;
    wire dense_1_finish;
    reg dense_1_start;
    Dense_Layer #(
        .LENGTH(500),
        .UNITS(8)
    ) dense_1 (
        .Model_Input(conv_2_out), .Model_Output(dense_1_out),
        .weight(weight_3), .bias(bias_3), .clk(clk), 
        .start(dense_1_start), .finish(dense_1_finish)
    );

    // Second dense
    wire [32 * 3 - 1:0] dense_2_out;
    wire dense_2_finish;
    reg dense_2_start;
    Dense_Layer #(
        .LENGTH(8),
        .UNITS(3)
    ) dense_2 (
        .Model_Input(dense_1_out), .Model_Output(dense_2_out),
        .weight(weight_4), .bias(bias_4), .clk(clk),
        .start(dense_2_start), .finish(dense_2_finish)
    );
    
    // Module controller
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            conv_1_start = 1;
            conv_2_start = 0;
            dense_1_start = 0;
            dense_2_start = 0;
            finish = 0;
        end else if (conv_1_finish == 1'b1) begin
            conv_1_start = 0;
            conv_2_start = 1;
            dense_1_start = 0;
            dense_2_start = 0;   
            finish = 0;         
        end else if (conv_2_finish == 1'b1) begin
            conv_1_start = 0;
            conv_2_start = 0;
            dense_1_start = 1;
            dense_2_start = 0;
            finish = 0;
        end else if (dense_1_finish == 1'b1) begin
            conv_1_start = 0;
            conv_2_start = 0;
            dense_1_start = 0;
            dense_2_start = 1;
            finish = 0;
        end else if (dense_2_finish == 1'b1) begin
            conv_1_start = 0;
            conv_2_start = 0;
            dense_1_start = 0;
            dense_2_start = 0;
            finish = 1;
        end else begin
            conv_1_start = 0;
            conv_2_start = 0;
            dense_1_start = 0;
            dense_2_start = 0;
            finish = 0;
        end
    end

    // Find the maximum and output Highest
    assign 
        Rock = dense_2_out[0], 
        Scissors = dense_2_out[1], 
        Paper = dense_2_out[2];
    
    always @ (posedge clk) begin
        if (dense_2_out[0] > dense_2_out[1]) begin
            Highest <= (dense_2_out[0] > dense_2_out[2] ? 3'd0 : 3'd2);
        end else begin
            Highest <= (dense_2_out[1] > dense_2_out[2] ? 3'd1 : 3'd2);
        end
    end
endmodule
