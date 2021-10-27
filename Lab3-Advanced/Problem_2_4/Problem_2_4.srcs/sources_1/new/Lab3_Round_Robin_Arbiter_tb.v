`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 21:23:38
// Design Name: 
// Module Name: Lab3_Round_Robin_Arbiter_tb
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


module Lab3_Round_Robin_Arbiter_tb;
    reg clk = 0;
    reg rst_n = 1'b1;
    reg [3:0] wen = 4'd0;
    reg [7:0] a, b, c, d;
    wire [7:0] dout;
    wire valid;
    
    // specify duration of a clock cycle.
    parameter cyc = 10;
    // generate clock.
    always#(cyc/2)clk = !clk;
    
    Round_Robin_Arbiter rra(.clk(clk), .rst_n(rst_n), .wen(wen), 
                            .a(a), .b(b), .c(c), .d(d), 
                            .dout(dout), .valid(valid));
    
    initial begin
        //reset
        @(negedge clk)
        rst_n = 1'b0;
        
        //same as ppt
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b1111;
        a = 8'd87;
        b = 8'd56;
        c = 8'd9;
        d = 8'd13;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b1000;
        d = 8'd85;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0100;
        c = 8'd139;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0000;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0000;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0000;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0001;
        a = 8'd51;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0000;
        @(negedge clk)
        rst_n = 1'b1;
        wen = 4'b0000;
        
        
        
        @(negedge clk)
        $finish;
        
    end
endmodule
