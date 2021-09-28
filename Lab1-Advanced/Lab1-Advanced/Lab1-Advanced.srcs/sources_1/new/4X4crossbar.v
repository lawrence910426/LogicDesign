`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/26 16:43:21
// Design Name: 
// Module Name: 4X4crossbar
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


module crossbar4x4(
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input [3:0] in4,
    input [4:0] control,
    output [3:0] out1,
    output [3:0] out2,
    output [3:0] out3,
    output [3:0] out4
);
    
    wire [3:0] w_1;
    wire [3:0] w_21;
    wire [3:0] w_22;
    wire [3:0] w_31;
    wire [3:0] w_32;
    wire [3:0] w_4;
    
    crossbar    _0  (
                    .in1(in1),
                    .in2(in2),
                    .control(control[0]),
                    .out1(w_1),
                    .out2(w_21)
                    ),
                _1  (
                    .in1(in3),
                    .in2(in4),
                    .control(control[1]),
                    .out1(w_31),
                    .out2(w_4)
                    ),
                _2  (
                    .in1(w_21),
                    .in2(w_31),
                    .control(control[2]),
                    .out1(w_22),
                    .out2(w_32)
                    ),
                _3  (
                    .in1(w_1),
                    .in2(w_22),
                    .control(control[3]),
                    .out1(out1),
                    .out2(out2)
                    ),
                _4  (
                    .in1(w_32),
                    .in2(w_4),
                    .control(control[4]),
                    .out1(out3),
                    .out2(out4)
                    );
             
endmodule

