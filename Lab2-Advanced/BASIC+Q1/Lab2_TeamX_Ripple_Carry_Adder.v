`timescale 1ns/1ps

module Ripple_Carry_Adder(a, b, cin, cout, sum);
    input [7:0] a, b;
    input cin;
    output cout;
    output [7:0] sum;
    wire c1,c2,c3,c4,c5,c6,c7;
    
    Full_Adder fa0(.a(a[0]), .b(b[0]), .cin(cin), .cout(c1), .sum(sum[0]));
    Full_Adder fa1(.a(a[1]), .b(b[1]), .cin(c1), .cout(c2), .sum(sum[1]));
    Full_Adder fa2(.a(a[2]), .b(b[2]), .cin(c2), .cout(c3), .sum(sum[2]));
    Full_Adder fa3(.a(a[3]), .b(b[3]), .cin(c3), .cout(c4), .sum(sum[3]));
    Full_Adder fa4(.a(a[4]), .b(b[4]), .cin(c4), .cout(c5), .sum(sum[4]));
    Full_Adder fa5(.a(a[5]), .b(b[5]), .cin(c5), .cout(c6), .sum(sum[5]));
    Full_Adder fa6(.a(a[6]), .b(b[6]), .cin(c6), .cout(c7), .sum(sum[6]));
    Full_Adder fa7(.a(a[7]), .b(b[7]), .cin(c7), .cout(cout), .sum(sum[7]));
    
endmodule