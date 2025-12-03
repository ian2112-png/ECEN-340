module square(
    input  wire clk, 
    input  wire btnC, 
    output reg Hsync,
    output reg Vsync,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);

    // -----------------------------------------------------------------
    // 1080p Timing
    // -----------------------------------------------------------------
    localparam H_TOTAL      = 2200;
    localparam H_SYNC_START = 2008;
    localparam H_SYNC_END   = 2052;

    localparam V_TOTAL      = 1125;
    localparam V_SYNC_START = 1084;
    localparam V_SYNC_END   = 1089;

    // position counters
    reg [11:0] x = 0;
    reg [11:0] y = 0;

    // square position
    reg [11:0] sq_x = 0;
    reg [11:0] sq_y = 0;

    // -----------------------------------------------------------------
    // Position counters
    // -----------------------------------------------------------------
    always @(posedge clk) begin
        if (btnC) begin
            x <= 0;
            y <= 0;
        end else begin
            if (x == H_TOTAL-1) begin
                x <= 0;
                y <= (y == V_TOTAL-1) ? 0 : y + 1;
            end else begin
                x <= x + 1;
            end
        end
    end

    // -----------------------------------------------------------------
    // Move the square once per frame
    // -----------------------------------------------------------------
    always @(posedge clk) begin
        if (btnC) begin
            sq_x <= 0;
            sq_y <= 0;
        end else if (x == H_TOTAL-1 && y == V_TOTAL-1) begin
            sq_x <= (sq_x + 1 < 1920-220) ? sq_x + 1 : 0;
            sq_y <= (sq_y + 1 < 1080-200) ? sq_y + 1 : 0;
        end
    end

    // -----------------------------------------------------------------
    // Sync signals (never reset)
    // -----------------------------------------------------------------
    always @(posedge clk) begin
        Hsync <= ~((x >= H_SYNC_START) && (x < H_SYNC_END));
        Vsync <= ~((y >= V_SYNC_START) && (y < V_SYNC_END));
    end

    // -----------------------------------------------------------------
    // RGB pixel generation (only visible region)
    // -----------------------------------------------------------------
    always @(posedge clk) begin
        if (x < 1920 && y < 1080 &&
            x >= sq_x && x < sq_x+220 &&
            y >= sq_y && y < sq_y+200) begin

            vgaRed   <= 4'hF;
            vgaGreen <= 4'hF;
            vgaBlue  <= 4'hF;

        end else begin
            vgaRed   <= 4'h0;
            vgaGreen <= 4'h0;
            vgaBlue  <= 4'h0;
        end
    end

endmodule
