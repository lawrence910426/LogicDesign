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
    // A, S, D, F,
    AN, _7SEG, LEDS
    // VALUE
);
    input CLK;
    input RESET, INSERT_5, INSERT_10, INSERT_50, CANCEL;
    inout PS2_DATA, PS2_CLK;
    output [3:0] AN;
    output [6:0] _7SEG;
    output [3:0] LEDS;
    
    // input wire A, S, D, F;
    // output wire [7:0] VALUE;
    // assign VALUE = value;
    
    reg [2:0] state;
    reg signed [7:0] value;
    reg [31:0] counter;
    
    parameter INSERTING = 2'b00,
              RETURNING = 2'b10,
              COUNTER_MAX = 32'd1_0000_0000; 
    
    wire reset, insert_5, insert_10, insert_50, cancel;
    wire signed [7:0] new_value;
    wire a, s, d, f;
    
    assign new_value = value +
        (insert_5 ? 8'd5 : 8'd0) +
        (insert_10 ? 8'd10 : 8'd0) +
        (insert_50 ? 8'd50 : 8'd0);
    
    Keyboard
        keyboard (
            .clk(CLK), .rst(reset), .PS2_DATA(PS2_DATA), .PS2_CLK(PS2_CLK),
            .A(A), .S(S), .D(D), .F(F)
        );
    
    Debounce_OnePulse
        dbop_reset(.clk(CLK), .in(RESET), .out(reset)),
        dbop_insert_5(.clk(CLK), .in(INSERT_5), .out(insert_5)),
        dbop_insert_10(.clk(CLK), .in(INSERT_10), .out(insert_10)),
        dbop_insert_50(.clk(CLK), .in(INSERT_50), .out(insert_50)),
        dbop_cancel(.clk(CLK), .in(CANCEL), .out(cancel)),
        dbop_a (.clk(CLK), .in(A), .out(a)),
        dbop_s (.clk(CLK), .in(S), .out(s)),
        dbop_d (.clk(CLK), .in(D), .out(d)),
        dbop_f (.clk(CLK), .in(F), .out(f));
        
    Seven_Segment_Display
        _7sd (.clk(CLK), .rst_n(!reset), .value(value), .AN(AN), .SEG(_7SEG));
    
    assign LEDS = {
        value >= 8'd75,
        value >= 8'd50,
        value >= 8'd30,
        value >= 8'd25
    };
    
    always @ (posedge CLK) begin
        if (reset == 1'b1) begin
            state <= INSERTING;
            value <= 8'd0;
        end else begin
            if (state == INSERTING) begin
                if (a | s | d | f | cancel) begin
                    state <= RETURNING;
                    counter <= 32'd0;
                    if (a) value <= value - 8'd75;
                    else if (s) value <= value - 8'd50;
                    else if (d) value <= value - 8'd30;
                    else if (f) value <= value - 8'd25;
                    else value <= value;
                end else begin
                    value <= (new_value >= 8'd100 ? 8'd100 : new_value);
                end
            end else begin
                if (value == 8'd0) begin
                    state <= INSERTING;
                end else begin
                    if (counter == COUNTER_MAX) begin
                        counter <= 32'd0;
                        value <= value - 8'd5;
                    end else begin
                        counter <= counter + 32'd1;
                    end
                end
            end
        end
    end
endmodule
