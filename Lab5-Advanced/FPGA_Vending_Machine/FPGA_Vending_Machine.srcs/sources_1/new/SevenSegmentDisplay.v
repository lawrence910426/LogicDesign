`timescale 1ns / 1ps

module Seven_Segment_Display (clk, rst_n, value, AN, SEG);
    input clk, rst_n;
    input signed [7:0] value;
    
    output reg [3:0] AN;
    output reg [6:0] SEG;
    
    parameter    UPDATE_INTERVAL = 32'd1_00_000;
    
    reg [31:0] counter;
    reg [3:0] number;
    
    wire [3:0]   _1, _2, _3;
    assign       _1 = value % 8'd10,
                 _2 = (value / 8'd10) % 8'd10,
                 _3 = (value / 8'd100) % 8'd10;
    
    always @ (posedge clk) begin
        if (rst_n == 1'b0) begin
            counter <= 32'd0;
            AN <= 4'b1110;
        end else begin
            if (counter == UPDATE_INTERVAL) begin
                counter <= 32'd0;
                case (AN)
                    4'b1110: AN <= 4'b1101;
                    4'b1101: AN <= 4'b1011;
                    4'b1011: AN <= 4'b0111;
                    4'b0111: AN <= 4'b1110;
                    default: AN <= 4'b1110;
                endcase
            end else begin
                counter <= counter + 32'd1;
            end
        end
    end
    
    always @ (AN) begin
        case (AN)
            4'b1110: number <= _1;
            4'b1101: number <= (_2 == 0 && _3 == 0 ? 4'b1111 : _2);
            4'b1011: number <= (_3 == 0 ? 4'b1111 : _3);
            default: number <= 4'b1111;
        endcase
    end
    
    always @ (number) begin
        case (number)
             0: SEG <= 7'b0000001;
             1: SEG <= 7'b1001111;
             2: SEG <= 7'b0010010;
             3: SEG <= 7'b0000110;
             4: SEG <= 7'b1001100;
             5: SEG <= 7'b0100100;
             6: SEG <= 7'b0100000;
             7: SEG <= 7'b0001111;
             8: SEG <= 7'b0000000;
             9: SEG <= 7'b0001100;
             default: SEG <= 7'b1111111;
        endcase
    end
endmodule
