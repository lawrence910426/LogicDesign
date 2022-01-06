module Dense_Layer #(
    parameter LENGTH = 100,
    parameter LENGTH_PLUS_1_POWER = 128,
    parameter UNITS = 8
)(
    input clk,
    input [LENGTH * 32 - 1:0] Model_Input,
    input [32 * LENGTH * UNITS - 1:0] weight,
    input [32 * UNITS - 1:0] bias,
    output [32 * UNITS - 1:0] Model_Output
);
    wire [32 * UNITS - 1:0] full_output;
    FullConnect #(
        parameter BITWIDTH = 32,
        parameter LENGTH = LENGTH,    
        parameter LENGTH_PLUS_1_POWER = LENGTH_PLUS_1_POWER,
        parameter FILTERBATCH = 1
    ) full (
        .data(Model_Input), .result(full_output),
        .weight(weight), .bias(bias),
        .clk(clk)
    );

    Relu_activation #(
        parameter BITWIDTH = 32,
        parameter integer DATAWIDTH = 1,
        parameter integer DATAHEIGHT = 1,
        parameter integer DATACHANNEL = LENGTH
    ) relu (
        .data(full_output), .result(Model_Output)
    );
endmodule