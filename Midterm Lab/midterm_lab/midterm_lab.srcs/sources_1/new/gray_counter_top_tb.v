`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 03:49:20 PM
// Design Name: 
// Module Name: gray_counter_top_tb
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


module gray_counter_top_tb();

reg btnC;
reg clk;
reg [0:0] sw;
wire [2:0] led;
wire slow_clk;
wire [2:0] count;

gray_counter_top gray_counter(btnC, led, clk, sw);

  always #5 clk=~clk;
  initial
  begin
    // Initialize inputs
    clk = 0;
    btnC = 1;
    btnC = 0;
    sw = 0;
    
    // Reset pulse
    #5 btnC = 1;
    #10 btnC = 0;
 

    // --- Test 1: Switch OFF ---
    sw = 0;          // switch off
    #1500;            // simulate for 500 ns

    // --- Test 2: Switch ON ---
    sw = 1;          // switch on
    #1500;            // simulate for 500 ns

$finish;

   end

endmodule


