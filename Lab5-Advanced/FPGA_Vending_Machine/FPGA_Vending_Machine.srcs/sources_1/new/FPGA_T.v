`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2021 04:37:29 PM
// Design Name: 
// Module Name: FPGA_T
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


module FPGA_T();
    reg CLK = 0, RESET, INSERT_5 = 0, INSERT_10 = 0, INSERT_50 = 0, CANCEL = 0;
    reg A = 0, S = 0, D = 0, F = 0;
    wire [7:0] VALUE;
    
    FPGA_VendingMachine chip (
        .CLK(CLK),
        .RESET(RESET), .INSERT_5(INSERT_5), .INSERT_10(INSERT_10), .INSERT_50(INSERT_50), .CANCEL(CANCEL),
        .A(A), .S(S), .D(D), .F(F),
        .VALUE(VALUE)
     );
    
    always #1 CLK = 1 - CLK;
    initial begin
        RESET = 1;
        #2;
        RESET = 0;
        #2;
        
        INSERT_50 = 1;
        #2;
        INSERT_50 = 0;
        #2;
        
        INSERT_10 = 1;
        #2;
        INSERT_10 = 0;
        #2;
        
        INSERT_10 = 1;
        #2;
        INSERT_10 = 0;
        #2;
        
        INSERT_10 = 1;
        #2;
        INSERT_10 = 0;
        #2;
        
        INSERT_10 = 1;
        #2;
        INSERT_10 = 0;
        #2;
        
        A = 1;
        #2;
        A = 0;
        #2;
        
        #30;
        
        $finish;
    end
endmodule
