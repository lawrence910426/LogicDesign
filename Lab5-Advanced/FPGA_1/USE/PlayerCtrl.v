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
parameter BEATLEAGTH = 32;

always @(posedge clk, posedge reset) begin
	if (reset)
		ibeat <= 0;
	else if (ibeat == BEATLEAGTH) 
	   ibeat <= BEATLEAGTH; 
	else if (ibeat == 1'b0)
	   ibeat <= 1'b0;   
	else
	   if(dir == 1'b1) ibeat <= ibeat + 1'b1;
	   else ibeat <= ibeat - 1'b1;
end

endmodule