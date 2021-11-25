`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/21 15:31:48
// Design Name: 
// Module Name: Lab5_Team3_Music_fpga
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


module Lab5_Team3_Music_fpga(
    output pmod_1,
	output pmod_2,
	output pmod_4,
    inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire clk
    );
    
    //AUDIO
    parameter BEAT_FREQ_1s = 32'd4;	//one beat=1sec
    parameter BEAT_FREQ_1_2s = 32'd8;
    parameter DUTY_BEST = 10'd512;	//duty cycle=50%
    
    wire [31:0] freq;
    wire [7:0] ibeatNum;
    wire beatFreq;

    assign pmod_2 = 1'd1;	//no gain(6dB)
    assign pmod_4 = 1'd1;	//turn-on
    
    //KEYBOARD
    parameter [8:0] W = 9'b0_0001_1101; //1D
	parameter [8:0] S = 9'b0_0001_1011; //1B
	parameter [8:0] R = 9'b0_0010_1101; //2D
    parameter [8:0] enter = 9'b0_0101_1010;//5A
    
    wire rst;
    reg dir;
    reg fast;
    reg [2:0] key_num;
	
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
               if(key_num != 3'b100) begin
                   case (key_num)
                       3'b000:begin
                           dir <= 1'b1;
                           fast <= fast;
                       end
                       3'b001: begin
                           dir <= 1'b0;
                           fast <= fast;
                       end
                       3'b010: begin
                           dir <= dir;
                           fast <= fast + 1'b1;
                       end
                       3'b011: begin
                           dir <= 1'b1;
                           fast <= 1'b0;
                       end
                       default: begin
                           dir <= dir;
                           fast <= fast;
                       end
                   endcase
               end
           end
	      
    
	end
	
	always @ (*) begin
		case (last_change)
			W        : key_num = 3'b000;
			S        : key_num = 3'b001;
			R        : key_num = 3'b010;
			enter    : key_num = 3'b011;
			default  : key_num = 3'b100;
		endcase
	end
	
	assign rst = (last_change == 3'b011) ? 1'b1 : 1'b0;
	
	//Generate beat speed
    PWM_gen btSpeedGen ( .clk(clk), 
					     .reset(rst),
					     .freq((fast==1'b0)?BEAT_FREQ_1s:BEAT_FREQ_1_2s),
					     .duty(DUTY_BEST),
					     .PWM(beatFreq)
    );
	
    //manipulate beat
    PlayerCtrl playerCtrl_00 ( .clk(beatFreq),
						       .reset(rst),
						       .dir(dir),
						       .ibeat(ibeatNum)
    );	
	
    //Generate variant freq. of tones
    Music music00 ( .ibeatNum(ibeatNum),
				    .tone(freq)
    );

    // Generate particular freq. signal
    PWM_gen toneGen ( .clk(clk), 
				      .reset(rst), 
				      .freq(freq),
				      .duty(DUTY_BEST), 
				      .PWM(pmod_1)
    );
        
endmodule

//
//
//
//

`define C4 32'd262 
`define D4 32'd294 
`define E4 32'd330 
`define F4 32'd349 
`define G4 32'd392 
`define A4 32'd440 
`define B4 32'd494 

`define C5 32'd523 
`define D5 32'd587 
`define E5 32'd659 
`define F5 32'd698 
`define G5 32'd784 
`define A5 32'd880 
`define B5 32'd988 

`define C6 32'd1047 
`define D6 32'd1175 
`define E6 32'd1319 
`define F6 32'd1397 
`define G6 32'd1568 
`define A6 32'd1760 
`define B6 32'd1976 

