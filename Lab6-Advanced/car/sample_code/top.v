module Top(
    input clk,
    input rst,
    input echo,
    input left_signal,
    input right_signal,
    input mid_signal,
    output trig,
    output left_motor,
    output reg [1:0]left,
    output right_motor,
    output reg [1:0]right,
    output [3:0] led,
    output [3:0] AN,
    output [6:0] show
);

    wire [1:0] pwm, state;
    wire Rst_n, rst_pb, stop;
    
    wire [19:0] temp;
    wire [7:0] temp2;
    
    debounce d0(rst_pb, rst, clk);
    onepulse d1(rst_pb, clk, Rst_n);
    
    decoder dec ((temp / 1000) % 8, temp2);
    seven_segment sev (temp2, show);
    assign AN = 4'b1110;

    motor m_right(
        .clk(clk),
        .rst(rst_pb),
        .mode(state),
        .pwm(pwm)
    );

    sonic_top B(
        .clk(clk), 
        .rst(rst_pb), 
        .Echo(echo), 
        .Trig(trig),
        .stop(stop),
        .distance(temp)
    );
    
    tracker_sensor C(
        .clk(clk), 
        .reset(rst_pb), 
        .left_signal(left_signal), 
        .right_signal(right_signal),
        .mid_signal(mid_signal), 
        .state(state)
       );

    always @(*) begin
        // [TO-DO] Use left and right to set your pwm
        if(stop) {left, right} = 4'b0000;
        else  {left, right} = {
            (state[1]==1'b1)?pwm[1]:1'b0, (state[1]==1'b0)?pwm[1]:1'b0,
            (state[0]==1'b1)?pwm[0]:1'b0, (state[0]==1'b0)?pwm[0]:1'b0
        };
    end
    assign led[3] = left_signal;
    assign led[2] = mid_signal;
    assign led[1] = right_signal;
    assign led[0] = stop;

endmodule

module debounce (pb_debounced, pb, clk);
    output pb_debounced; 
    input pb;
    input clk;
    reg [4:0] DFF;
    
    always @(posedge clk) begin
        DFF[4:1] <= DFF[3:0];
        DFF[0] <= pb; 
    end
    assign pb_debounced = (&(DFF)); 
endmodule

module onepulse (PB_debounced, clk, PB_one_pulse);
    input PB_debounced;
    input clk;
    output reg PB_one_pulse;
    reg PB_debounced_delay;

    always @(posedge clk) begin
        PB_one_pulse <= PB_debounced & (! PB_debounced_delay);
        PB_debounced_delay <= PB_debounced;
    end 
endmodule


module decoder(in, out);
	input [3-1:0] in;
	output reg [7:0] out;
	always@(*) begin
		case(in)
			3'b000: out = 8'b0000_0001;
			3'b001: out = 8'b0000_0010;
			3'b010: out = 8'b0000_0100;
			3'b011: out = 8'b0000_1000;
			3'b100: out = 8'b0001_0000;
			3'b101: out = 8'b0010_0000;
			3'b110: out = 8'b0100_0000;
			3'b111: out = 8'b1000_0000;
		endcase
	end
endmodule

module seven_segment(in, out);
    input [8-1:0] in;
    output reg [7-1:0] out;
    always@(*) begin
        out[0] = (in[1]|in[4]);
        out[1] = (in[5]|in[6]);
        out[2] = (in[2]);
        out[3] = (in[1]|in[4]|in[7]);
        out[4] = (in[1]|in[3]|in[4]|in[5]|in[7]);
        out[5] = (in[1]|in[2]|in[3]|in[7]);
        out[6] = (in[0]|in[1]|in[7]);
    end
endmodule
