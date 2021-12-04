`timescale 1ns / 1ps

module debounce (pb_debounced, pb, clk);
    output pb_debounced; // signal of a pushbutton after being debounced
    input pb; // signal from a pushbutton
    input clk;
    
    reg [3:0] DFF; // use shift_reg to filter pushbutton bounce
    
    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
        DFF[0] <= pb;
    end
    
    assign pb_debounced = ((DFF == 4'b1111) ? 1'b1 : 1'b0);
endmodule

module onepulse (PB_debounced, CLK, PB_one_pulse);
    input PB_debounced;
    input CLK;
    output PB_one_pulse;
    
    reg PB_one_pulse, PB_debounced_delay;
    
    always @(posedge CLK) begin
        PB_one_pulse <= PB_debounced & (! PB_debounced_delay);
        PB_debounced_delay <= PB_debounced;
    end
endmodule


module Debounce_OnePulse(clk, in, out);
    input clk;
    input in;
    output out;
    
    wire temp;
    debounce db (temp, in, clk);
    onepulse op (temp, clk, out);
    // assign out = in;
endmodule