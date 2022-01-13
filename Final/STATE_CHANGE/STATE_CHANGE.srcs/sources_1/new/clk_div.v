`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/13 17:09:23
// Design Name: 
// Module Name: clk_div
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


module clk_div(clk, clk_1s);
    input clk;
    output clk_1s;
    
    reg [24:0] clk_count;
    
    always @(posedge clk) begin
        if(clk_count < 25'd33554431) clk_count = clk_count + 1'b1;
        else clk_count = 25'd0;
    end
    
    assign clk_1s = clk_count[25];
endmodule
