`timescale 1ns/1ps

module Content_Addressable_Memory(clk, wen, ren, din, addr, dout, hit);
    input clk;
    input wen, ren;
    input [7:0] din;
    input [3:0] addr;
    output [3:0] dout;
    output hit;
    //reg [15:0] in_check;
    reg [7:0] CAM [15:0];
    reg [3:0] dout, dout_next;
    reg hit, hit_next;
    reg [7:0] put;
    
    always @(posedge clk) begin
        if(wen == 1'b1 && ren == 1'b0) begin
            CAM[addr] <= din;
        end
        else begin
            dout <= dout_next;
            hit <= hit_next;
        end
    end
    
    always @(*) begin
        if(ren == 1'b1) begin
            if(CAM[4'b1111] == din) begin
                dout_next = 4'b1111;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1110] == din) begin
                dout_next = 4'b1110;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1101] == din) begin
                dout_next = 4'b1101;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1100] == din) begin
                dout_next = 4'b1100;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1011] == din) begin
                dout_next = 4'b1011;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1010] == din) begin
                dout_next = 4'b1010;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1001] == din) begin
                dout_next = 4'b1001;
                hit_next = 1'b1;
            end
            else if(CAM[4'b1000] == din) begin
                dout_next = 4'b1000;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0111] == din) begin
                dout_next =4'b0111;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0110] == din) begin
                dout_next = 4'b0110;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0101] == din) begin
                dout_next = 4'b0101;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0100] == din) begin
                dout_next = 4'b0100;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0011] == din) begin
                dout_next = 4'b0011;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0010] == din) begin
                dout_next = 4'b0010;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0001] == din) begin
                dout_next = 4'b0001;
                hit_next = 1'b1;
            end
            else if(CAM[4'b0000] == din) begin
                dout_next = 4'b0000;
                hit_next = 1'b1;
            end
            else begin
                dout_next = 4'b0000;
                hit_next = 1'b0;
            end
        end
        else if (wen == 1'b1) begin
            dout_next = 4'b0000;
            hit_next = 1'b0;
        end
        else begin
            dout_next = 4'b0000;
            hit_next = 1'b0;
        end
    end
endmodule
