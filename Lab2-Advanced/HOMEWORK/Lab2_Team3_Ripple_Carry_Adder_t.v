`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 01:10:32
// Design Name: 
// Module Name: Lab2_TeamX_Ripple_Carry_Adder_t
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


module Lab2_TeamX_Ripple_Carry_Adder_t;
    reg [7:0] a = 8'b00000000;
    reg [7:0] b = 8'b00000000;
    reg cin = 1'b0;
    wire [7:0] sum;
    wire cout;
    
    Ripple_Carry_Adder rca(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
    
    initial begin
        repeat (2 ** 5) begin
            #1 
            a = a + 8'b00001010;
            b = b + 8'b00000101;
        end
        #1 cin = 1'b1;
        repeat (2 ** 5) begin
            #1 
            a = a + 8'b00001010;
            b = b + 8'b00000101;
        end
    #1 $finish;
    end
    
endmodule
