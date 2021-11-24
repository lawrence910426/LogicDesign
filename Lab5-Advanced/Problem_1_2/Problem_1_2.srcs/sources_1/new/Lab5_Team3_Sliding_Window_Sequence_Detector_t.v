`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 00:19:20
// Design Name: 
// Module Name: Lab5_Team3_Sliding_Window_Sequence_Detector_t
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


module Lab5_Team3_Sliding_Window_Sequence_Detector_t;
    reg clk = 1'b0;
    reg rst_n = 1'b1;
    reg in = 1'b0;
    wire dec;
    
    always #5 clk = ~clk;
    
    Sliding_Window_Sequence_Detector test(clk, rst_n, in, dec);
    
    initial begin
        //reset
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b0;
        
        //11001001
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        
        //(1)100101001
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        
        //reset
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b0;
        
        //0110001100100000
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b1;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        @(negedge clk)
        in = 1'b0;
        rst_n = 1'b1;
        
        @(negedge clk)
        $finish;
    end
endmodule
