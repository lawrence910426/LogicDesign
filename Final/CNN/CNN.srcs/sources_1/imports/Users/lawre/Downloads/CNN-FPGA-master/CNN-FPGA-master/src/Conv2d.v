`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/11 15:34:00
// Design Name: 
// Module Name: Conv2d
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Conv2d #(
    parameter integer BITWIDTH = 32,
    
    parameter integer DATAWIDTH = 25,
    parameter integer DATAHEIGHT = 25,
    parameter integer DATACHANNEL = 1,
    
    parameter integer FILTERHEIGHT = 2,
    parameter integer FILTERWIDTH = 2,
    parameter integer FILTERBATCH = 1,
    
    parameter integer STRIDEHEIGHT = 1,
    parameter integer STRIDEWIDTH = 1,
    
    parameter integer PADDINGENABLE = 0
)(
    input [BITWIDTH * DATAWIDTH * DATAHEIGHT * DATACHANNEL - 1 : 0]data,
    input [BITWIDTH * FILTERHEIGHT * FILTERWIDTH * DATACHANNEL * FILTERBATCH - 1 : 0] filterWeight,
    input [BITWIDTH * FILTERBATCH - 1 : 0] filterBias,
    input clk,
    input start,
    output [
        BITWIDTH * FILTERBATCH * (
            PADDINGENABLE == 0 ? (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH : (DATAWIDTH / STRIDEWIDTH)
        ) * (
            PADDINGENABLE == 0 ? (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT : (DATAHEIGHT / STRIDEHEIGHT)
        ) - 1 : 0
    ] result,
    output reg finish,
    output [1024 - 1 : 0] debug
);
    
    wire [BITWIDTH - 1 : 0] dataArray [0 : DATACHANNEL - 1][0 : DATAHEIGHT-1][0 : DATAWIDTH - 1];
    wire [BITWIDTH * FILTERHEIGHT * FILTERWIDTH * DATACHANNEL - 1 : 0] paramArray [
        0: (PADDINGENABLE == 1 ? DATAHEIGHT / STRIDEHEIGHT: (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT)-1
    ][
        0: (PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH)-1
    ];
    wire [BITWIDTH * DATACHANNEL * FILTERHEIGHT * FILTERWIDTH - 1 : 0] filterWeightArray [FILTERBATCH - 1 : 0];
    wire [BITWIDTH - 1 : 0] filterBiasArray [FILTERBATCH - 1 : 0];
    reg [BITWIDTH - 1 : 0] resultArray 
        [FILTERBATCH - 1 : 0] 
        [(DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH - 1 : 0]
        [(DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT - 1 : 0];
    
    
    // Data inputs
    genvar i, j, k, m, n;
    generate       
        for(i = 0; i < DATACHANNEL; i = i + 1) begin
            for(j = 0; j < DATAHEIGHT; j = j + 1) begin
                for(k = 0; k < DATAWIDTH; k = k + 1) begin
                    assign dataArray[i][j][k] = data[
                        (i * DATAHEIGHT * DATAWIDTH + j * DATAHEIGHT + k) * BITWIDTH + BITWIDTH - 1:
                        (i * DATAHEIGHT * DATAWIDTH + j * DATAHEIGHT + k) * BITWIDTH
                    ];
                end
            end
        end
        
        for (i = 0; i < DATACHANNEL; i = i + 1) begin
            for (j = 0; j < DATAHEIGHT - 1; j = j + 1) begin
                for (k = 0; k < DATAWIDTH - 1; k = k + 1) begin
                    assign paramArray[j][k]
                        [
                            (i + 1) * FILTERHEIGHT * FILTERWIDTH * BITWIDTH - 1:
                            i * FILTERHEIGHT * FILTERWIDTH * BITWIDTH
                        ] = {
                            dataArray[i][j + 0][k + 0],
                            dataArray[i][j + 0][k + 1],
                            dataArray[i][j + 1][k + 0],
                            dataArray[i][j + 1][k + 1]
                        };
                end
            end
        end
    endgenerate
    
    // Parameters
    generate 
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            assign filterWeightArray[i] = 
                filterWeight[
                    (i + 1) * DATACHANNEL * FILTERHEIGHT * FILTERWIDTH * BITWIDTH - 1:
                    i * DATACHANNEL * FILTERHEIGHT * FILTERWIDTH * BITWIDTH
                ];
        end
        
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            assign filterBiasArray[i] = 
                filterBias[
                    i * BITWIDTH + BITWIDTH - 1:
                    i * BITWIDTH
                ];
        end
    endgenerate
    
    // Outputs
    generate
        for(i = 0; i < FILTERBATCH; i = i + 1) begin
            for(m = 0; m < (PADDINGENABLE == 1 ? DATAHEIGHT / STRIDEHEIGHT: (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT); m = m + 1) begin
                for(n = 0; n < (PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH); n = n + 1) begin
                    assign result
                        [
                            (
                                i * (
                                    PADDINGENABLE == 1 ? DATAHEIGHT / STRIDEHEIGHT: (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT
                                ) * (
                                    PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH
                                ) * BITWIDTH + 
                                m * (
                                    PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH
                                ) * BITWIDTH + 
                                n * BITWIDTH
                            ) + BITWIDTH - 1
                            :
                            (
                                i * (
                                    PADDINGENABLE == 1 ? DATAHEIGHT / STRIDEHEIGHT: (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT
                                ) * (
                                    PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH
                                ) * BITWIDTH + 
                                m * (
                                    PADDINGENABLE == 1 ? DATAWIDTH / STRIDEWIDTH : (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH
                                ) * BITWIDTH + 
                                n * BITWIDTH
                            )
                        ] = resultArray[i][m][n];
                end
            end            
        end
    endgenerate
    
    reg [BITWIDTH * FILTERHEIGHT * FILTERWIDTH * DATACHANNEL - 1 : 0] _paramArray;
    reg [BITWIDTH * FILTERHEIGHT * FILTERWIDTH * DATACHANNEL - 1 : 0] _filterWeightArray;
    reg [BITWIDTH - 1 : 0] _filterBiasArray;
    wire [BITWIDTH - 1:0] ConvKernel_Result;
    reg ConvKernel_Start;
    wire ConvKernel_Finish;
    
    wire [1024 - 1 : 0] ConvKernel_debug;

    ConvKernel#(
        .BITWIDTH(BITWIDTH),
        .DATACHANNEL(DATACHANNEL),
        .LATENCY_MAX(10)
    ) convKernel (
        .data(_paramArray),
        .weight(_filterWeightArray),
        .bias(_filterBiasArray),
        .start(ConvKernel_Start),
        .clk(clk),
        .result(ConvKernel_Result),
        .finish(ConvKernel_Finish),
        .debug(ConvKernel_debug)
    );
    
    reg [FILTERBATCH:0] _i;
    reg [(DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT:0] _m;
    reg [(DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH:0] _n;
    reg external_calculation_finished, external_calculation_started;
    
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            _i <= 0;
            _m <= 0;
            _n <= 0;
            finish <= 0;
            external_calculation_finished <= 0;
            external_calculation_started <= 0;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end else if (finish == 1'b1) begin
            _i <= _i;
            _m <= _m;
            _n <= _n;
            finish <= 1'b1;
            external_calculation_finished <= 0;
            external_calculation_started <= 0;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end else if (_i == FILTERBATCH) begin
            _i <= 0;
            _m <= 0;
            _n <= 0;
            finish <= 1'b1;
            external_calculation_finished <= 0;
            external_calculation_started <= 0;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end else if (_m == (DATAHEIGHT - FILTERHEIGHT + 1) / STRIDEHEIGHT) begin
            _i <= _i + 1;
            _m <= 0;
            _n <= _n;
            finish <= 1'b0;
            external_calculation_finished <= 0;
            external_calculation_started <= 0;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end else if (_n == (DATAWIDTH - FILTERWIDTH + 1) / STRIDEWIDTH) begin
            _i <= _i;
            _m <= _m + 1;
            _n <= 0;
            finish <= 1'b0;
            external_calculation_finished <= 0;
            external_calculation_started <= 0;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end else if (ConvKernel_Finish == 1 && external_calculation_started == 1 && external_calculation_finished == 0) begin
            _i <= _i;
            _m <= _m;
            _n <= _n + 1;
            finish <= 1'b0;
            external_calculation_finished <= 1;
            external_calculation_started <= 0;
            
            resultArray[_i][_m][_n] <= ConvKernel_Result;
        end else if(external_calculation_started == 0) begin
            _i <= _i;
            _m <= _m;
            _n <= _n;
            finish <= 1'b0;
            external_calculation_finished <= 0;
            external_calculation_started <= 1;
            
            _paramArray <= paramArray[_m][_n];
            _filterWeightArray <= filterWeightArray[_i];
            _filterBiasArray <= filterBiasArray[_i];
            ConvKernel_Start <= 1;
        end else begin
            _i <= _i;
            _m <= _m;
            _n <= _n;
            finish <= 1'b0;
            external_calculation_finished <= 0;
            external_calculation_started <= 1;
            
            _paramArray <= _paramArray;
            _filterWeightArray <= _filterWeightArray;
            _filterBiasArray <= _filterBiasArray;
            ConvKernel_Start <= 0;
        end
    end
endmodule
