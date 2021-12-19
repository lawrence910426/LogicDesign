`timescale 1ns/1ps
module tracker_sensor(clk, reset, left_signal, right_signal, mid_signal, state);
    input clk;
    input reset;
    input left_signal, right_signal, mid_signal;
    output reg [1:0] state;

    // [TO-DO] Receive three signals and make your own policy.
    // Hint: You can use output state to change your action.
    always @(posedge clk) begin
        if(left_signal == 1'b0) begin
            if(mid_signal == 1'b0) begin
                if(right_signal == 1'b0) state <= 2'b00;
                else state <= 2'b10;
            end
            else begin
                if(right_signal == 1'b0) state <= 2'b10;
                else state <= 2'b10;
            end
        end
        else begin
            if(mid_signal == 1'b0) begin
                if(right_signal == 1'b0) state <= 2'b01;
                else state <= 2'b11;
            end
            else begin
                if(right_signal == 1'b0) state <= 2'b01;
                else state <= 2'b11;
            end
        end
    end

endmodule