`define C7 32'd2093 
`define D7 32'd2349 
`define E7 32'd2637 
`define F7 32'd2794 
`define G7 32'd3136 
`define A7 32'd3520 
`define B7 32'd3951 

`define C8 32'd4186
`define XX 32'd20000 //slience (over freq.)

module Music (
	input [7:0] ibeatNum,	
	output reg [31:0] tone
);

always @(*) begin
	case (ibeatNum)		// 1/4 beat
		8'd0 : tone = `XX;	
		8'd1 : tone = `C4;
		8'd2 : tone = `C4;
		8'd3 : tone = `C4;
		8'd4 : tone = `D4;	
		8'd5 : tone = `D4;
		8'd6 : tone = `D4;
		8'd7 : tone = `D4;
		8'd8 : tone = `E4;	
		8'd9 : tone = `E4;
		8'd10 : tone = `E4;
		8'd11 : tone = `E4;
		8'd12 : tone = `F4;
		8'd13 : tone = `F4;
		8'd14 : tone = `F4;
		8'd15 : tone = `F4;
		8'd16 : tone = `G4;
		8'd17 : tone = `G4;
		8'd18 : tone = `G4;
		8'd19 : tone = `G4;
		8'd20 : tone = `A4;
		8'd21 : tone = `A4;
		8'd22 : tone = `A4;
		8'd23 : tone = `A4;
		8'd24 : tone = `B4;
		8'd25 : tone = `B4;
		8'd26 : tone = `B4;
		8'd27 : tone = `B4;
		
		8'd28 : tone = `C5;
		8'd29 : tone = `C5;
		8'd30 : tone = `C5;
		8'd31 : tone = `C5;
		8'd32 : tone = `D5;	
		8'd33 : tone = `D5;
		8'd34 : tone = `D5;
		8'd35 : tone = `D5;
		8'd36 : tone = `E5;	
		8'd37 : tone = `E5;
		8'd38 : tone = `E5;
		8'd39 : tone = `E5;
		8'd40 : tone = `F5;
		8'd41 : tone = `F5;
		8'd42 : tone = `F5;
		8'd43 : tone = `F5;
		8'd44 : tone = `G5;
		8'd45 : tone = `G5;
		8'd46 : tone = `G5;
		8'd47 : tone = `G5;
		8'd48 : tone = `A5;
		8'd49 : tone = `A5;
		8'd50 : tone = `A5;
		8'd51 : tone = `A5;
		8'd52 : tone = `B5;
		8'd53 : tone = `B5;
		8'd54 : tone = `B5;
		8'd55 : tone = `B5;
		
		8'd56 : tone = `C6;
		8'd57 : tone = `C6;
		8'd58 : tone = `C6;
		8'd59 : tone = `C6;
		8'd60 : tone = `D6;	
		8'd61 : tone = `D6;
		8'd62 : tone = `D6;
		8'd63 : tone = `D6;
		8'd64 : tone = `E6;	
		8'd65 : tone = `E6;
		8'd66 : tone = `E6;
		8'd67 : tone = `E6;
		8'd68 : tone = `F6;
		8'd69 : tone = `F6;
		8'd70 : tone = `F6;
		8'd71 : tone = `F6;
		8'd72 : tone = `G6;
		8'd73 : tone = `G6;
		8'd74 : tone = `G6;
		8'd75 : tone = `G6;
		8'd76 : tone = `A6;
		8'd77 : tone = `A6;
		8'd78 : tone = `A6;
		8'd79 : tone = `A6;
		8'd80 : tone = `B6;
		8'd81 : tone = `B6;
		8'd82 : tone = `B6;
		8'd83 : tone = `B6;
		
		8'd84 : tone = `C7;
		8'd85 : tone = `C7;
		8'd86 : tone = `C7;
		8'd87 : tone = `C7;
		8'd88 : tone = `D7;	
		8'd89 : tone = `D7;
		8'd90 : tone = `D7;
		8'd91 : tone = `D7;
		8'd92 : tone = `E7;	
		8'd93 : tone = `E7;
		8'd94 : tone = `E7;
		8'd95 : tone = `E7;
		8'd96 : tone = `F7;
		8'd97 : tone = `F7;
		8'd98 : tone = `F7;
		8'd99 : tone = `F7;
		8'd100 : tone = `G7;
		8'd101 : tone = `G7;
		8'd102 : tone = `G7;
		8'd103 : tone = `G7;
		8'd104 : tone = `A7;
		8'd105 : tone = `A7;
		8'd106 : tone = `A7;
		8'd107 : tone = `A7;
		8'd108 : tone = `B7;
		8'd109 : tone = `B7;
		8'd110 : tone = `B7;
		8'd111 : tone = `B7;
		
		8'd112 : tone = `C8;
		8'd113 : tone = `C8;
		8'd114 : tone = `C8;
		8'd115 : tone = `C8;
		
		default : tone = `XX;
	endcase
end

endmodule

//
//
//
//

module PlayerCtrl (
	input clk,
	input reset,
	input dir,
	output reg [7:0] ibeat
);
parameter BEATLEAGTH = 116;

always @(posedge clk, posedge reset) begin
	if (reset)
		ibeat <= 0;
	else begin
	   if (dir == 1'b1) begin
	       if (ibeat < BEATLEAGTH-1) 
		      ibeat <= ibeat + 1'b1;
	       else begin
		      ibeat <= (BEATLEAGTH-1);
           end
	   end
	   else begin
	       if (ibeat > 1) 
		      ibeat <= ibeat - 1'b1;
	       else begin
		      ibeat <= 1;
		   end
	   end
	end
end

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Module Name: PWM_gen
// Description: This IP expects 100 MHz input clock and generates the desired output
// 				at PWM output with the configurable frequency (in Hz) and duty cycle.
// 				
//				The configurable frequency should be less or equal to 100 MHz and 
//				the duty cycle can vary in step of 1/1024, i.e. 0.0009765625 or 
//				approximately 0.1% 
//////////////////////////////////////////////////////////////////////////////////
module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
);

wire [31:0] count_max = 100_000_000 / freq;
wire [31:0] count_duty = count_max * duty / 1024;
reg [31:0] count;
    
    
    
always @(posedge clk, posedge reset) begin
    if (reset) begin
        count <= 0;
        PWM <= 0;
    end else if (count < count_max) begin
        count <= count + 1;
		if(count < count_duty)
            PWM <= 1;
        else
            PWM <= 0;
    end else begin
        count <= 0;
        PWM <= 0;
    end
end

endmodule

module KeyboardDecoder(
	output reg [511:0] key_down,
	output wire [8:0] last_change,
	output reg key_valid,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
    );
    
    parameter [1:0] INIT			= 2'b00;
    parameter [1:0] WAIT_FOR_SIGNAL = 2'b01;
    parameter [1:0] GET_SIGNAL_DOWN = 2'b10;
    parameter [1:0] WAIT_RELEASE    = 2'b11;
    
	parameter [7:0] IS_INIT			= 8'hAA;
    parameter [7:0] IS_EXTEND		= 8'hE0;
    parameter [7:0] IS_BREAK		= 8'hF0;
    
    reg [9:0] key;		// key = {been_extend, been_break, key_in}
    reg [1:0] state;
    reg been_ready, been_extend, been_break;
    
    wire [7:0] key_in;
    wire is_extend;
    wire is_break;
    wire valid;
    wire err;
    
    wire [511:0] key_decode = 1 << last_change;
    assign last_change = {key[9], key[7:0]};
    
    KeyboardCtrl_0 inst (
		.key_in(key_in),
		.is_extend(is_extend),
		.is_break(is_break),
		.valid(valid),
		.err(err),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);
	
	OnePulse op (
		.signal_single_pulse(pulse_been_ready),
		.signal(been_ready),
		.clock(clk)
	);
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		state <= INIT;
    		been_ready  <= 1'b0;
    		been_extend <= 1'b0;
    		been_break  <= 1'b0;
    		key <= 10'b0_0_0000_0000;
    	end else begin
    		state <= state;
			been_ready  <= been_ready;
			been_extend <= (is_extend) ? 1'b1 : been_extend;
			been_break  <= (is_break ) ? 1'b1 : been_break;
			key <= key;
    		case (state)
    			INIT : begin
    					if (key_in == IS_INIT) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready  <= 1'b0;
							been_extend <= 1'b0;
							been_break  <= 1'b0;
							key <= 10'b0_0_0000_0000;
    					end else begin
    						state <= INIT;
    					end
    				end
    			WAIT_FOR_SIGNAL : begin
    					if (valid == 0) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready <= 1'b0;
    					end else begin
    						state <= GET_SIGNAL_DOWN;
    					end
    				end
    			GET_SIGNAL_DOWN : begin
						state <= WAIT_RELEASE;
						key <= {been_extend, been_break, key_in};
						been_ready  <= 1'b1;
    				end
    			WAIT_RELEASE : begin
    					if (valid == 1) begin
    						state <= WAIT_RELEASE;
    					end else begin
    						state <= WAIT_FOR_SIGNAL;
    						been_extend <= 1'b0;
    						been_break  <= 1'b0;
    					end
    				end
    			default : begin
    					state <= INIT;
						been_ready  <= 1'b0;
						been_extend <= 1'b0;
						been_break  <= 1'b0;
						key <= 10'b0_0_0000_0000;
    				end
    		endcase
    	end
    end
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		key_valid <= 1'b0;
    		key_down <= 511'b0;
    	end else if (key_decode[last_change] && pulse_been_ready) begin
    		key_valid <= 1'b1;
    		if (key[8] == 0) begin
    			key_down <= key_down | key_decode;
    		end else begin
    			key_down <= key_down & (~key_decode);
    		end
    	end else begin
    		key_valid <= 1'b0;
			key_down <= key_down;
    	end
    end

endmodule

