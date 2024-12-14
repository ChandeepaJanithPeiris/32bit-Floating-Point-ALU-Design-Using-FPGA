`timescale 1ns / 1ps
module FloatMultiplicationTb #(parameter XLEN = 32);   
reg [XLEN-1:0] A, B;
reg clk;
wire [XLEN-1:0] result;
real value;
integer i;

// Instantiate the floating-point multiplication module
FloatingMultiplication F_Mult (.A(A), .B(B), .result(result));

// Clock generation
initial clk = 0;
always #10 clk = ~clk;  // 50 MHz clock

// Test cases
reg [63:0] test_cases [0:3]; // Array to store test cases
initial begin
    test_cases[0] = {32'b0_10000000_10011001100110011001100, 32'b0_10000001_00001100110011001100110}; // 3.2 * 4.2
    test_cases[1] = {32'b0_01111110_01010001111010111000010, 32'b0_01111110_00000101000111101011100}; // 0.66 * 0.51
    test_cases[2] = {32'b1_01111110_00000000000000000000000, 32'b1_10000001_10011001100110011001100}; // -0.5 * -6.4
    test_cases[3] = {32'b0_10000001_00001100110011001100110, 32'b0_10000000_00001111010111000010100}; // 4.2 * 2.12
end

// Apply inputs and monitor outputs
initial begin
    A = 0;
    B = 0;
    for (i = 0; i < 4; i = i + 1) begin
        @(posedge clk); // Wait for clock edge
        {A, B} = test_cases[i]; // Apply test case
        @(posedge clk); // Wait for next clock edge
        value = (2**(result[30:23] - 127)) * 
                ($itor({1'b1, result[22:0]}) / 2**23) * 
                ((-1)**(result[31]));
        $display("Test Case %d: A = %b, B = %b", i, A, B);
        $display("Expected Value: %f, Result: %f", 
                 (i == 0) ? 3.2 * 4.2 : 
                 (i == 1) ? 0.66 * 0.51 : 
                 (i == 2) ? -0.5 * -6.4 : 
                 (i == 3) ? 4.2 * 2.12 : 0, value);
    end
    $finish;
end

endmodule
