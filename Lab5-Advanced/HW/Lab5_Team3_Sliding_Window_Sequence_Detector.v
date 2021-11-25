`timescale 1ns/1ps

module Sliding_Window_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output reg dec;
    parameter S0 = 3'b000;//1
    parameter S1 = 3'b001;//1
    parameter S2 = 3'b010;//0
    parameter S3 = 3'b011;//0
    parameter S4 = 3'b100;//1
    parameter S5 = 3'b101;//0
    parameter S6 = 3'b110;//0
    parameter S7 = 3'b111;//1
    reg [2:0] state, next_state;
    reg next_dec;
    
    always @(negedge clk) begin
        if(rst_n == 1'b0) begin
            state <= S0;
        end
        else begin
            state <= next_state;
        end 
    end
    
    always @(*) begin
        case(state)
            S0: next_state = ((in==1'b1) ? S1 : S0); 
            S1: next_state = ((in==1'b1) ? S2 : S0);
            S2: next_state = ((in==1'b1) ? S2 : S3);
            S3: next_state = ((in==1'b1) ? S1 : S4);
            S4: next_state = ((in==1'b1) ? S5 : S0);
            S5: next_state = ((in==1'b1) ? S1 : S6);
            S6: next_state = ((in==1'b1) ? S5 : S7);
            S7: next_state = ((in==1'b1) ? S1 : S0);
            default: next_state = S0;
        endcase
    end
    
    
    always @(*) begin
        if(state == S7) begin
            if(in == 1'b1) begin
                dec = 1'b1;
            end
            else begin
                dec = 1'b0;
            end
        end
        else begin
            dec = 1'b0;
        end
    end
    
    always @(posedge clk) dec <= 1'b0;
endmodule 