module Convolution_Layer#(
    parameter DATAWIDTH = 25,
    parameter DATAHEIGHT = 25,
    parameter DATACHANNEL = 3,
    parameter DATACHANNEL_POWER = 4,
    parameter FILTERBATCH = 8
)(
    input clk,
    input [DATAWIDTH * DATAHEIGHT * DATACHANNEL * 32 - 1:0] Model_Input,
    input [32 * 2 * 2 * DATACHANNEL * FILTERBATCH - 1:0] weight,
    input [32 * FILTERBATCH - 1:0] bias,
    output [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH - 1:0] Model_Output
);
    // Convolution
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH - 1:0] conv_out;
    Conv2d #(
        .BITWIDTH(32),
        .DATAWIDTH(DATAWIDTH), .DATAHEIGHT(DATAHEIGHT), 
        .DATACHANNEL(DATACHANNEL), .DATACHANNEL_POWER(DATACHANNEL_POWER),
        .FILTERHEIGHT(2), .FILTERWIDTH(2), .FILTERBATCH(FILTERBATCH),
        .STRIDEHEIGHT(1), .STRIDEWIDTH(1),
        .PADDINGENABLE(0)
    ) conv ( 
        .data(Model_Input),  .clk(clk),
        .filterWeight(weight), .filterBias(bias), 
        .result(conv_out) 
    );

    // Activation
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH - 1:0] relu_out;
    Relu_activation #(
        .BITWIDTH(32),
        .DATAWIDTH(DATAWIDTH - 1), .DATAHEIGHT(DATAHEIGHT - 1), 
        .DATACHANNEL(FILTERBATCH)
    ) relu ( .data(conv_out), .result(relu_out) );
    
    // Max pool
    wire [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH - 1:0] max_pool_out;
    Max_pool #(
        .BITWIDTH(32),
        .DATAWIDTH(DATAWIDTH - 1), .DATAHEIGHT(DATAHEIGHT - 1), .DATACHANNEL(FILTERBATCH),
        .KWIDTH(2), .KHEIGHT(2)
    )
    max_pool ( .data(relu_out), .result(max_pool_out) );

    assign Model_Output = max_pool_out;
endmodule