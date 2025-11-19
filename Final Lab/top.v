`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2021 10:24:11 AM
// Design Name: 
// Module Name: top
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


module top(
    input btnC,
    input clk, 
    output v_sync, h_sync,
    output [3:0] R, G, B
    );
    
    wire [9:0] x;
    wire [8:0] y;
    
    reg [1:0] clk_div;
    wire pix_clk;
    
    always @(posedge clk) begin
        clk_div <= clk_div + 1;
    end
    
    assign pix_clk = clk_div[1]; // divides 100MHz by 4 → 25MHz
    
    
    // This handles the timing for the virticle and horizontal sync as well 
    // as keeping track of what pixel is being drawn at a given time.
    VGA_DISPLAY U0(
        .clk(pix_clk),
        .reset(btnC),
        .v_sync(v_sync), 
        .h_sync(h_sync),
        .x(x),
        .y(y)
    );
    
    
//    // This module will draw things using the current pixel being drawn
//    DRAW #(
//        .X_BIT_SIZE(11),
//        .Y_BIT_SIZE(10)
//    ) DRAW_0 (
//        .clk(clk),
//        .x(x),
//        .y(y),
//        .R(R),
//        .G(G),
//        .B(B)
//    );
    
// Use DRAW_TEST to show ROM content on VGA
DRAW_TEST DRAW_0 (
    .clk(pix_clk),
    .x(x),
    .y(y),
    .R(R),
    .G(G),
    .B(B)
);
    
    
endmodule
