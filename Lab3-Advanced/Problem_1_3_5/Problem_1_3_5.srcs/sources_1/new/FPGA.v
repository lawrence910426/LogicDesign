`timescale 1ns / 1ps

module FPGA(
    clk, rst, enable, flip, max, min,
    AN, seg
);
    parameter pingpong_latency  = 32'd1_0000_0000,
              display_latency   = 32'd0_0050_0000;
    
    input clk, rst, enable, flip;
    input [3:0] max, min;
    
    output [3:0] AN;
    output [6:0] seg;
        
    wire clk_7sd, clk_pingpong;
    wire direction;
    wire [3:0] out;
    wire rst_n;
    
    not (rst_n, rst);
    
    FPGA_7sd _7sd (
        .clk(clk_7sd), .rst_n(rst_n),
        .direction(direction), .out(out),
        .AN(AN), .seg(seg)
    );
    
    Parameterized_Ping_Pong_Counter Chip (
        .clk(clk_pingpong), .rst_n(rst_n), 
        .enable(enable), .flip(flip), 
        .max(max), .min(min), 
        .direction(direction), .out(out)
    );
    
    Clock_Divider #(.loop_size(display_latency))
    _7sd_clock (.clk(clk), .rst_n(rst_n), .clk_slow(clk_7sd));
    
    Clock_Divider #(.loop_size(pingpong_latency))
    _pp_clock (.clk(clk), .rst_n(rst_n), .clk_slow(clk_pingpong));
endmodule
