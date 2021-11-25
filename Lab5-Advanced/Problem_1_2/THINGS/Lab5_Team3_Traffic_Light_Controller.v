`timescale 1ns/1ps

module Traffic_Light_Controller (clk, rst_n, lr_has_car, hw_light, lr_light);
    input clk, rst_n;
    input lr_has_car;
    output [2:0] hw_light;
    output [2:0] lr_light;
    parameter HG_RR = 3'b000;
    parameter HY_RR = 3'b001;
    parameter HR_RR_1 = 3'b010;
    parameter HR_RG = 3'b011;
    parameter HR_RY = 3'b100;
    parameter HR_RR_2 = 3'b101;  
    reg [2:0] state, next_state;
    reg [6:0] cycle;
    reg last_reset;
    
    always @(posedge clk) begin
        if(rst_n == 1'b0) begin
            state <= HG_RR;
            cycle <= 7'd0;
        end
        else begin
            state <= next_state;
            if(last_reset == rst_n) begin
                if(cycle < 7'd80) cycle <= cycle + 7'd1;//80
                else cycle <= cycle;
            end
            else begin
                cycle <= cycle;
            end
        end
        last_reset <= rst_n;
    end
    
    assign hw_light[2] = (state == HG_RR) ? 1'b1 : 1'b0;
    assign hw_light[1] = (state == HY_RR) ? 1'b1 : 1'b0;
    assign hw_light[0] = ((state == HG_RR) ? 1'b0 :
                         ((state == HY_RR) ? 1'b0 : 1'b1));
    assign lr_light[2] = (state == HR_RG) ? 1'b1 : 1'b0;
    assign lr_light[1] = (state == HR_RY) ? 1'b1 : 1'b0;
    assign lr_light[0] = ((state == HR_RG) ? 1'b0 :
                         ((state == HR_RY) ? 1'b0 : 1'b1));
    
    
    always @(state) begin
        cycle <= 7'd0;
    end
    
    always @(*) begin
        case(state)
            HG_RR: begin
                if(cycle >= 7'd79) begin//80
                    if(lr_has_car) next_state = HY_RR;
                    else next_state = HG_RR;
                end
                else begin
                    next_state = HG_RR;
                end
            end
            HY_RR: begin
                if(cycle >= 7'd19) next_state = HR_RR_1;//20
                else next_state = HY_RR;
            end
            HR_RR_1: begin
                if(cycle >= 7'd0) next_state = HR_RG;
                else next_state = HR_RR_1;
            end
            HR_RG: begin
                if(cycle >= 7'd79) next_state = HR_RY;//80
                else next_state = HR_RG;
            end
            HR_RY: begin
                if(cycle >= 7'd19) next_state = HR_RR_2;//20
                else next_state = HR_RY;
            end
            HR_RR_2: begin
                if(cycle >= 7'd0) next_state = HG_RR;
                else next_state = HR_RR_2;
            end
            default:
                next_state = HG_RR;
        endcase
    end
endmodule
