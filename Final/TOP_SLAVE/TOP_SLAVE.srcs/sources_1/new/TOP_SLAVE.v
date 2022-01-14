`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/14 04:56:30
// Design Name: 
// Module Name: TOP_SLAVE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP_SLAVE(
    input clk,
    input rst,
    input mid_but,
    input [3-1:0]data_in,
    input request,
    input valid,
    output notice_slave,
    output ack,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync
    );
    wire rst_db,mid_but_bd,img_done;
    wire [1:0]state, com_result, player_result;
    
    //reset
    Debounce_OnePulse db1(
        .clk(clk), 
        .in(rst), 
        .out(rst_db)
    );
    
    //mid_but
    Debounce_OnePulse db2(
        .clk(clk), 
        .in(mid_but), 
        .out(mid_but_bd)
    );
    
    //state
    STATE_CHANGE sc(
        .clk(clk), 
        .rst(rst_db), 
        .mid_but(mid_but_bd), 
        .img_done(img_done), 
        .state(state)
    );
    
    //random
    RANDOM rd( 
        .clk(clk), 
        .rst(rst_db), 
        .state(state), 
        .com_result(com_result)
    );
    
    //VGA
    VGA vga( 
        .clk(clk), 
        .rst(rst_db), 
        .state(state), 
        .com_hand(com_result), 
        .player_hand(player_result), 
        .vgaRed(vgaRed), 
        .vgaGreen(vgaGreen), 
        .vgaBlue(vgaBlue), 
        .hsync(hsync), 
        .vsync(vsync)  
    );
    
    //SLAVE
    SLAVE slave(
        .clk(clk), 
        .rst_n(rst), 
        .state(state),
        .request(request), 
        .valid(valid), 
        .notice_slave(notice_slave), 
        .data_in(data_in), 
        .ack(ack), 
        .done(img_done), 
        .data(player_result)
    );
    
endmodule
