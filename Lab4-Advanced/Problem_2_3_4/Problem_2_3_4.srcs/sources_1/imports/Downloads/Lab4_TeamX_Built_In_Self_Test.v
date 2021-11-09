`timescale 1ns/1ps

module Built_In_Self_Test(clk, rst_n, scan_en, scan_in, scan_out);
    input clk;
    input rst_n;
    input scan_en;
    output scan_in;
    output scan_out;
    
    Many_To_One_LFSR LFSR (.clk(clk), .rst_n(rst_n), .out(scan_in));
    Scan_Chain_Design ScanChain (
        .clk(clk), .rst_n(rst_n), .scan_in(scan_in), 
        .scan_en(scan_en), .scan_out(scan_out)
    );
endmodule
