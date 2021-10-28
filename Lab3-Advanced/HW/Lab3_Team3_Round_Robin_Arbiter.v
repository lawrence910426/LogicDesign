`timescale 1ns/1ps

module Round_Robin_Arbiter(clk, rst_n, wen, a, b, c, d, dout, valid);
    input clk;
    input rst_n;
    input [3:0] wen;
    input [7:0] a, b, c, d;
    output [7:0] dout;
    output valid;
    wire [7:0] a_out, b_out, c_out, d_out;
    wire [3:0] error;
    reg [3:0] ren, next_ren, final_ren;
    reg [7:0] out, next_out;
    reg _valid, next_valid;
    
    FIFO_8 fifo_a(.clk(clk), .rst_n(rst_n), .wen(wen[0]), .ren(final_ren[0]),
                 .din(a), .dout(a_out), .error(error[0]));
    FIFO_8 fifo_b(.clk(clk), .rst_n(rst_n), .wen(wen[1]), .ren(final_ren[1]),
                 .din(b), .dout(b_out), .error(error[1]));
    FIFO_8 fifo_c(.clk(clk), .rst_n(rst_n), .wen(wen[2]), .ren(final_ren[2]),
                 .din(c), .dout(c_out), .error(error[2]));
    FIFO_8 fifo_d(.clk(clk), .rst_n(rst_n), .wen(wen[3]), .ren(final_ren[3]),
                 .din(d), .dout(d_out), .error(error[3]));
                 
    always @(ren, wen) begin
        case(ren)
            4'b0001: begin
                if(wen[0] == 1'b1) final_ren = 4'b0000;
                else final_ren = 4'b0001;
            end
            4'b0010: begin
                if(wen[1] == 1'b1) final_ren = 4'b0000;
                else final_ren = 4'b0010;
            end
            4'b0100: begin
                if(wen[2] == 1'b1) final_ren = 4'b0000;
                else final_ren = 4'b0100;
            end
            4'b1000: begin
                if(wen[3] == 1'b1) final_ren = 4'b0000;
                else final_ren = 4'b1000;
            end
            default: begin
                final_ren = 4'b0000;
            end
        endcase
    end
    
    always @(a_out, b_out, c_out, d_out, error, next_ren) begin
        $display("error:%b",error);
        case(ren) 
            4'b0001: begin
                if(final_ren[0] == 1'b1) begin
                    if(error[0] == 1'b0) begin
                        out = a_out;
                        _valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        _valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    _valid = 1'b0;
                end
                /*if(error[0] == 1'b0) begin
                    if(wen[0] == 1'b0) begin
                        out = a_out;
                        next_valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        next_valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    next_valid = 1'b0;
                end*/
            end
            4'b0010: begin
                if(final_ren[1] == 1'b1) begin
                    if(error[1] == 1'b0) begin
                        out = b_out;
                        _valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        _valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    _valid = 1'b0;
                end
                /*
                if(error[1] == 1'b0) begin
                    if(wen[1] == 1'b0) begin
                        out = b_out;
                        next_valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        next_valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    next_valid = 1'b0;
                end*/
            end
            4'b0100:begin
                if(final_ren[2] == 1'b1) begin
                    if(error[2] == 1'b0) begin
                        out = c_out;
                        _valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        _valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    _valid = 1'b0;
                end
                /*if(error[2] == 1'b0) begin
                    if(wen[2] == 1'b0) begin
                        out = c_out;
                        next_valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        next_valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    next_valid = 1'b0;
                end*/
            end
            4'b1000:begin
                if(final_ren[3] == 1'b1) begin
                    if(error[3] == 1'b0) begin
                        out = d_out;
                        _valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        _valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    _valid = 1'b0;
                end
                /*if(error[3] == 1'b0) begin
                    if(wen[3] == 1'b0) begin
                        out = d_out;
                        next_valid = 1'b1;
                    end
                    else begin
                        out = 8'd0;
                        next_valid = 1'b0;
                    end
                end
                else begin
                    out = 8'd0;
                    next_valid = 1'b0;
                end*/
            end
            default: begin
                out = 8'd0;
                _valid = 1'b0;
            end
        endcase
        ren = next_ren;
    end
    
    always @(posedge clk) begin
        //ren counting
        if(ren == 4'b1000) begin
            next_ren = 4'b0001;
        end
        else if(ren == 4'b0000) begin
            next_ren = 4'b0001;
        end
        else begin
            next_ren = ren << 1;
        end
        $display("%b",ren);
    end
    
    always @(negedge rst_n) begin
        ren = 4'b0000;
        out = 8'd0;
        _valid = 1'b0;
    end
    /*
    always @(posedge clk) begin
        if(rst_n == 1'b0) begin
            ren = 4'b0001;
            out = 8'd0;
        end
        else begin
            //ren = next_ren;
            //out = next_out;
            //_valid = next_valid;
        end
    end*/
    
    assign dout = out;
    assign valid = _valid;

endmodule