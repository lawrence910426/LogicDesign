module ConvKernel_T();
    reg [32 * 2 * 2 * 10 - 1 : 0] _paramArray = 0;
    reg [32 * 2 * 2 * 10 - 1 : 0] _filterWeightArray = 1;
    reg [32 - 1 : 0] _filterBiasArray = 4;
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
        #1000;
        $finish;
    end
endmodule