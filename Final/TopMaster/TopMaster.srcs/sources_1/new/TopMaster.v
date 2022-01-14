module TopMaster(
    input clk,
    input rst_n,
    
    input ack,
    output [3 - 1 : 0] data_to_slave_o,
    output notice_master,
    output valid,
    output request2s
);
    
    reg [8 - 1 : 0] in;
    reg [32 - 1 : 0] counter;
    reg request;
    wire [1 : 0] x;
    top Messenger(
        .clk(clk), .rst_n(rst_n), 
        .in(in), .request(request), 
        .notice_master(notice_master), 
        .data_to_slave_o(data_to_slave_o), 
        .valid(valid), .request2s(request2s), .ack(ack)
    );
    
    RANDOM( .clk(clk), .rst(!rst_n), .com_result(x));
    always @ (posedge clk) begin
        if (rst_n == 1'b1) begin
            
        end else begin
            in <= (8'b0000_0001 << x);
            
            if (counter == 32'd1000_000000) begin
                counter <= 0;
                request <= 1;
            end else begin
                counter <= counter + 1;
                request <= 0;
            end
        end
    end
endmodule
