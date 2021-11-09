`timescale 1ns/1ps

module Many_To_One_LFSR(clk, rst_n, out);
    input clk;
    input rst_n;
    output reg [7:0] out;
    
    always @ (posedge clk) begin
        if (rst_n == 1'b0) begin
            out <= 8'b10111101;
        end else begin
            out[7:1] <= out[6:0];
            out[0] <= out[1] ^ out[2] ^ out[3] ^ out[7];
        end
    end
endmodule

