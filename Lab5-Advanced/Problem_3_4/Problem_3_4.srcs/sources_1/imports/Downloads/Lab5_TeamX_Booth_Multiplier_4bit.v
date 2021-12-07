`timescale 1ns/1ps 

module Booth_Multiplier_4bit(clk, rst_n, start, a, b, p);
    input clk;
    input rst_n; 
    input start;
    input signed [3:0] a, b;
    output signed [7:0] p;
    
    reg [9:0] A, S, P;
    parameter WAIT = 2'b00,
              CAL = 2'b01,
              FINISH = 2'b10;
    reg [1:0] state, step;
    wire [9:0] A_P, S_P;
    wire signed [4:0] a_5bit;
    
    assign a_5bit = (a[3] == 1'b0 ? 
        {
            1'b0, a[3:0]
        } : 
        {
            1'b1, ~$unsigned(-a) + 1
        }
    );
    
    assign A_P = A + P,
           S_P = S + P,
           p = P[8:1];
    
    always @ (posedge clk) begin
        if (rst_n == 1'b1) begin
            state <= WAIT;
        end else begin
            case (state)
                WAIT: begin
                    state <= WAIT;
                end
                
                CAL: begin
                    case (P[1:0])
                        2'b00: P <= {P[9], P[9:1]};
                        2'b11: P <= {P[9], P[9:1]};
                        2'b01: P <= {A_P[9], A_P[9:1]};
                        2'b10: P <= {S_P[9], S_P[9:1]};
                        default: P <= P;
                    endcase
                    if (step == 2'b11) begin
                        state <= FINISH;
                    end else begin
                        step <= step + 2'b01;
                    end
                end
                
                FINISH: begin
                    state <= WAIT;
                end
                
                default: state <= WAIT;
            endcase
        end
    end
    
    always @ (posedge start) begin
        case (state)
            WAIT: begin
                A <= {a_5bit, 5'b00000};
                S <= {-a_5bit, 5'b00000};
                P <= {5'b00000, b, 1'b0};
                state <= CAL;
                step <= 2'b00;
            end
            
            default: state <= WAIT;
        endcase
    end 
endmodule
