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
		
		default : tone = `XX;
	endcase
end

endmodule