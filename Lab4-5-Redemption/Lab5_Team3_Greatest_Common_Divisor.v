`timescale 1ns/1ps

module Greatest_Common_Divisor (clk, rst_n, start, a, b, done, gcd);
    input clk, rst_n;
    input start;
    input [15:0] a;
    input [15:0] b;
    output reg done;
    output reg [15:0] gcd;
    
    reg [1:0] state;
    reg [15:0] A, B;
    
    parameter WAIT = 2'b00;
    parameter CAL = 2'b01;
    parameter FINISH = 2'b10;
    parameter FINISH_2 = 2'b11;
        
    always @ (posedge clk) begin
        if (rst_n == 1'b1) begin
            state <= WAIT;
        end else begin
            case (state)
                WAIT: begin
                    if (start == 1'b1) begin
                        A <= a;
                        B <= b;
                        state <= CAL;
                    end else begin
                        state <= WAIT;
                    end
                     
                    gcd <= 16'b0;
                    done <= 1'b0;
                end
                
                CAL: begin
                    if (A == 0) begin
                        gcd <= B;
                        state <= FINISH;
                        done <= 1'b1;
                    end else if (B == 0) begin
                        gcd <= A;
                        state <= FINISH;
                        done <= 1'b1;
                    end else begin
                        if (A > B) A <= A - B;
                        else B <= B - A;
                    end
                end
                
                FINISH: begin
                    state <= FINISH_2;
                end
                
                FINISH_2: begin
                    state <= WAIT;
                    done <= 1'b0;
                end
                
                default: state <= WAIT;
            endcase
        end
    end
endmodule
