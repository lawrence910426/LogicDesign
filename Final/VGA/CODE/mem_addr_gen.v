module mem_addr_gen(
   input clk,
   input rst,
   input [1:0] state,//
   input [1:0] com_hand,//
   input [1:0] player_hand,//
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output reg [16:0] pixel_addr
   );
   parameter READY = 2'b00;
   parameter COUNTDOWN = 2'b01;
   parameter WAITING = 2'b10;
   parameter RESULT = 2'b11;
   parameter paper = 84300;
   parameter scissors = 86800;
   parameter stone = 89300;
   parameter win = 91800;
   parameter lose = 93400;
   parameter tie = 96600;
   
   reg [27:0] cnt;
   
   //assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;  //640*480 --> 320*240 
    always @(*) begin
        case(state)
            READY : begin
                if(h_cnt>=10'd70 && h_cnt<=10'd230) begin
                    if(v_cnt>=10'd280 && v_cnt<=10'd320) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd280)>>1))%1600 + 95000;
                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                end
                else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin
                    if(v_cnt>=10'd280 && v_cnt<=10'd320) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd280)>>1))%1600 + 95000;
                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                end
                else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
            end
            COUNTDOWN : begin
                case(cnt[27:26])
                    2'b00: begin
                        if(h_cnt>=10'd100 && h_cnt<=10'd200) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 81800;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 81800;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                    end
                    2'b01: begin
                        if(h_cnt>=10'd100 && h_cnt<=10'd200) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 79300;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 79300;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                    end
                    2'b10: begin
                        if(h_cnt>=10'd100 && h_cnt<=10'd200) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 76800;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin
                            if(v_cnt>=10'd250 && v_cnt<=10'd350) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd250)>>1))%2500 + 76800;
                            else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                        end
                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                    end
                    default: begin
                        pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                    end
                endcase
            end
            WAITING : begin
                pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
            end
            RESULT : begin
                //00:stone 01:scissor 10:paper
                case(player_hand[1:0])
                    2'b00 : begin 
                        case(com_hand[1:0])
                            2'b00 : begin //p:stone c:stone = tie
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b01 : begin //p:stone c:scissor = player
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b10 : begin //p:stone c:paper = com
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            default : begin
                                pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                        endcase
                    end
                    2'b01 : begin
                        case(com_hand[1:0])
                            2'b00 : begin //p:scissor c:stone = com
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b01 : begin //p:scissor c:scissor = tie
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b10 : begin //p:scissor c:paper = player
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            default : begin
                                pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                        endcase
                    end
                    2'b10 : begin
                        case(com_hand[1:0])
                            2'b00 : begin //p:paper c:stone = player
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + stone;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b01 : begin //p:paper c:scissor = com
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + scissors;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + lose;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 +win;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            2'b10 : begin //p:paper c:paper = tie
                                    if(h_cnt>=10'd100 && h_cnt<=10'd200) begin //player_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd100)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd440 && h_cnt<=10'd540) begin //com_hand
                                        if(v_cnt>=10'd230 && v_cnt<=10'd330) pixel_addr = (((h_cnt-10'd440)>>1)+50*((v_cnt-10'd230)>>1))%2500 + paper;
                                        else if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd70 && h_cnt<=10'd230) begin //player_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd70)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end
                                    else if(h_cnt>=10'd410 && h_cnt<=10'd570) begin //com_result
                                        if(v_cnt>=10'd380 && v_cnt<=10'd420) pixel_addr = (((h_cnt-10'd410)>>1)+80*((v_cnt-10'd380)>>1))%1600 + tie;
                                        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                                    end 
                                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                            default : begin
                                pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                            end
                        endcase
                    end
                    default : begin
                        pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                    end
                endcase
            end
            default : begin
                pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
            end
        endcase
    end
    
    //
    always @(posedge clk) begin
        if(state == COUNTDOWN) cnt <= cnt + 1'b1;
        else cnt <= 28'd0;
    end
   
    
endmodule
