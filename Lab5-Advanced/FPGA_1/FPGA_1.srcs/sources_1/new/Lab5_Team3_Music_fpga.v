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
	
	assign rst = (key_num == 3'b011) ? 1'b1 : 1'b0;
	
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