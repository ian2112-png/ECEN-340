module square(
    input wire clk, 
    input wire btnC, 
    output reg Hsync,
    output reg Vsync,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);

    // Must hold up to 2200 horizontally, 1125 vertically
    reg [11:0] x_position = 0;
    reg [11:0] y_position = 0;

    // 1080p Timing constants
    localparam H_TOTAL = 2200;
    localparam H_SYNC_START = 1920 + 88;        // 2008
    localparam H_SYNC_END   = H_SYNC_START + 44; // 2052

    localparam V_TOTAL = 1125;
    localparam V_SYNC_START = 1080 + 4;         // 1084
    localparam V_SYNC_END   = V_SYNC_START + 5; // 1089

    always @(posedge clk or posedge btnC) begin
        
        if (btnC) begin
            x_position <= 0;
            y_position <= 0;
            Hsync <= 0;    
            Vsync <= 0;
            vgaRed <= 4'h0; 
            vgaGreen <= 4'h0;
            vgaBlue <= 4'h0;
        end 
        
        else begin

            // Same logic, just new limits
            if (x_position == H_TOTAL - 1) begin
                x_position <= 0;
                y_position <= (y_position == V_TOTAL - 1 ? 0 : y_position + 1);
            end else begin
                x_position <= x_position + 1;
            end

            // Updated sync ranges for 1080p
            Hsync <= (x_position >= H_SYNC_START && x_position < H_SYNC_END) ? 0 : 1;
            Vsync <= (y_position >= V_SYNC_START && y_position < V_SYNC_END) ? 0 : 1;

            // Your original square area (unchanged)
            if (x_position >= 220 && x_position < 420 &&
                y_position >= 140 && y_position < 340) begin
                vgaRed   <= 4'hF;
                vgaGreen <= 4'hF;
                vgaBlue  <= 4'hF;
            end else begin
                vgaRed   <= 4'h0;
                vgaGreen <= 4'h0;
                vgaBlue  <= 4'h0;
            end
        end
    end

endmodule
