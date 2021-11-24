`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 08:33:36 PM
// Design Name: 
// Module Name: Lab5_Team3_Booth_Multiplier_4bit_t
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


module Lab5_Team3_Booth_Multiplier_4bit_t();
    wire [7:0] p;
    reg signed [3:0] a, b;
    reg clk = 0, start, rst_n;
    
    wire accepted;
    wire [7:0] product;
    assign product = a * b;
    assign accepted = (product == p);
    
    always #1 clk = 1 - clk;
    initial begin
        a = -8;
        repeat (2 ** 4) begin
            b = -8;
            repeat (2 ** 4) begin
                rst_n = 1;
                start = 0;
                #2;
                rst_n = 0;
                start = 1;
                #2;
                start = 0;
                
                #8;
                b = b + 1;
            end
            a = a + 1;
        end
        $finish; 
    end
    
    Booth_Multiplier_4bit chip (
        clk, rst_n, start, a, b, p
    );
endmodule
