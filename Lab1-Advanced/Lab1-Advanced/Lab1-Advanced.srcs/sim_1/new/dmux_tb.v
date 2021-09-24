`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2021 03:40:55 AM
// Design Name: 
// Module Name: dmux_tb
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


module dmux_tb;
    reg [3:0] in = 4'b0001;
    reg [1:0] sel = 2'b00;
    wire [3:0] A, B, C, D;
    
    dmux verify(
        .A(A), .B(B), .C(C), .D(D),
        .in(in), .sel(sel)
    );
    
    initial begin
        repeat (2 ** 2) begin
            #1;
            in = in + 4'b0001;
            sel = sel + 2'b01;
        end
        #1 $finish;
    end
endmodule
