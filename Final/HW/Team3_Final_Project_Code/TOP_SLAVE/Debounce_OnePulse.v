`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/14 05:08:45
// Design Name: 
// Module Name: Debounce_OnePulse
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


module Debounce_OnePulse( clk, in, out);
    input clk, in;
    output out;
    wire in_debounced;
    reg in_debounced_delay,out;
    reg [3:0] DFF;
    
    //debounce
    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
        DFF[0] <= in;
    end
    assign in_debounced = ((DFF==4'b1111) ? 1'b1 : 1'b0);
    
    //one_pulse
    always @(posedge clk) begin
        out <= in_debounced & (!in_debounced_delay);
        in_debounced_delay <= in_debounced;
    end
endmodule
