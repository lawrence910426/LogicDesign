`timescale 1ns / 1ps

module Keyboard (
	output reg A,
	output reg S,
	output reg D,
	output reg F,
	
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
);
	wire [511:0] key_down;
	wire [8:0] last_change;
	wire been_ready;
	
	KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);

	always @ (posedge clk) begin
        if (been_ready && key_down[last_change] == 1'b1) begin
            case (last_change)
                 9'h1C: {A, S, D, F} = {1'b1, 1'b0, 1'b0, 1'b0};
                 9'h1B: {A, S, D, F} = {1'b0, 1'b1, 1'b0, 1'b0};
                 9'h23: {A, S, D, F} = {1'b0, 1'b0, 1'b1, 1'b0};
                 9'h2B: {A, S, D, F} = {1'b0, 1'b0, 1'b0, 1'b1};
                 default: {A, S, D, F} = {1'b0, 1'b0, 1'b0, 1'b0};
            endcase
        end
	end
	
endmodule
