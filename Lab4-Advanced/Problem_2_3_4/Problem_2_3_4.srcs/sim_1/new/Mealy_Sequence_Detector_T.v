`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 11:07:09 PM
// Design Name: 
// Module Name: Mealy_Sequence_Detector_T
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


module Mealy_Sequence_Detector_T();
    reg clk = 1;
    reg rst_n = 0;
    reg in = 1;
    wire out;
    Mealy_Sequence_Detector chip (clk, rst_n, in, out);
    
    always #1 clk = 1 - clk;
    initial begin
        #2;
        rst_n = 1;
        
        #1;
        in = 0;
        #2;
        in = 1;
        #50;
        in = 0;
        #2;
        
        $finish;
    end
endmodule
