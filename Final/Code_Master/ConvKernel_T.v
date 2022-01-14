module ConvKernel_T();
    reg [32 * 2 * 2 * 10 - 1 : 0] _paramArray = {40{32'b0_10000000_10000000000000000000001}};
    reg [32 * 2 * 2 * 10 - 1 : 0] _filterWeightArray = {40{32'b0_10000000_10000000000000000000001}};
    reg [32 - 1 : 0] _filterBiasArray = 32'b0_00000000_00000000000000000000000;
    wire [32 - 1:0] ConvKernel_Result;
    reg ConvKernel_Start;
    wire ConvKernel_Finish;
    reg clk = 1;

    ConvKernel#(
        .BITWIDTH(32),
        .DATACHANNEL(10),
        .LATENCY_MAX(10)
    ) convKernel (
        .data(_paramArray),
        .weight(_filterWeightArray),
        .bias(_filterBiasArray),
        .start(ConvKernel_Start),
        .clk(clk),
        .result(ConvKernel_Result),
        .finish(ConvKernel_Finish)
    );
    
    always #1 clk = 1 - clk;
    initial begin
        ConvKernel_Start = 1;
        #2;
        ConvKernel_Start = 0;
        #1000;
        $finish;
    end
endmodule