`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 04:52:35 PM
// Design Name: 
// Module Name: Scan_Chain_Design_T
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


module Scan_Chain_Design_T();
    reg clk = 0, 
        rst_n = 0, 
        scan_in = 1, 
        scan_en = 0;
    wire scan_out;
    Scan_Chain_Design chip (clk, rst_n, scan_in, scan_en, scan_out);
    
    always #1 clk = 1 - clk;
    initial begin
        // Test sample 1
        rst_n = 0;
        #4;
        
        rst_n = 1;
        scan_en = 1;
        scan_in = 1;
        #16;
        
        scan_en = 0;
        #4;
        
        scan_en = 1;
        #16;
        
        #6;
        
        // Test sample 2
                rst_n = 0;
        #4;
        
        rst_n = 1;
        scan_en = 1;
        scan_in = 0;
        #16;
        
        scan_en = 0;
        #4;
        
        scan_en = 1;
        #16;
        
        #6;
        $finish;
    end
endmodule
