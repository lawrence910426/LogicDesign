`timescale 1ns/1ps

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n, enable, flip;
    input [3:0] max, min;
    
    output direction;
    output [3:0] out;

    reg [3:0] value, value_new;
    reg dir, dir_new;
    
    assign direction = dir;
    assign out = value;
    
    always @ (posedge clk) begin
        if (rst_n == 1'b0) begin
            value = min;
            dir = 1'b1;
        end else begin
            if (enable == 1'b1 && min < max && min <= value_new && value_new <= max) begin
                value = value_new;
                dir = dir_new;
            end
        end
    end
    
    always @ (value, dir, flip) begin
        if ((dir == 1'b1 && value == max) || (dir == 1'b0 && value == min))
            dir_new = dir ^ flip ^ 1'b1;
        else
            dir_new = dir ^ flip;
        
        if (dir_new == 1'b1)
            value_new = value + 1'b1;
        else
            value_new = value - 1'b1;
    end
endmodule