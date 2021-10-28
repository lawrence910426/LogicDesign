`timescale 1ns/1ps

module FIFO_8(clk, rst_n, wen, ren, din, dout, error);
    input clk;
    input rst_n;
    input wen, ren;
    input [7:0] din;
    output [7:0] dout;
    output error;
    reg [7:0] Queue [7:0];
    reg [2:0] r_cur, w_cur, next_r_cur, next_w_cur;
    reg [3:0] full;
    reg [7:0] next_out, out;
    reg next_error, _error;
    
    always @(din, ren, wen) begin
        if(ren == 1'b1) begin
            if(r_cur == w_cur) begin
                if(full == 4'b1000) begin
                    next_out =  Queue[r_cur];
                    //$display("%b",Queue[r_cur]);
                    next_r_cur = r_cur - 3'b001;
                    next_error = 1'b0;
                    full = full - 4'b0001;
                end
                else begin
                    next_error = 1'b1;
                end
            end
            else begin
                next_out =  Queue[r_cur];
                //$display("%b",Queue[r_cur]);
                next_r_cur = r_cur - 3'b001;
                next_error = 1'b0;
                full = full - 4'b0001;
            end 
            next_w_cur = w_cur;         
        end
        else begin
            if(wen == 1'b1) begin
                if(r_cur == w_cur) begin
                    if(full == 4'b1000) begin
                        next_error = 1'b1;
                    end
                    else begin
                        Queue[w_cur] = din;
                        //$display("%b",Queue[w_cur]);
                        next_w_cur = w_cur - 3'b001;
                        next_error = 1'b0;
                        full = full + 4'b0001;
                    end
                end
                else begin
                    Queue[w_cur] = din;
                    //$display("%b",Queue[w_cur]);
                    next_w_cur = w_cur - 3'b001;
                    next_error = 1'b0;
                    full = full + 4'b0001;
                end    
            end
            else begin
                next_error = 1'b0;
            end
            next_r_cur = r_cur;
        end
    end
    
    always @(posedge clk) begin
        if(rst_n == 1'b0) begin
            _error = 1'b0;
            out = 8'd0;
            r_cur = 3'b111;
            w_cur = 3'b111;
            full = 4'b0000;
            Queue[3'b000] = 8'd0;
            Queue[3'b001] = 8'd0;
            Queue[3'b010] = 8'd0;
            Queue[3'b011] = 8'd0;
            Queue[3'b100] = 8'd0;
            Queue[3'b101] = 8'd0;
            Queue[3'b110] = 8'd0;
            Queue[3'b111] = 8'd0;
        end
        else begin
            _error = next_error;
            out = next_out;
            r_cur = next_r_cur;
            w_cur = next_w_cur;
        end
    end
    
    assign dout = out;
    assign error = _error;
    
endmodule
