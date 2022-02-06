`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2022 10:06:30 AM
// Design Name: 
// Module Name: CNN_T
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


module CNN_T();
    reg [25 * 25 * 3 * 8 - 1:0] CAM;
    reg clk = 0;
    wire [32 - 1:0] Rock;
    wire [32 - 1:0] Paper;
    wire [32 - 1:0] Scissors;
    wire [4 - 1:0] Highest;
    CNN chip (
        clk, CAM, Rock, Paper, Scissors, Highest
    );
    
    always #1 clk = 1 - clk;
    initial begin
        CAM = 0;
        #1000000;
        $finish;
    end
endmodule
