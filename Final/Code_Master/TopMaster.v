`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 04:07:53 AM
// Design Name: 
// Module Name: TopMaster
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


module TopMaster(
    input clk,
    input rst,
    
    input ack,
    output [3 - 1 : 0] data_to_slave_o,
    output notice_master,
    output valid,
    output request2s,
    
    input ov7670_pclk,
    output ov7670_xclk,
    input ov7670_vsync,
    input ov7670_href,
    input [7 : 0] ov7670_data,
    output ov7670_sioc,
    inout ov7670_siod,
    output ov7670_pwdn,
    output ov7670_reset
);
    wire rst_n;
    assign rst_n = !rst;
    
    reg [8 - 1 : 0] in;
    reg request;
    top Messenger(
        .clk(clk), .rst_n(rst_n), 
        .in(in), .request(request), 
        .notice_master(notice_master), 
        .data_to_slave_o(data_to_slave_o), 
        .valid(valid), .request2s(request2s), .ack(ack)
    );
    
    reg [4 * 3 - 1 : 0] CAM_reg [25 * 25 - 1 : 0];
    wire [25 * 25 * 4 * 3 - 1 : 0] CAM;
    reg [16 : 0] raddr;
    wire [11 : 0] rdata;
    top_level Camera(
        .clk100(clk),
        
        .rd_addr(raddr),
        .rddata(rdata),
        
        .ov7670_pclk(ov7670_pclk),
        .ov7670_xclk(ov7670_xclk),
        .ov7670_vsync(ov7670_vsync),
        .ov7670_href(ov7670_href),
        .ov7670_data(ov7670_data),
        .ov7670_sioc(ov7670_sioc),
        .ov7670_siod(ov7670_siod),
        .ov7670_pwdn(ov7670_pwdn),
        .ov7670_reset(ov7670_reset)
    );
    
    reg Start_CNN;
    wire [4 - 1 : 0] Verdict;
    wire Finish_CNN;
    CNN Neuron(
        .clk(clk), .start(Start_CNN),
        .CAM(CAM), .Highest(Verdict), .finish(Finish_CNN)
    );
    
    reg [6 - 1 : 0] cam_i, cam_j;
    always @ (posedge clk) begin
        if (rst_n == 0) begin
            cam_i <= 0;
            cam_j <= 0;
        end else if (cam_i == 25) begin
            cam_i <= 0;
            cam_j <= cam_j;        
        end else if (cam_j == 25) begin
            cam_i <= cam_i + 1;
            cam_j <= 0;
        end else begin
            cam_i <= cam_i;
            cam_j <= cam_j + 1;
            raddr <= cam_i * 9 * 320 + cam_j * 12;
            CAM_reg[cam_i * 25 + cam_j] <= rdata;
        end
    end
    
    reg [31 : 0] counter;
    always @ (posedge clk) begin
        if (rst_n == 0) begin
            counter <= 0;
            Start_CNN <= 0;
        end else if (counter == 32'd100_000_000) begin
            counter <= 0;
            Start_CNN <= 1;
        end else begin
            counter <= counter + 1;
            Start_CNN <= 0;
        end 
    end
    
    reg submitted_request;
    always @ (posedge clk) begin        
        if (Finish_CNN && submitted_request == 0) begin
            in <= (8'b0000_0001 << Verdict);
            request <= 1;
            submitted_request <= 1;
        end else if (Finish_CNN && submitted_request == 1) begin
            in <= in;
            request <= 0;
            submitted_request <= 1;
        end else begin
            in <= in;
            request <= 0;
            submitted_request <= 0;
        end
    end
endmodule
