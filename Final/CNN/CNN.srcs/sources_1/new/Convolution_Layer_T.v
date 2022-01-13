module Convolution_Layer_T();
    reg clk = 1;
    reg [1 * 3 * 3 * 32 - 1:0] Model_Input_reg = {9{32'b0_10000000_10000000000000000000001}};
    reg [32 * 2 * 2 * 1 * 2 - 1:0] weight_1 = {8{32'b0_10000000_10000000000000000000001}};
    reg [32 * 2 - 1:0] bias_1 = {2{32'b0_10001111_10000000000000000000001}};
    wire [32 * 1 * 1 * 2 - 1:0] conv_1_out;
    wire conv_1_finish;
    reg conv_1_start;
    
    Convolution_Layer #(
        .DATAWIDTH(3),
        .DATAHEIGHT(3),
        .DATACHANNEL(1),
        .FILTERBATCH(2)
    ) conv_1 (
        .clk(clk), .start(conv_1_start),
        .Model_Input(Model_Input_reg), .Model_Output(conv_1_out),
        .weight(weight_1), .bias(bias_1), .finish(conv_1_finish)
    );
    
    always #1 clk = 1 - clk;
    initial begin
        conv_1_start = 1;
        #2;
        conv_1_start = 0;
        #1000000;
        $finish;
    end
endmodule