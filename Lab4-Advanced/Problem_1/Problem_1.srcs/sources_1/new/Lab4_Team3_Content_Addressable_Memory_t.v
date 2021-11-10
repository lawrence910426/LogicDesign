`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 21:02:21
// Design Name: 
// Module Name: Lab4_Team3_Content_Addressable_Memory_t
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


module Lab4_Team3_Content_Addressable_Memory_t;
    reg clk = 1'b0;
    reg wen = 1'b0;
    reg ren = 1'b0;
    reg [7:0] din = 8'b0000_0000;
    reg [3:0] addr = 4'b0000;
    wire [3:0] dout;
    wire hit;
    
    always #5 clk = ~clk;
    
    Content_Addressable_Memory test(clk, wen, ren, din, addr, dout, hit);
    
    initial begin
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd4;
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b0;
        addr = 4'd7;
        din = 8'd8;
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b0;
        addr = 4'd15;
        din = 8'd35;
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b0;
        addr = 4'd9;
        din = 8'd8;
        
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd0;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd0;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd0;
        
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd4;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd8;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd35;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd87;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd45;
        
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd0;
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd11;
        @(negedge clk)
        wen = 1'b1;
        ren = 1'b1;
        addr = 4'd0;
        din = 8'd35;
        @(negedge clk)
        wen = 1'b0;
        ren = 1'b0;
        addr = 4'd0;
        din = 8'd0;
        @(negedge clk)   
        $finish;
    end
endmodule
