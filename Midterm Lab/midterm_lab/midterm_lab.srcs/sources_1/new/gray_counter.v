`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 03:48:39 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(clk, reset, led);
input clk;
input reset;
output [2:0] led;

reg A, B, C;
wire A_next, B_next, C_next;

assign A_next = B ^ C;
assign B_next = (~A & B) | (A & C);
assign C_next = (~A & ~B) | (A & C);

assign led = {A, B, C};

always @ (posedge clk) begin 
    if (reset) begin 
        A <= 1'b1;
        B <= 1'b1;
        C <= 1'b1; end
        
    else begin 
        A <= A_next;
        B <= B_next;
        C <= C_next; end
    end 
        
endmodule 