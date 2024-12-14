module lcd_data_gen (
    input wire clk,
    input wire reset,
    output reg [15:0] line1,
    output reg [15:0] line2
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            line1 <= 16'b1010110010101101; // "Hello World!"
            line2 <= 16'b1101101011110010; // "Welcome To LCD"
        end else begin
            // Update logic for line1 and line2 (if needed)
        end
    end
endmodule
