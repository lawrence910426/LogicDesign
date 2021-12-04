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