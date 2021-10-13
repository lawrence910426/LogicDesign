`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2021 12:24:43 AM
// Design Name: 
// Module Name: Decode_And_Execute_tb
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


module Decode_And_Execute_tb();
    reg [3:0] rs, rt;
    reg [2:0] sel;
    wire [3:0] rd;
    
    Decode_And_Execute test(.rs(rs), .rt(rt), .sel(sel), .rd(rd));
    
    initial begin
        rs = 4'b0101;
        rt = 4'b0011;
        sel = 3'b000;
        repeat (8) begin
            #10;
            sel = sel + 1'b1;
        end
        
        rs = 4'b0101;
        rt = 4'b1001;
        sel = 0;
        repeat (8) begin
            #10;
            sel = sel + 1'b1;
        end
        
        rs = 4'b1101;
        rt = 4'b1001;
        sel = 0;
        repeat (8) begin
            #10;
            sel = sel + 1'b1;
        end
        
        rs = 4'b1011;
        rt = 4'b1011;
        sel = 0;
        repeat (8) begin
            #10;
            sel = sel + 1'b1;
        end
        #1 $finish;
    end
endmodule
