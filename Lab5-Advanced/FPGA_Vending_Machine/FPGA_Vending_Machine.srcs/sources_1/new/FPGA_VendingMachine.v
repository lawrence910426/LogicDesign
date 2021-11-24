`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2021 05:29:30 PM
// Design Name: 
// Module Name: FPGA_VendingMachine
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


module FPGA_VendingMachine(
    CLK,
    RESET, INSERT_5, INSERT_10, INSERT_50, CANCEL,
    PS2_DATA, PS2_CLK,
    AN, _7SEG
);
    input CLK;
    input RESET, INSERT_5, INSERT_10, INSERT_50, CANCEL;
    input PS2_DATA, PS2_CLK;
    output [3:0] AN;
    output [6:0] _7SEG;
    
    reg [2:0] state;
    reg [6:0] value;
    reg [31:0] counter;
    
    parameter INSERTING = 2'b00,
              RETURNING = 2'b10,
              
              MAX_VALUE = 7'd100,
              COUNTER_MAX = 32'd1000_0000; 
    
    wire reset, insert_5, insert_10, insert_50, cancel;
    wire A, S, D, F;
    
    Debounce_OnePulse
        dbop_reset(.clk(CLK), .in(RESET), .out(reset)),
        dbop_insert_5(.clk(CLK), .in(INSERT_5), .out(insert_5)),
        dbop_insert_10(.clk(CLK), .in(INSERT_10), .out(insert_10)),
        dbop_insert_50(.clk(CLK), .in(INSERT_50), .out(insert_50)),
        dbop_cancel(.clk(CLK), .in(CANCEL), .out(cancel));
        
    Seven_Segment_Display
        _7sd (.clk(CLK), .rst_n(!reset), .value(value), .AN(AN), .SEG(_7SEG));
        
    Keyboard
        keyboard (
            .clk(CLK), .rst(reset), .PS2_DATA(PS2_DATA), .PS2_CLK(PS2_CLK),
            .A(A), .S(S), .D(D), .F(F)
        );
    
    always @ (posedge CLK) begin
        if (reset == 1'b1) begin
            state <= INSERTING;
            value <= 7'd0;
            counter <= 32'd0;
        end else begin
            if (counter == COUNTER_MAX) begin
                counter <= 32'd0;
                if (state == INSERTING) begin
                    if (A | S | D | F | cancel) begin
                        state <= RETURNING;
                        value <= value - 
                            (A ? 7'd75 : 7'd0) - 
                            (S ? 7'd50 : 7'd0) -
                            (D ? 7'd30 : 7'd0) -
                            (S ? 7'd25 : 7'd0); 
                    end else begin
                        value <= value +
                            (insert_5 ? 7'd5 : 7'd0) +
                            (insert_10 ? 7'd10 : 7'd0) +
                            (insert_50 ? 7'd50 : 7'd0); 
                    end
                end else begin
                    value <= value - 7'd5;
                end
            end else begin
                counter <= counter + 32'd1;
            end
        end
    end
endmodule
