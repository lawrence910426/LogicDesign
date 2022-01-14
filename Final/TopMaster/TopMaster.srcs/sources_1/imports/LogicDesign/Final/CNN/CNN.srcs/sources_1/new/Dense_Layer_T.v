module DenseLayer_T();
    reg clk = 1;
    reg [32 * 4 - 1:0] Model_Input_reg = {4{32'b0_10000000_10000000000000000000001}};
    reg [32 * 4 * 3 - 1 : 0] weight = {12{32'b0_10000000_10000000000000000000001}};
    reg [32 * 3 - 1 : 0] bias = {3{32'b0_10000011_10000000000000000000001}};
    wire [32 * 3 - 1:0] full_output;
    reg full_start;
    wire full_finish;
    
    Dense_Layer #(
        .LENGTH(4),
        .UNITS(3)
    ) dense_1 (
        .Model_Input(Model_Input_reg), .Model_Output(full_output),
        .weight(weight), .bias(bias), .clk(clk), 
        .start(full_start), .finish(full_finish)
    );
    
    always #1 clk = 1 - clk;
    initial begin
        full_start = 1;
        #2;
        full_start = 0;
        #1000;
        $finish;
    end
endmodule