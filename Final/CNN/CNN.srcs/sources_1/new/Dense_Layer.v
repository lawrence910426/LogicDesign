module Dense_Layer#(
    parameter BITWIDTH = 32,
    parameter LENGTH = 100,
    parameter LENGTH_PLUS_1_POWER = 128,
    parameter UNITS = 8
)(
    input clk,
    input [32 * LENGTH - 1:0] Model_Input,
    input [32 * LENGTH * UNITS - 1:0] weight,
    input [32 * UNITS - 1:0] bias,
    output [32 * UNITS - 1:0] Model_Output
);
    // Matrix multiplication
    wire [32 * UNITS - 1:0] full_output;
    FullConnect #(
        .BITWIDTH(32),
        .LENGTH(LENGTH), .LENGTH_PLUS_1_POWER(LENGTH_PLUS_1_POWER),
        .FILTERBATCH(UNITS)
    ) full (
        .data(Model_Input), .result(full_output),
        .weight(weight), .bias(bias),
        .clk(clk)
    );

    // Activation
    Relu_activation #(
        .BITWIDTH(32),
        .DATAWIDTH(1), .DATAHEIGHT(1), .DATACHANNEL(UNITS)
    ) relu (
        .data(full_output), .result(Model_Output)
    );
endmodule