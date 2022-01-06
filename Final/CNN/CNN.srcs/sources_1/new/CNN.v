`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2022 10:50:39 PM
// Design Name: 
// Module Name: CNN
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

// To be specified
// - RGB & Direction & Coordinate of CAM
// - Pipeline latency

module CNN(
    input clk,
    input [25 * 25 * 3 * 8 - 1:0] CAM,
    output [7 - 1:0] Rock,
    output [7 - 1:0] Paper,
    output [7 - 1:0] Scissors,
    output [4 - 1:0] Highest
);
    // Make CAM information to float

    // Filters = 8 & Kernel Size = 2
    Conv2d #() conv_1 ();
    // Pool size = (2, 2) & Strides = (2, 2)
    Max_pool #() max_pool_1 ();

    // Filters = 20 & Kernel Size = 2
    Conv2d #() conv_2 ();
    // Pool size = (2, 2) & Strides = (2, 2)
    Max_pool #() max_pool_2 ();

    // Units = 8
    FullConnect #() full_1();
    // Units = 3
    FullConnect #() full_2();

    // Find the maximum and output Highest
    
endmodule
