`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2021 12:13:16 AM
// Design Name: 
// Module Name: Lab5_TeamX_Greatest_Common_Divisor_t
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


module Lab5_Team3_Greatest_Common_Divisor_t();
    reg clk = 0,
        rst_n = 0,
        start = 0;
    reg [15:0] a, b;
    
    wire done;
    wire [15:0] gcd;
    
    Greatest_Common_Divisor chip (clk, rst_n, start, a, b, done, gcd);
    
    always #1 clk = 1 - clk;
    initial begin
        a = 0;
        b = 18;
        rst_n = 1;
        #2;        
        rst_n = 0;
        start = 1;
        #2;
        start = 0;
        
        #300;
        $finish;
    end
endmodule
