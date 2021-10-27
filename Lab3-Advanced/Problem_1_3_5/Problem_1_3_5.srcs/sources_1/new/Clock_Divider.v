`timescale 1ns/1ps

module Clock_Divider (clk, rst_n, clk_slow);
    input clk, rst_n;
    output clk_slow;
    
    reg [31:0] clk_counter;
    reg clk_slow_reg;
    
    assign clk_slow = clk_slow_reg;
    
    parameter loop_size = 32'd1_0000_0000;
    
    always @ (posedge clk) 
        {
            clk_counter,
            clk_slow_reg
        } <= {
            rst_n == 1'b0 ? 0 :
            clk_counter == loop_size - 1 ? 32'd0 : clk_counter + 1'd1,
            clk_counter == 0
        };
endmodule
