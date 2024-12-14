`timescale 1ns / 1ps
module FloatingMultiplication #(parameter XLEN=32)
                                (input [XLEN-1:0] A,
                                 input [XLEN-1:0] B,
                                 output [XLEN-1:0] result);

wire [23:0] A_Mantissa = {1'b1, A[22:0]};
wire [23:0] B_Mantissa = {1'b1, B[22:0]};
wire [7:0] A_Exponent = A[30:23];
wire [7:0] B_Exponent = B[30:23];
wire A_sign = A[31];
wire B_sign = B[31];

reg [47:0] Temp_Mantissa; // Partial product of mantissas
reg [8:0] Temp_Exponent;  // Extended for carry bit
reg [7:0] Exponent;       // Final exponent
reg [22:0] Mantissa;      // Final mantissa
reg Sign;

assign result = {Sign, Exponent, Mantissa};

always @(*) begin
    // Calculate exponent
    Temp_Exponent = A_Exponent + B_Exponent - 8'd127; // Adjust bias
    
    // Multiply mantissas
    Temp_Mantissa = A_Mantissa * B_Mantissa;

    // Normalize mantissa and adjust exponent
    if (Temp_Mantissa[47]) begin
        // Shift right if the top bit is 1
        Mantissa = Temp_Mantissa[46:24];
        Exponent = Temp_Exponent + 1;
    end else begin
        // No normalization needed
        Mantissa = Temp_Mantissa[45:23];
        Exponent = Temp_Exponent[7:0];
    end

    // Handle overflow
    if (Exponent > 8'hFF) begin
        Exponent = 8'hFF;
        Mantissa = 23'd0; // Set to max possible value for overflow
    end

    // Set sign bit
    Sign = A_sign ^ B_sign;
end

endmodule
