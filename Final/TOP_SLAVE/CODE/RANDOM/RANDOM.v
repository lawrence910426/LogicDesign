`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/13 19:19:41
// Design Name: 
// Module Name: RANDOM
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


module RANDOM( clk, rst, state, com_result);
    input clk;
    input rst;
    input [1:0]state;
    output reg [1:0]com_result;
    wire [1:0]ran_num;
    reg [1:0] cnt;
    
    LFSR random(.clk(clk), .rst(rst), .ran_out(ran_num));
    
    always @(posedge clk) begin
        if(rst == 1'b1) begin
            cnt <= 2'b00;
        end
        else begin
            if(cnt == 2'b10) cnt <= 2'b00;
            else cnt <= cnt + 2'b01;
        end
    end
    
    always @(state) begin
        if(state == 2'b01) begin  //COUNTDOWN
            if(ran_num == 2'b11) com_result = cnt;
            else com_result = ran_num;
        end
    end
    
endmodule