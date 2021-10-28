`timescale 1ns / 1ps

module FPGA_7sd(clk, rst_n, direction, out, AN, seg);
    input clk, rst_n;
    input direction;
    input [3:0] out;
    
    output [3:0] AN;
    output [6:0] seg;
    
    parameter    _0_7sd = 7'b0000001,
                 _1_7sd = 7'b1001111,
                 _2_7sd = 7'b0010010,
                 _3_7sd = 7'b0000110,
                 _4_7sd = 7'b1001100,
                 _5_7sd = 7'b0100100,
                 _6_7sd = 7'b0100000,
                 _7_7sd = 7'b0001111,
                 _8_7sd = 7'b0000000,
                 _9_7sd = 7'b0001100,
                 up_7sd =       7'b0011101,
                 down_7sd =     7'b1100011;
    
    wire [6:0] value_7sd [3:0];
    wire [6:0] output_7sd;
    wire [3:0] output_AN;
    reg [1:0] reg_AN, reg_AN_new;
    
    assign AN = output_AN,
           // seg = {_3_7sd};
           // seg = {2'b11, direction, out};
           seg = output_7sd;
    
    assign {value_7sd[0], value_7sd[1]} =
        direction == 1'b1 ? {up_7sd, up_7sd} : {down_7sd, down_7sd};
    
    assign {value_7sd[3], value_7sd[2]} = 
        out == 4'd00 ? {_0_7sd, _0_7sd} :
        out == 4'd01 ? {_0_7sd, _1_7sd} :
        out == 4'd02 ? {_0_7sd, _2_7sd} :
        out == 4'd03 ? {_0_7sd, _3_7sd} :
        
        out == 4'd04 ? {_0_7sd, _4_7sd} :
        out == 4'd05 ? {_0_7sd, _5_7sd} :
        out == 4'd06 ? {_0_7sd, _6_7sd} :
        out == 4'd07 ? {_0_7sd, _7_7sd} :
        
        out == 4'd08 ? {_0_7sd, _8_7sd} :
        out == 4'd09 ? {_0_7sd, _9_7sd} :
        out == 4'd10 ? {_1_7sd, _0_7sd} :
        out == 4'd11 ? {_1_7sd, _1_7sd} :
        
        out == 4'd12 ? {_1_7sd, _2_7sd} :
        out == 4'd13 ? {_1_7sd, _3_7sd} :
        out == 4'd14 ? {_1_7sd, _4_7sd} :
        out == 4'd15 ? {_1_7sd, _5_7sd} :
        
        {7'b1111111, 7'b1111111};
    
    assign output_7sd =
        reg_AN == 2'b00 ? value_7sd[0] :
        reg_AN == 2'b01 ? value_7sd[1] :
        reg_AN == 2'b10 ? value_7sd[2] :
        value_7sd[3];
        
    assign output_AN =
        reg_AN == 2'b00 ? 4'b1110 :
        reg_AN == 2'b01 ? 4'b1101 :
        reg_AN == 2'b10 ? 4'b1011 :
        4'b0111;
    
    always @ (posedge clk) {reg_AN} = {rst_n == 1'b0 ? 2'b00 : reg_AN_new};
    always @ (reg_AN) {reg_AN_new} = {reg_AN + 2'b01};
endmodule
