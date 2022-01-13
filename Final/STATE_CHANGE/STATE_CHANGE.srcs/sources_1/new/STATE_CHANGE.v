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


module STATE_CHANGE(clk, mid_but, img_done, state);
    input clk;
    input mid_but;
    input img_done;
    output [1:0]state;
    reg [1:0]state_count, nxt_state_count;
    reg [27:0]cnt;
    wire mid_but_dp;
    
    parameter READY = 2'b00;
    parameter COUNTDOWN = 2'b01;
    parameter WAITING = 2'b10;
    parameter RESULT = 2'b11;
    
    debounce_and_onepulse db(clk, mid_but, mid_but_dp);
    
    assign state = state_count;
    
    always @(posedge clk) begin
        state_count <= nxt_state_count;
    end
    
    always @(posedge clk) begin
        if(state_count == COUNTDOWN) cnt = cnt + 1'b1;
        else cnt = 28'd0;
    end
    
    always @(*) begin
        case(state_count)
            READY : begin
                if(mid_but_dp == 1'b1) nxt_state_count = COUNTDOWN;
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
                if(mid_but_dp == 1'b1) nxt_state_count = READY;
                else nxt_state_count = RESULT;
            end
            default : begin
                nxt_state_count = READY;
            end
        endcase
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