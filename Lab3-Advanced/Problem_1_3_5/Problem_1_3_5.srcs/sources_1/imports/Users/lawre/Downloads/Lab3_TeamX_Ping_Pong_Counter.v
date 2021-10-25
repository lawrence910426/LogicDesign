`timescale 1ns/1ps

module Ping_Pong_Counter (clk, rst_n, enable, direction, out);
    input clk, rst_n;
    input enable;
    output direction;
    output [3:0] out;
    
    reg [3:0] value, value_new;
    reg direction_reg, direction_new;
    
    assign direction = direction_reg;
    assign out = value;
    
    always @ (value, direction_reg) begin
        if ((value == 4'b1111 && direction_reg == 1'b1) || (value == 4'b0000 && direction_reg == 1'b0))
            direction_new = direction_reg ^ 1'b1;
        else
            direction_new = direction_reg;
        
        if (direction_new == 1)
            value_new = value + 1'b1;
        else
            value_new = value - 1'b1;
    end
    
    always @ (posedge clk) begin
        if (rst_n == 1'b0) begin
            value = 4'b0000;
            direction_reg = 1'b1;
        end else begin
            if (enable == 1'b1) begin
                value = value_new;
                direction_reg = direction_new;
            end
        end
    end
endmodule
