`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/26 14:51:11
// Design Name: 
// Module Name: Lab3_FIFO_8_tb
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


module Lab3_FIFO_8_tb;

    reg clk = 0;
    reg rst_n = 1'b1;
    reg ren = 1'b0;
    reg wen = 1'b0;
    reg [7:0] din = 8'd0;
    wire [7:0] dout; 
    wire error;
    
    // specify duration of a clock cycle.
    parameter cyc = 10;
    // generate clock.
    always#(cyc/2)clk = !clk;
    
    FIFO_8 fifo(.clk(clk), .rst_n(rst_n), .wen(wen), .ren(ren),
                .din(din), .dout(dout), .error(error));
    
    initial begin
        //reset
        @(negedge clk)
        rst_n = 1'b0;
        
        //1_write 2_read see error
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd87;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd66;
        ren = 1'b1;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd66;
        ren = 1'b1;
        wen = 1'b0;
        
        //write to full and get error!!
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd1;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd2;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd3;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd4;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd5;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd6;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd7;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd8;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd9;
        ren = 1'b0;
        wen = 1'b1;
        
        //not full reset
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd9;
        ren = 1'b1;
        wen = 1'b0;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd9;
        ren = 1'b1;
        wen = 1'b0;
        @(negedge clk)
        rst_n = 1'b0;
        din = 8'd9;
        ren = 1'b1;
        wen = 1'b0;
        
        //2 write 1 read 
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd10;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd11;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk)
        rst_n = 1'b1;
        din = 8'd9;
        ren = 1'b1;
        wen = 1'b0;
        @(negedge clk)
        $finish;
    end
endmodule
