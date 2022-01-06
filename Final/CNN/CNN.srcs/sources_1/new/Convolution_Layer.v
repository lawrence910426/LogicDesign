module Convolution_Layer #(
    parameter DATAWIDTH = 25,
    parameter DATAHEIGHT = 25,
    parameter DATACHANNEL = 3,
    parameter DATACHANNEL_POWER = 4,
    parameter FILTERBATCH = 8,
)(
    input clk,
    input [DATAWIDTH * DATAHEIGHT * DATACHANNEL * 32 - 1:0] Model_Input,
    input [32 * 2 * 2 * DATACHANNEL * FILTERBATCH - 1] weight,
    input [32 * FILTERBATCH - 1] bias,
    output [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH] Model_Output
);
    // Filters = FILTERBATCH & Kernel Size = 2
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH] conv_out;
    Conv2d #(
        parameter BITWIDTH = 32,
        
        parameter DATAWIDTH = DATAWIDTH,
        parameter DATAHEIGHT = DATAHEIGHT,
        parameter DATACHANNEL = DATACHANNEL,
        parameter DATACHANNEL_POWER = DATACHANNEL_POWER,
        
        parameter FILTERHEIGHT = 2,
        parameter FILTERWIDTH = 2,
        parameter FILTERBATCH = FILTERBATCH,
        
        parameter STRIDEHEIGHT = 1,
        parameter STRIDEWIDTH = 1,

        parameter PADDINGENABLE = 0
    ) conv ( 
        .data(Model_Input),  .clk(clk),
        .filterWeight(weight), .filterBias(bias), 
        .result(conv_out) 
    );

    // Normal relu
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH] relu_out;
    Relu_activation #(
        parameter BITWIDTH = 32,

        parameter DATAWIDTH = DATAWIDTH - 1,
        parameter DATAHEIGHT = DATAHEIGHT - 1,
        parameter DATACHANNEL = FILTERBATCH
    ) relu_1 ( .data(conv_out), .result(relu_out) );

    // Pool size = (2, 2) & Strides = (2, 2)
    wire [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH] max_pool_out;
    Max_pool #(
        parameter BITWIDTH = 32,
        
        parameter DATAWIDTH = DATAWIDTH - 1,
        parameter DATAHEIGHT = DATAHEIGHT - 1,
        parameter DATACHANNEL = FILTERBATCH,
        
        parameter KWIDTH = 2,
        parameter KHEIGHT = 2
    )
    max_pool_1 ( .data(relu_out), .result(max_pool_out) );

    assign Model_Output = max_pool_out;
endmodule