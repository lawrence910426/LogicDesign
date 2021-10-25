`timescale 1ns/1ps

module Multi_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout, debug);
    input clk;
    input ren, wen;
    input [10:0] waddr;
    input [10:0] raddr;
    input [7:0] din;
    input [15:0] debug;
    
    output [7:0] dout;
    
    wire [7:0] dout_bank [3:0];
    
    assign dout = (
        (raddr[10:9] == 2'b00 ? dout_bank[2'b00] : 8'b0000_0000) |
        (raddr[10:9] == 2'b01 ? dout_bank[2'b01] : 8'b0000_0000) |
        (raddr[10:9] == 2'b10 ? dout_bank[2'b10] : 8'b0000_0000) |
        (raddr[10:9] == 2'b11 ? dout_bank[2'b11] : 8'b0000_0000) 
    );
    
    genvar i;
    generate
        for(i = 0; i < 4; i = i + 1) begin
            Single_Bank_Memory Bank (
                clk, ren && (raddr[10:9] == i), wen && (waddr[10:9] == i), 
                waddr[8:0], raddr[8:0], 
                din, dout_bank[i], debug[i * 4 + 3:i * 4]
            );
        end
    endgenerate
endmodule

module Single_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout, debug);
    input clk;
    input ren, wen;
    input [8:0] waddr, raddr;
    input [7:0] din;
    input [3:0] debug;
    
    output [7:0] dout;
    
    wire [7:0] dout_bank [3:0];
    
    assign dout = (
        (raddr[8:7] == 2'b00 ? dout_bank[2'b00] : 8'b0000_0000) |
        (raddr[8:7] == 2'b01 ? dout_bank[2'b01] : 8'b0000_0000) |
        (raddr[8:7] == 2'b10 ? dout_bank[2'b10] : 8'b0000_0000) |
        (raddr[8:7] == 2'b11 ? dout_bank[2'b11] : 8'b0000_0000) 
    );
    
    assign debug[2:0] = {
        ren && (raddr[8:7] == 2'b11),
        wen && (waddr[8:7] == 2'b11),
        (ren && (raddr[8:7] == 2'b11) ? raddr[6:0] : waddr[6:0])
    };
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            Memory Bank (
                clk, ren && (raddr[8:7] == i), wen && (waddr[8:7] == i), 
                (ren && (raddr[8:7] == i) ? raddr[6:0] : waddr[6:0]), 
                din, dout_bank[i]
            );
        end
    endgenerate
endmodule