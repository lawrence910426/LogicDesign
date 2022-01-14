module Conv2d_T();
    reg clk = 1;
    wire [32 * (3 - 1) * (3 - 1) * 2 - 1:0] conv_out;
    reg Conv2d_Start;
    wire Conv2d_Finish;
    wire [1024 - 1 : 0] debug;
    reg [1 * 3 * 3 * 32 - 1:0] Model_Input_reg = {9{32'b0_10000000_10000000000000000000001}};
    reg [32 * 2 * 2 * 1 * 2 - 1:0] weight_1 = {8{32'b0_10000000_10000000000000000000001}};
    reg [32 * 2 - 1:0] bias_1 = {2{32'b0_10000111_10000000000000000000001}};
    
    Conv2d #(
        .BITWIDTH(32),
        .DATAWIDTH(3), .DATAHEIGHT(3), 
        .DATACHANNEL(1),
        .FILTERHEIGHT(2), .FILTERWIDTH(2), .FILTERBATCH(2),
        .STRIDEHEIGHT(1), .STRIDEWIDTH(1),
        .PADDINGENABLE(0)
    ) conv ( 
        .data(Model_Input_reg),  .clk(clk), .start(Conv2d_Start),
        .filterWeight(weight_1), .filterBias(bias_1), 
        .result(conv_out), .finish(Conv2d_Finish), .debug(debug)
    );
    
    always #1 clk = 1 - clk;
    initial begin
        Conv2d_Start = 1;
        #2;
        Conv2d_Start = 0;
        #1000000;
        $finish;
    end
endmodule