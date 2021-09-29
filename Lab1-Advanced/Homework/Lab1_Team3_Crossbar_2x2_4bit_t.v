`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2021 04:09:09 AM
// Design Name: 
// Module Name: crossbar_tb
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


module crossbar_tb;
    reg [3:0] in1, in2;
    wire [3:0] out1, out2;
    reg control = 1'b0;
    
    crossbar verify(
        .in1(in1), .in2(in2),
        .out1(out1), .out2(out2),
        .control(control)
    );
    
    initial begin
        in1 = 4'b0000;
        repeat (2 ** 4) begin
            #1;
            control = control + 1'b1;
            in1 = in1 + 4'b0001;
            in2 = 4'b1111 - in1;
        end
        #1 $finish;
    end;
endmodule
