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
	input wire rst,
	input wire clk
    );
    
    //AUDIO
    parameter BEAT_FREQ = 32'd1;	//one beat=1sec
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
    
    reg dir;
    reg [1:0] slow;
    reg [1:0] key_num;
	
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
	
	always @ (posedge clk, posedge rst) begin
	   if(rst) begin
	       dir <= 1'b1;
	       slow <= 2'd1;
	   end
	   else begin
	       if (been_ready && key_down[last_change] == 1'b1) begin
	           if (key_num == 2'b00)begin
					dir <= 1'b1;
	                slow <= slow;
	           end
	           else if (key_num == 2'b01) begin
	                dir <= 1'b0;
	                slow <= slow;
	           end
	           else if (key_num == 2'b10) begin
	                dir <= dir;
	                if(slow == 2'b01) slow <= 2'b10;
	                else slow <= 2'b01;
	           end
	           else begin
	                dir <= 1'b1;
	                slow <= 2'd1;
	           end
	       end
	   end
	end
	
	always @ (*) begin
		case (last_change)
			W        : key_num = 2'b00;
			S        : key_num = 2'b01;
			R        : key_num = 2'b10;
			default  : key_num = 2'b11;
		endcase
	end
	
	//Generate beat speed
    PWM_gen btSpeedGen ( .clk(clk), 
					     .reset(reset),
					     .freq(BEAT_FREQ*slow),
					     .duty(DUTY_BEST), 
					     .PWM(beatFreq)
    );
	
    //manipulate beat
    PlayerCtrl playerCtrl_00 ( .clk(beatFreq),
						       .reset(reset),
						       .dir(dir),
						       .ibeat(ibeatNum)
    );	
	
    //Generate variant freq. of tones
    Music music00 ( .ibeatNum(ibeatNum),
				    .tone(freq)
    );

    // Generate particular freq. signal
    PWM_gen toneGen ( .clk(clk), 
				      .reset(reset), 
				      .freq(freq),
				      .duty(DUTY_BEST), 
				      .PWM(pmod_1)
    );
        
endmodule
