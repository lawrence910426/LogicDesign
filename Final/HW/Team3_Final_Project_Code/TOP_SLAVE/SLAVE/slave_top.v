`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NTHU
// Engineer: Bob Cheng
//
// Create Date: 2019/08/25 12:47:53
// Module Name: top
// Project Name: Chip2Chip
// Additional Comments: top module for master, pass signals and perform debounce onepulse
//////////////////////////////////////////////////////////////////////////////////

module SLAVE(clk, rst_n, state, request, valid, notice_slave, data_in, ack, done, data);
    input clk;
    input rst_n;
    input [1:0] state;
    input [3-1:0]data_in;
    input request;
    input valid;
    output notice_slave;
    output ack;
    output done;
    output [1:0]data;

    wire rst_n_inv;
    //wire [3-1:0]slave_data_o;
    //wire [8-1:0]slave_data_dec;
    assign rst_n_inv = ~rst_n;
    
    slave_control sl_ctrl_0(
        .clk(clk), 
        .rst_n(rst_n_inv), 
        .top_state(state),
        .request(request), 
        .ack(ack), 
        .data_in(data_in), 
        .notice(notice_slave), 
        .valid(valid), 
        .data(data), 
        .all_done(done)
    );
    /*
    decoder dec0(
        .in(slave_data_o), 
        .out(slave_data_dec)
    );*/


endmodule
