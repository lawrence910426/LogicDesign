`timescale 1ns / 1ps

module Parameterized_PingPongCounter_T();
    reg clk, enable, flip, rst_n;
    reg [3:0] min, max;
    
    wire direction;
    wire [3:0] out;
    
    Parameterized_Ping_Pong_Counter chip (clk, rst_n, enable, flip, max, min, direction, out);
    
    always #1 clk = ~clk;
    
    initial begin
        rst_n = 1;
        enable = 1;
        min = 4'b0000;
        max = 4'b1010;
        clk = 0;
        flip = 0;
        #1;
        
        // Testing for reset signals
        rst_n = 0;
        #1;
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
        
        #30;
        
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
