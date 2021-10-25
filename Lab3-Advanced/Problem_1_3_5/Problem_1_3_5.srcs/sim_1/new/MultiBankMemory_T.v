`timescale 1ns / 1ps

module MultiBankMemory_T();
    reg clk, ren, wen;
    reg [10:0] waddr, raddr;
    reg [7:0] din;
    
    wire [7:0] dout;
    wire [15:0] debug;
    
    Multi_Bank_Memory chip (clk, ren, wen, waddr, raddr, din, dout, debug);
    
    always #1 clk = ~clk;
    
    initial begin
        clk = 0;
        #1;
        
        ren = 1;
        raddr = 11'b0011_0000000;
        wen = 1;
        waddr = 11'b1011_0000000;
        din = 8'b11111111;
        #2;
        
        ren = 1;
        raddr = 11'b1011_0000000;
        wen = 0;
        waddr = 11'b1011_0000001;
        din = 8'b00001111;
        #2;
        
        ren = 1;
        raddr = 11'b1011_0000000;
        wen = 1;
        waddr = 11'b1011_0000001;
        din = 8'b10101010;
        #2;
        
        ren = 1;
        raddr = 11'b1011_0000001;
        wen = 1;
        waddr = 11'b1111_0000000;
        din = 8'b10101010;
        #2;
        
        ren = 1;
        raddr = 11'b1111_0000000;
        wen = 1;
        waddr = 11'b1111_0000000;
        din = 8'b10101010;
        #2;
        
        $finish;
    end
endmodule
