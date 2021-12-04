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