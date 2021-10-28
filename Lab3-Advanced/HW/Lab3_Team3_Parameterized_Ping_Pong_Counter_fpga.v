`timescale 1ns / 1ps

module FPGA_T();
    reg clk, enable, flip, rst_n;
    reg [3:0] min, max;
    
    wire [3:0] AN;
    wire [6:0] seg;
    wire [15:0] debug;
    wire rst;
    
    assign rst = !rst_n;
    
    FPGA # (.pingpong_latency(32'd4), .display_latency(32'd3))
    chip (clk, rst, enable, flip, max, min, AN, seg);
    
    always #1 clk = ~clk;
    
    initial begin
        rst_n = 0;
        enable = 1;
        min = 4'b0000;
        max = 4'b1010;
        clk = 1;
        flip = 0;
        #1;
        
        // Testing for reset signals
        rst_n = 0;
        #8;
        rst_n = 1;
        #1;
        
        #30;
        
        // Testing for enable signals
        enable = 0;
        #3;
        enable = 1;
        #2;
        
        // Testing for flip signals
        flip = 1;
        #2;
        flip = 0;
        #1;
        
        #10;
        
        // Testing for min max boundary conditions
        max = 4'b010;
        min = 4'b000;
        #10;
        
        max = 4'b001;
        min = 4'b000;
        #20;
        
        max = 4'b100;
        min = 4'b011;
        #10;
        
        $finish;
    end
endmodule
