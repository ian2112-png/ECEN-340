`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2025 10:21:37 AM
// Design Name: 
// Module Name: clock_dividers
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

module clock_dividers(sw, clk, btnC, seg, an, dp);
    input [15:0] sw; 
    input clk, btnC;
    output reg [6:0] seg;
    output reg [3:0] an;
    output dp;

    wire slow_clk;
    wire [1:0] digit_index;

    assign dp = 1'b1; // Not currently using in this part

    // Clock divider
    clk_gen clock_slow (
        .clk_in(clk),
        .reset(btnC),
        .clk_out(slow_clk)
    );

    // Digit selector
    digit_selector digit_sel (
        .slow_clk(slow_clk),
        .btnC(btnC),
        .digit_index(digit_index)
    );

    // Look up table type function for finding the LEDs that need to be turned on in accordance with the switches
    function [6:0] get_led_layout;
        input [3:0] switches;
        begin 
            case (switches)
                4'd0:  get_led_layout = 7'b1000000;
                4'd1:  get_led_layout = 7'b1111001;
                4'd2:  get_led_layout = 7'b0100100;
                4'd3:  get_led_layout = 7'b0110000;
                4'd4:  get_led_layout = 7'b0011001;
                4'd5:  get_led_layout = 7'b0010010;
                4'd6:  get_led_layout = 7'b0000010;
                4'd7:  get_led_layout = 7'b1111000;
                4'd8:  get_led_layout = 7'b0000000;
                4'd9:  get_led_layout = 7'b0011000;
                4'd10: get_led_layout = 7'b0001000;
                4'd11: get_led_layout = 7'b0000011;
                4'd12: get_led_layout = 7'b1000110;
                4'd13: get_led_layout = 7'b0100001;
                4'd14: get_led_layout = 7'b0000110;
                4'd15: get_led_layout = 7'b0001110;
                default: get_led_layout = 7'b1111111;
            endcase
        end
    endfunction


    // Update LED layout and anode based off of the digit index, any time the digit index changes 
    always @(*) begin
        case (digit_index)
            2'd0: begin
                seg = get_led_layout(sw[3:0]);
                an = 4'b1110;
            end
            2'd1: begin
                seg = get_led_layout(sw[7:4]);
                an = 4'b1101;
            end
            2'd2: begin
                seg = get_led_layout(sw[11:8]);
                an = 4'b1011;
            end
            2'd3: begin
                seg = get_led_layout(sw[15:12]);
                an = 4'b0111;
            end
        endcase
    end

endmodule
