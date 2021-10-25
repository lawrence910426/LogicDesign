`timescale 1ns/1ps

module Multi_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout, debug);
    input clk;
    input ren, wen;
    input [10:0] waddr;
    input [10:0] raddr;
    input [7:0] din;
    
    output [15:0] debug;
    output [7:0] dout;
    
    wire [7:0] outputs [3:0];
    reg [7:0] dout_reg;
    assign dout = dout_reg;
    
    genvar i;
    generate
        for(i = 0; i < 4; i = i + 1) begin
            Single_Bank_Memory SingleBank (
                .clk(clk), 
                .ren(ren & (raddr[10:9] == i)),
                .wen(wen & (waddr[10:9] == i)),
                .waddr(waddr[8:0]), .raddr(raddr[8:0]),
                .din(din), .dout(outputs[i]), .debug(debug[i * 4 + 3:i * 4])
            ); 
        end
    endgenerate
    
    always @ (outputs[0], outputs[1], outputs[2], outputs[3]) begin
        dout_reg = (
            raddr[10:9] == 2'b00 ? outputs[2'b00] :
            raddr[10:9] == 2'b01 ? outputs[2'b01] :
            raddr[10:9] == 2'b10 ? outputs[2'b10] :
            outputs[2'b11]
        );
    end
endmodule

module Single_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout, debug);
    input clk;
    input ren, wen;
    input [8:0] waddr, raddr;
    input [7:0] din;
    
    output [3:0] debug;
    output [7:0] dout;
    
    wire [7:0] outputs [3:0];
    assign dout = (
        raddr[8:7] == 2'b00 ? outputs[2'b00] :
        raddr[8:7] == 2'b01 ? outputs[2'b01] :
        raddr[8:7] == 2'b10 ? outputs[2'b10] :
        outputs[2'b11]
    );
    
    assign debug[3:0] = {
        wen, waddr[8:7], 1'bx
    };
    
    genvar i;
    generate
        for(i = 0; i < 4; i = i + 1) begin
            Memory Bank (
                .clk(clk), 
                .ren(ren & (raddr[8:7] == i)), 
                .wen(wen & (waddr[8:7] == i)), 
                .addr(ren & (raddr[8:7] == i) ? raddr[6:0] : waddr[6:0]), 
                .din(din), .dout(outputs[i])
            );
        end
    endgenerate
    
endmodule