`timescale 1ns/1ps

module Mealy_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output reg dec;
    
    reg [4:0] state;
    
    parameter   _root = 5'd0,
    
                _0 = 5'd1,
                _01 = 5'd2,
                _011 = 5'd3,
                _0111 = 5'd4,
                _00 = 5'd5,
                _0x0 = 5'd6,
                _0xx0 = 5'd7,
                
                _1 = 5'd8,
                _10 = 5'd9,
                _100 = 5'd10,
                _1001 = 5'd11,
                _101 = 5'd12,
                _10x0 = 5'd13,

                _11 = 5'd14,
                _111 = 5'd15,
                _1110 = 5'd16,
                _110 = 5'd17,
                _11x1 = 5'd18;
                 
                
     always @ (posedge clk) begin
        if (rst_n == 1'b0) begin
            state <= _root;
        end else begin
            case (state) 
                _root:  state <= (in == 1'b0 ? _0 : _1);
                
                _0:     state <= (in == 1'b0 ? _00 : _01);
                _01:    state <= (in == 1'b0 ? _0x0 : _011);
                _011:   state <= _root;
                _0111:  state <= _root;
                
                _00:    state <= _0x0;
                _0x0:   state <= _root;
                _0xx0:  state <= _root;
                
                _1:     state <= (in == 1'b0 ? _10 : _11);
                _10:    state <= (in == 1'b0 ? _100 : _101);
                _100:   state <= _root;
                _1001:  state <= _root;
                
                _101:   state <= _root;
                _10x0:  state <= _root;
                
                _11:    state <= (in == 1'b0 ? _110 : _111);
                _111:   state <= _root;
                _1110:  state <= _root;
                
                _110:   state <= _root;
                _11x1:  state <= _root;
            endcase
        end
     end
     
     always @ (state, in) begin
        case (state)
            _011: dec <= (in ? 1'b1 : 1'b0);
            _100: dec <= (in ? 1'b1 : 1'b0);
            _111: dec <= (in ? 1'b0 : 1'b1);
            default: dec = 0;
        endcase
     end
        
endmodule
