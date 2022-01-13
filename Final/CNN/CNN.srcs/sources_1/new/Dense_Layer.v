module Dense_Layer#(
    parameter LENGTH = 100,
    parameter UNITS = 8
)(
    input clk,
    input start,
    input [32 * LENGTH - 1:0] Model_Input,
    input [32 * LENGTH * UNITS - 1:0] weight,
    input [32 * UNITS - 1:0] bias,
    output reg finish,
    output [32 * UNITS - 1:0] Model_Output
);
    reg [32 * LENGTH - 1:0] Model_Input_reg;
    // Matrix multiplication
    wire [32 * UNITS - 1:0] full_output;
    reg full_start;
    wire full_finish;
    FullConnect #(
        .BITWIDTH(32),
        .LENGTH(LENGTH),
        .FILTERBATCH(UNITS)
    ) full (
        .data(Model_Input), .result(full_output),
        .weight(weight), .bias(bias),
        .clk(clk), .finish(full_finish), .start(full_start)
    );
    
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            Model_Input_reg <= Model_Input;
            full_start <= 1;
        end else if(full_finish == 1'b1) begin
            finish <= 1;
        end
    end

    // Activation
    Relu_activation #(
        .BITWIDTH(32),
        .DATAWIDTH(1), .DATAHEIGHT(1), .DATACHANNEL(UNITS)
    ) relu (
        .data(full_output), .result(Model_Output)
    );
endmodule