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


module gray_counter(clk, reset, led, sw);
input clk;
input reset;
input [0:0] sw;
output [2:0] led;

reg A, B, C;
wire A_next, B_next, C_next;

// First sequence (assigned in class): // 7, 3, 2, 6, 4, 0, 1, 5
// Second sequence (extra credit):     // 7, 6, 2, 3, 1, 0, 4, 5
assign A_next = sw ? ((A & C) | (~B & ~C)) : (B ^ C);
assign B_next = sw ? ((B & ~C) | (A & C)) : ((~A & B) | (A & C));
assign C_next = sw ? (A ^ B) : ((~A & ~B) | (A & C));

assign led = {A, B, C};

always @ (posedge clk or posedge reset) begin 
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