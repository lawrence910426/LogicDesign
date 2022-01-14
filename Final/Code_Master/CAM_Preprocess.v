module CAM_Preprocess(
    input [25 * 25 * 4 * 3 - 1 : 0] in,
    input start,
    input clk,
    output reg [25 * 25 * 32 * 3 - 1 : 0] out,
    output reg finish
);
    parameter divisor = 32'b0_01110000_00000000000000000000000;
    reg [11 - 1 : 0] i;
    reg [10 : 0] Latency;
    wire [4 - 1 : 0] inArray [25 * 25 * 3 - 1 : 0];
    
    generate
        genvar j;
        for (j = 0; j < 25 * 25 * 3; j = j + 1) begin
            assign inArray[j] = in[j * 4 + 4 - 1 : j * 4];
        end
    endgenerate
    
    wire [32 - 1 : 0] float_in, float_out;
    FLOAT_TO_INT converter ( .in(inArray[i]), .out(float_in) );
    FLOAT32_MUL multipler ( .a(float_in), .b(divisor), .out(float_out) );
    
    always @ (posedge clk) begin
        if (start == 1'b1) begin
            i <= 0;
            Latency <= 0;
            finish <= 0;
        end else if(finish == 1'b1) begin
            i <= 0;
            Latency <= 0;
            finish <= 1;
        end else if(i == 11'd1875) begin
            i <= 0;
            Latency <= 0;
            finish <= 1;            
        end else if(Latency == 9'd10) begin
            i <= i + 1;
            Latency <= 0;
            finish <= 0;
            out[i] = float_out;
        end else begin
            i <= i;
            Latency <= Latency + 1;
            finish <= 0;
        end
    end
endmodule
