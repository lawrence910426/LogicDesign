`timescale 1ns / 1ps

module Seven_Segment_Display (clk, rst_n, value, AN, SEG);
    input clk, rst_n;
    input [6:0] value;
    
    output reg [3:0] AN;
    output reg [6:0] SEG;
    
    parameter [9:0]  MAPPING  = {
         7'b0000001,
         7'b1001111,
         7'b0010010,
         7'b0000110,
         7'b1001100,
         7'b0100100,
         7'b0100000,
         7'b0001111,
         7'b0000000,
         7'b0001100
    };
    parameter    UPDATE_INTERVAL = 32'd1_000_000;
    
    reg [31:0] counter;
    
    wire [3:0]   _1, _2;
    assign       _1 = value % 7'd10,
                 _2 = (value / 7'd10) % 7'd10;
    
    always @ (posedge clk) begin
        if (rst_n == 1'b1) begin
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
        SEG <= (
            AN == 4'b1110 ? MAPPING[_1] :
            AN == 4'b1101 ? MAPPING[_2] :
            7'b1111111
        );
    end
endmodule
