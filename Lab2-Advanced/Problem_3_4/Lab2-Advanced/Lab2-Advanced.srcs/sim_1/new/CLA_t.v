`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 04:43:41 PM
// Design Name: 
// Module Name: CLA_t
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


module CLA_t();
    reg [7:0] a, b;
    reg c0;
    wire [7:0] s; 
    wire c;
    wire [16:0] debug;
    
    Carry_Look_Ahead_Adder_8bit chip(
        .a(a), .b(b), .c0(c0), .s(s), .c8(c), .debug(debug)
    );
    
    initial begin
        a = 0;
        b = 50;
        repeat (16) begin
            a = a + 1;
            b = b - 3;
            c0 = 0;
            #10;
        end
        #1 $finish;
    end
endmodule
