`timescale 1ns / 1ps

module FPGA_7sd_T();
    reg clk, rst_n;
    reg direction = 1;
    reg [3:0] out = 4'd7;
    
    wire [3:0] AN;
    wire [6:0] seg;
    
    FPGA_7sd chip (clk, rst_n, direction, out, AN, seg);
    
    always #1 clk = ~clk;
    initial begin
        rst_n = 0;
        clk = 0;
        #1;
        
        // Testing for reset signals
        rst_n = 0;
        #1;
        rst_n = 1;
        #1;
        
        #30;

        
        $finish;
    end
endmodule
