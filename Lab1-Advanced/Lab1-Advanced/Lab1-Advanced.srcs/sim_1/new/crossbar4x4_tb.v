`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/27 21:01:47
// Design Name: 
// Module Name: crossbar4x4_tb
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


module crossbar4x4_tb;
    reg [3:0] in1, in2, in3, in4;
    wire [3:0] out1, out2, out3, out4;
    reg [4:0] control = 5'b00001;
    
    crossbar4x4 verify(
                .in1(in1), .in2(in2),
                .in3(in3), .in4(in4),
                .control(control),
                .out1(out1), .out2(out2),
                .out3(out3), .out4(out4)
                );
    
    initial begin
        in1 = 4'b0000;
        in2 = 4'b0001;
        in3 = 4'b0010;
        in4 = 4'b0011;
        repeat (2 ** 5) begin
            #1;
            control = control + 5'b00001;
            in1 = in1 + 4'b0001;
            in2 = in2 + 4'b0001;
            in3 = in3 + 4'b0001;
            in4 = in4 + 4'b0001;
        end
        #1 $finish;
    end;
endmodule
