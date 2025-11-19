`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 11:51:22 AM
// Design Name: 
// Module Name: DRAW_TEST
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


module DRAW_TEST(
    input clk,
    input [9:0] x,
    input [8:0] y,
    output [3:0] R,
    output [3:0] G,
    output [3:0] B
    );

    wire [7:0] rom_data;
    reg [6:0] rom_addr;

    // instantiate ROM
    BITMAP_ROM rom_inst (
        .clka(clk),       // pixel clock
        .addra(rom_addr),
        .douta(rom_data)
    );

    // generate address based on pixel coords
    always @(posedge clk) begin
        rom_addr <= x[6:0] + y[6:0]*128; // map x,y to ROM address (assuming 128x128)
    end

    assign R = rom_data[7:4];
    assign G = rom_data[3:0];
    assign B = rom_data[7:4]; // reuse for test

endmodule
