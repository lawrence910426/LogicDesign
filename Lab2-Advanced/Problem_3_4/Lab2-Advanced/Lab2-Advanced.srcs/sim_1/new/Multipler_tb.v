`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2021 12:24:43 AM
// Design Name: 
// Module Name: Multipler_tb
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


module Multipler_tb();
    reg [3:0] a, b;
    wire [7:0] p;
    
    Multiplier_4bit chip(
        .a(a), .b(b), .p(p)
    );
    
    initial begin
        a = 0;
        b = 13;
        repeat (16) begin
            a = a + 1;
            b = b - 3;
            #10;
        end
        #1 $finish;
    end
endmodule
