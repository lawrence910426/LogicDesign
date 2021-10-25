`timescale 1ns/1ps

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [6:0] addr;
    input [7:0] din;
    output [7:0] dout;
    
    reg [7:0] dout_reg;
    assign dout[7:0] = dout_reg[7:0];

    parameter M = 128;
    parameter N = 8;
    reg [N-1:0] Storage[M-1:0];
    
    always @(posedge clk) begin
        if (ren == 1'b1) begin
            dout_reg[N-1:0] = Storage[addr];
        end
        
        if (ren == 1'b0 && wen == 1'b1) begin
            Storage[addr] = din[N-1:0];     
            dout_reg[N-1:0] = 8'b0000_0000;
        end
    end
endmodule
