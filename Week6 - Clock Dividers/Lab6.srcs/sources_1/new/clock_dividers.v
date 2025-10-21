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
    
    clk_gen clock_slow (.clk_in(clk), .reset(btnC), .clk_out(slow_clk));
    
    function [6:0] get_led_layout;
        input [3:0] switches;
        begin 
            case (switches)
                4'd0:  get_led_layout = 7'b1000000;    // 0
                4'd1:  get_led_layout = 7'b1111001;    // 1
                4'd2:  get_led_layout = 7'b0100100;    // 2
                4'd3:  get_led_layout = 7'b0110000;    // 3
                4'd4:  get_led_layout = 7'b0011001;    // 4
                4'd5:  get_led_layout = 7'b0010010;    // 5
                4'd6:  get_led_layout = 7'b0000011;    // 6
                4'd7:  get_led_layout = 7'b1111000;    // 7
                4'd8:  get_led_layout = 7'b0000000;    // 8
                4'd9:  get_led_layout = 7'b0011000;    // 9
                4'd10: get_led_layout = 7'b0001000;    // A
                4'd11: get_led_layout = 7'b0000011;    // b
                4'd12: get_led_layout = 7'b1000110;    // C
                4'd13: get_led_layout = 7'b0100001;    // d
                4'd14: get_led_layout = 7'b0000110;    // E
                4'd15: get_led_layout = 7'b0001110;    // F
                default: get_led_layout = 7'b1111111;  // All segments off
            endcase
        end
    endfunction
    
    
    always @ (posedge slow_clk, posedge btnC) begin
    
       if (btnC) begin
           an <= 4'b1111;
       end 
       
       else
        begin 
        case (an)
            4'b1111: an <= 4'b1110; 
            4'b1110: 
                seg <= get_led_layout(sw[7:4]); 
            4'b1101:        
                
                seg <= get_led_layout(sw[11:8]);
            4'b1011:      
                
                seg <= get_led_layout(sw[15:12]);
            4'b0111:   
                seg <= get_led_layout(sw[3:0]);
                
            default:  
                seg <= 7'b1111111; // all segments off
         endcase  
         
         case (an)
            4'b1111: an <= 4'b1110; 
            4'b1110: 
                an <= 4'b1101;
            4'b1101: 
                an <= 4'b1011;      
            4'b1011: 
                an <= 4'b0111;    
            4'b0111: 
                an <= 4'b1110; 
            default: 
                an <= 4'b1111;
         endcase  
               
        end
       end 
         
endmodule



