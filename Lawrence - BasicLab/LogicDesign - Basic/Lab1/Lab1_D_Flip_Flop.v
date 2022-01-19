`timescale 1ns/1ps

module D_Flip_Flop(clk, d, q);
input clk;
input d;
output q;

endmodule

module D_Latch(e, d, q);
input e;
input d;
output q;

wire x, y, nd, qbar;

not (nd, d);
nand (x, d, e);
nand (y, nd, e);

nand (q, x, qbar);
nand (qbar, y, q);

endmodule