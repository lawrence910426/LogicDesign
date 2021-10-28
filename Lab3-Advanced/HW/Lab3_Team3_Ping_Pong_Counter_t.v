`timescale 1ns / 1ps

module PingPongCounter_T();
    reg clk, enable, rst_n;
    wire direction;
    wire [3:0] out;
    
    Ping_Pong_Counter chip (clk, rst_n, enable, direction, out);
    
    always #1 clk = ~clk;
    
    initial begin
        rst_n = 1;
        enable = 1;
        clk = 0;
        #1;
        rst_n = 0;
        #1;
        rst_n = 1;
        #15;
        enable = 0;
        #5;
        enable = 1;
        #30;
        
        $finish;
    end
endmodule
