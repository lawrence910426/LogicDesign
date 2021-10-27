`timescale 1ns / 1ps

module ClockDivider_T();
    reg clk, rst_n;
    wire clk_slow;
    
    Clock_Divider # (.loop_size(32'd10)) chip (clk, rst_n, clk_slow);
    
    always #1 clk = ~clk;
    
    initial begin
        clk = 1;
        #1;
        
        // Testing for reset signals
        rst_n = 0;
        #2;
        rst_n = 1;
        #2;
        
        #30;
        
        $finish;
    end
endmodule
