`timescale 1ns/1ps

module Mux_4x1_4bit(a, b, c, d, sel, f);
input [3:0] a, b, c, d;
input [1:0] sel;
output [3:0] f;

wire A, B, C, D;
wire n1, n2, y1, y2;
wire oA[3:0], oB[3:0], oC[3:0], oD[3:0];

not (n1, sel[0]);
not (n2, sel[1]);
or (y1, sel[0], sel[0]);
or (y2, sel[1], sel[1]);

and (A, n1, n2);
and (B, y1, n2);
and (C, n1, y2);
and (D, y1, y2);

and (oA[0], A, a[0]);
and (oA[1], A, a[1]);
and (oA[2], A, a[2]);
and (oA[3], A, a[3]);

and (oB[0], B, b[0]);
and (oB[1], B, b[1]);
and (oB[2], B, b[2]);
and (oB[3], B, b[3]);

and (oC[0], C, c[0]);
and (oC[1], C, c[1]);
and (oC[2], C, c[2]);
and (oC[3], C, c[3]);

and (oD[0], D, d[0]);
and (oD[1], D, d[1]);
and (oD[2], D, d[2]);
and (oD[3], D, d[3]);

or (f[0], oA[0], oB[0], oC[0], oD[0]);
or (f[1], oA[1], oB[1], oC[1], oD[1]);
or (f[2], oA[2], oB[2], oC[2], oD[2]);
or (f[3], oA[3], oB[3], oC[3], oD[3]);

endmodule