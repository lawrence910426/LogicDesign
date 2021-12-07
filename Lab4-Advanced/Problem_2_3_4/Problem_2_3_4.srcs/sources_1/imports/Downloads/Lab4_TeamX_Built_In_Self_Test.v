`timescale 1ns/1ps

module Built_In_Self_Test(clk, rst_n, scan_en, scan_in, scan_out);
    input clk;
    input rst_n;
    input scan_en;
    output scan_in;
    output scan_out;
    
    wire [7:0] LFSR_out;
    
    Many_To_One_LFSR LFSR (.clk(clk), .rst_n(rst_n), .out(LFSR_out));
    Scan_Chain_Design ScanChain (
        .clk(clk), .rst_n(rst_n), .scan_in(LFSR_out[7]), 
        .scan_en(scan_en), .scan_out(scan_out)
    );
endmodule

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

module Scan_Chain_Design(clk, rst_n, scan_in, scan_en, scan_out);
    input clk;
    input rst_n;
    input scan_in;
    input scan_en;
    output scan_out;

    wire [7:0] p;
    wire [3:0] a, b;
    assign p = a * b;
    assign scan_out = b[0];
    
    ScanDFF 
        _1 (
            .data(p[7]),
            .scan_en(scan_en),
            .scan_in(scan_in),
            .rst_n(rst_n),
            .clk(clk),
            .Q(a[3])
       ), _2 (
            .data(p[6]),
            .scan_en(scan_en),
            .scan_in(a[3]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(a[2])
       ), _3 (
            .data(p[5]),
            .scan_en(scan_en),
            .scan_in(a[2]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(a[1])
       ), _4 (
            .data(p[4]),
            .scan_en(scan_en),
            .scan_in(a[1]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(a[0])
       ), _5 (
            .data(p[3]),
            .scan_en(scan_en),
            .scan_in(a[0]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(b[3])
       ), _6 (
            .data(p[2]),
            .scan_en(scan_en),
            .scan_in(b[3]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(b[2])
       ), _7 (
            .data(p[1]),
            .scan_en(scan_en),
            .scan_in(b[2]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(b[1])
       ), _8 (
            .data(p[0]),
            .scan_en(scan_en),
            .scan_in(b[1]),
            .rst_n(rst_n),
            .clk(clk),
            .Q(b[0])
       );
endmodule

module ScanDFF (scan_in, data, scan_en, rst_n, clk, Q);
    input scan_in, data, scan_en, rst_n, clk;
    output reg Q;
    
    wire X, D;
    assign X = (scan_en == 1'b1 ? scan_in : data);
    assign D = (rst_n   == 1'b1 ? X : 1'b0);
    
    always @ (posedge clk) Q = D; 
endmodule
