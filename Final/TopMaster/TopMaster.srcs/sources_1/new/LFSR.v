`timescale 1ns/1ps

module LFSR(clk, rst_n, ran_out);
    input clk;
    input rst_n;
    output [1:0] ran_out;
    reg [7:0] out;
    reg [7:0] out_nxt;
    wire x1_2, x3_7, x_both;
    
    assign ran_out[1:0] = out[7:6];
    
    always @(posedge clk) begin
        if(rst_n == 1'b0) begin
            out <= 8'b10111101;
        end
        else begin
            out <= out_nxt;
        end
    end
    
    xor op1(x1_2, out[1], out[2]);
    xor op2(x3_7, out[3], out[7]);
    xor op3(x_both, x1_2, x3_7);
    
    always @(*) begin
        out_nxt[0] = x_both;
        out_nxt[1] = out[0];
        out_nxt[2] = out[1];
        out_nxt[3] = out[2];
        out_nxt[4] = out[3];
        out_nxt[5] = out[4];
        out_nxt[6] = out[5];
        out_nxt[7] = out[6];
    end
endmodule

