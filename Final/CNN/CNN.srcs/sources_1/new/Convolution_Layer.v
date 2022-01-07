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
    output [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH: - 10] Model_Output
);
    // Convolution
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH - 1:0] conv_out;
    Conv2d #(
        32,
        DATAWIDTH, DATAHEIGHT, DATACHANNEL, DATACHANNEL_POWER,
        2, 2, FILTERBATCH,
        1, 1,
        0
    ) conv ( 
        .data(Model_Input),  .clk(clk),
        .filterWeight(weight), .filterBias(bias), 
        .result(conv_out) 
    );

    // Activation
    wire [32 * (DATAWIDTH - 1) * (DATAHEIGHT - 1) * FILTERBATCH - 1:0] relu_out;
    Relu_activation #(
        32,
        DATAWIDTH - 1, DATAHEIGHT - 1, FILTERBATCH
    ) relu ( .data(conv_out), .result(relu_out) );
    
    // Max pool
    wire [32 * ((DATAWIDTH - 1) / 2) * ((DATAHEIGHT - 1) / 2) * FILTERBATCH:0] max_pool_out;
    Max_pool #(
        32,
        DATAWIDTH - 1, DATAHEIGHT - 1, FILTERBATCH,
        2, 2
    )
    max_pool ( .data(relu_out), .result(max_pool_out) );

    assign Model_Output = max_pool_out;
endmodule