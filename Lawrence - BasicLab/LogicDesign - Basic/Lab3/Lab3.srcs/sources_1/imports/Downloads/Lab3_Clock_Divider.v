`timescale 1ns/1ps

module Clock_Divider (clk, rst_n, sel, clk1_2, clk1_4, clk1_8, clk1_3, dclk);
    input clk, rst_n;
    input [1:0] sel;
    output clk1_2;
    output clk1_4;
    output clk1_8;
    output clk1_3;
    output dclk;
    
    reg [3:0] c2, c3, c4, c8;
    reg [3:0] c2_new, c3_new, c4_new, c8_new;
    reg _2, _3, _4, _8;
    
    wire rst;
    not (rst, rst_n);
    
    assign clk1_2 = _2;
    assign clk1_3 = _3;
    assign clk1_4 = _4;
    assign clk1_8 = _8;
    
    assign dclk = (
        (clk1_3 & (sel == 2'b00)) |
        (clk1_2 & (sel == 2'b01)) |
        (clk1_4 & (sel == 2'b10)) |
        (clk1_8 & (sel == 2'b11))        
    );
    
    always @ (c2, c3, c4, c8) begin
        c2_new = (c2 + 1 == 2 ? 0 : c2 + 1);
        c3_new = (c3 + 1 == 3 ? 0 : c3 + 1);
        c4_new = (c4 + 1 == 4 ? 0 : c4 + 1);
        c8_new = (c8 + 1 == 8 ? 0 : c8 + 1);
        
        _2 = (c2 == 0 ? 1 : 0);
        _3 = (c3 == 0 ? 1 : 0);
        _4 = (c4 == 0 ? 1 : 0);
        _8 = (c8 == 0 ? 1 : 0);
    end
    
    always @ (posedge clk) begin
        if (rst == 1'b1) begin
            c2 = 0;
            c3 = 0;
            c4 = 0;
            c8 = 0;
        end else begin
            c2 = c2_new;
            c3 = c3_new;
            c4 = c4_new;
            c8 = c8_new; 
        end
    end
endmodule
