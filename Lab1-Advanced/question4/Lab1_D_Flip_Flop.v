`timescale 1ns/1ps

module T_Flip_Flop(clk, t, rst_n, q);
    input clk;
    input rst_n;
    input t;
    output q;
    wire w11, w12, w2, w3, t_n, q_n;
    
    not not1(t_n, t);
    not not2(q_n, q);
    and and1(w11, q, t_n);
    and and2(w12, q_n, t);
    or or1(w2, w11, w12);
    and and3(w3, w2, rst_n);
    D_Flip_Flop dff(.clk(clk), .d(w3), .q(q));
    
endmodule

module D_Flip_Flop(clk, d, q);
    input clk;
    input d;
    output q;
    wire middle, clk_n;

    not nn(clk_n, clk);

    D_Latch master_latch(.e(clk_n), .d(d), .q(middle));
    D_Latch slave_latch(.e(clk), .d(middle), .q(q));

endmodule

module D_Latch(e, d, q);
    input e;
    input d;
    output q;
    wire d_n, w_1, w_2, q_n;

    not nn(d_n, d);

    nand a1(w_1, d, e);
    nand a2(w_2, d_n, e);

    nand a3(q, w_1, q_n);
    nand a4(q_n, w_2, q);

endmodule