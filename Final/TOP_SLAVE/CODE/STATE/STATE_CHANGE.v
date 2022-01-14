`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/13 16:44:31
// Design Name: 
// Module Name: STATE_CHANGE
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


module STATE_CHANGE(clk, rst, mid_but, img_done, state);
    input clk;
    input rst;
    input mid_but;
    input img_done;
    output [1:0]state;
    reg [1:0]state_count, nxt_state_count;
    reg [27:0]cnt;
    
    parameter READY = 2'b00;
    parameter COUNTDOWN = 2'b01;
    parameter WAITING = 2'b10;
    parameter RESULT = 2'b11;
    
    assign state = state_count;
    
    always @(posedge clk) begin
        if(rst == 1'b1) state_count <= READY;
        else state_count <= nxt_state_count;
    end
    
    always @(posedge clk) begin
        if(state_count == COUNTDOWN) cnt = cnt + 1'b1;
        else cnt = 28'd0;
    end
    
    always @(*) begin
        case(state_count)
            READY : begin
                if(mid_but == 1'b1) nxt_state_count = COUNTDOWN;
                else nxt_state_count = READY;
            end
            COUNTDOWN : begin
                if(cnt[27:26] == 2'b11) nxt_state_count = WAITING;
                else nxt_state_count = COUNTDOWN;
            end
            WAITING : begin
                if(img_done == 1'b1) nxt_state_count = RESULT;
                else nxt_state_count = WAITING;
            end
            RESULT : begin
                if(mid_but == 1'b1) nxt_state_count = READY;
                else nxt_state_count = RESULT;
            end
            default : begin
                nxt_state_count = READY;
            end
        endcase
    end 
endmodule