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
    wire rst_db,rst_n;
    wire [1:0]ran_num;
    reg [1:0] cnt;
    
    debounce_and_onepulse db1(clk, rst, rst_db);
    not n1(rst_n, rst_db);
    
    LFSR random(.clk(clk), .rst_n(rst_n), .ran_out(ran_num));
    
    always @(posedge clk) begin
        if(rst_n == 1'b1) begin
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

module debounce_and_onepulse(clk, in, out);
    input clk, in;
    output out;
    wire in_debounced;
    reg in_debounced_delay,out;
    reg [3:0] DFF;
    
    //debounce
    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
        DFF[0] <= in;
    end
    assign in_debounced = ((DFF==4'b1111) ? 1'b1 : 1'b0);
    
    //one_pulse
    always @(posedge clk) begin
        out <= in_debounced & (!in_debounced_delay);
        in_debounced_delay <= in_debounced;
    end
endmodule