`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 23:47:41
// Design Name: 
// Module Name: Lab5_Team3_Traffic_Light_Controller_t
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


module Lab5_Team3_Traffic_Light_Controller_t;
    reg clk = 1'b0;
    reg rst_n = 1'b1;
    reg lr_has_car = 1'b0;
    wire [2:0] hw_light;
    wire [2:0] lr_light;
    
    always #1 clk = ~clk;
    
    Traffic_Light_Controller test(clk, rst_n, lr_has_car, hw_light, lr_light);
    
    initial begin
        //reset
        @(negedge clk)
        rst_n = 1'b0;
        lr_has_car = 1'b0;
        
        //80 and car
        repeat (10) begin
            @(negedge clk)
            rst_n = 1'b1;
            lr_has_car = 1'b0;
        end
        repeat (50) begin
            @(negedge clk)
            rst_n = 1'b1;
            lr_has_car = 1'b1;
        end
        
        //reset
        @(negedge clk)
        rst_n = 1'b0;
        lr_has_car = 1'b0;
        
        //car then 80
        repeat (4) begin
            @(negedge clk)
            rst_n = 1'b1;
            lr_has_car = 1'b0;
        end
        repeat (50) begin
            @(negedge clk)
            rst_n = 1'b1;
            lr_has_car = 1'b1;
        end
        
        $finish;
    end
    
endmodule
