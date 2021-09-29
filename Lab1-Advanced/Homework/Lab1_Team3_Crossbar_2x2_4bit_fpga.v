`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2021 04:08:31 AM
// Design Name: 
// Module Name: crossbar
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


module crossbar(
    input [3:0] in1,
    input [3:0] in2,
    input control,
    output [3:0] out1,
    output [3:0] out11,
    output [3:0] out2,
    output [3:0] out22
);

    wire ncontrol;
    not (ncontrol, control);
    
    wire [3:0] x, y, z, w;
    
    dmux_1_2    dmux_in1    [3:0]   (
                                        .in(in1),
                                        .sel(ncontrol),
                                        .out1(x), .out2(y)
                                    ),
                dmux_in2    [3:0]   (
                                        .in(in2),
                                        .sel(control),
                                        .out1(z), .out2(w)
                                    );
    mux_2_1     mux_out1     [3:0]  (
                                        .in1(x), .in2(z),
                                        .sel(ncontrol),
                                        .out(out1)
                                    ),
                mux_out11    [3:0]  (
                                        .in1(x), .in2(z),
                                        .sel(ncontrol),
                                        .out(out11)
                                    ),
                mux_out2     [3:0]  (
                                        .in1(y), .in2(w),
                                        .sel(control),
                                        .out(out2)    
                                    ),
                mux_out22    [3:0]  (
                                        .in1(y), .in2(w),
                                        .sel(control),
                                        .out(out22)    
                                    );
endmodule

module mux_2_1(
    input in1, input in2,
    input sel,
    output out
);
    wire [1:0] temp;
    wire nsel;
    
    not (nsel, sel);
    and (temp[0], in1, nsel);
    and (temp[1], in2, sel);
    
    or (out, temp[0], temp[1]);
endmodule

module dmux_1_2(
    input in, 
    input sel,
    output out1, output out2
);
    wire nsel;
    not (nsel, sel);
    
    and (out1, in, nsel);
    and (out2, in, sel);
endmodule

