module mem_addr_gen(
   input clk,
   input rst,
   input [1:0] state,//
   input [1:0] com_hand,//
   input [1:0] player_hand,//
   input [1:0] result,//
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output reg [16:0] pixel_addr
   );
   parameter READY = 2'b00;
   parameter COUNTDOWN = 2'b00;
   parameter WAITING = 2'b00;
   parameter RESULT = 2'b00;
   
   reg [27:0] cnt;
   /*
   always @* begin
      if(h_cnt>=10'd100 && h_cnt<=10'd150) begin
        if(v_cnt>=10'd50 && v_cnt<=10'd100) pixel_addr = (((h_cnt-10'd100)>>1)+25*((v_cnt-10'd50)>>1))%625 + 76800;
        else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
      end
      else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
   end
   */
   //assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;  //640*480 --> 320*240 
    always @(*) begin
        case(state)
            READY : begin
                if(h_cnt>=10'd80 && h_cnt<=10'd240) begin
                    if(v_cnt>=10'd300 && v_cnt<=10'd340) pixel_addr = (((h_cnt-10'd80)>>1)+80*((v_cnt-10'd300)>>1))%1600 + 95000;
                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                end
                else if(h_cnt>=10'd400 && h_cnt<=10'd560) begin
                    if(v_cnt>=10'd300 && v_cnt<=10'd340) pixel_addr = (((h_cnt-10'd400)>>1)+80*((v_cnt-10'd300)>>1))%1600 + 95000;
                    else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
                end
                else pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1))% 76800;
            end
            COUNTDOWN : begin
                case(cnt[27:26])
                    2'b00: begin
                
                    end
                    2'b01: begin
                
                    end
                    2'b10: begin
                
                    end
                    default: begin
                
                    end
                endcase
            end
            WAITING : begin
                
            end
            RESULT : begin
            
            end
            default : begin
            
            end
        endcase
    end
    
    //
    always @(posedge clk) begin
        if(state == COUNTDOWN) cnt = cnt + 1'b1;
        else cnt = 28'd0;
    end
   
    
endmodule
