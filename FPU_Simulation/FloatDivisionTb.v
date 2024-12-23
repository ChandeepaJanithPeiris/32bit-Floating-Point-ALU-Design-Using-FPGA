`timescale 1ns / 1ps

module FloatDivisionTB #(parameter XLEN = 32);
    reg [XLEN-1:0] A, B;
    reg clk;
    wire [XLEN-1:0] result;
    wire zero_division; // Added wire for zero_division output
    real value;
    integer i;

    // Instantiate the floating-point division module
    FloatingDivision F_Div (
        .A(A),
        .B(B),
        .zero_division(zero_division), // Connect zero_division port
        .result(result)
    );

    // Clock generation
    initial clk = 0;
    always #10 clk = ~clk; // 50 MHz clock

    // Test cases
    reg [63:0] test_cases [0:3]; // Array to store test cases
    initial begin
        test_cases[0] = {32'b0_10000001_00001100110011001100110, 32'b0_10000000_10011001100110011001100}; // 4.2 / 3.2
        test_cases[1] = {32'b0_01111110_01010001111010111000010, 32'b0_01111110_00000101000111101011100}; // 0.66 / 0.51
        test_cases[2] = {32'b0_10000010_00000111010111000010100, 32'b0_10000000_00111001100110011001101}; // 8.23 / 2.45
        test_cases[3] = {32'b1_10000010_10001001111010111000011, 32'b0_10000000_10001110000101000111101}; // -12.31 / 3.11
    end

    // Apply inputs and monitor outputs
    initial begin
        A = 0;
        B = 0;
        for (i = 0; i < 4; i = i + 1) begin
            @(posedge clk); // Wait for clock edge
            {A, B} = test_cases[i]; // Apply test case
            @(posedge clk); // Wait for next clock edge
            
            // Compute result in floating-point format
            value = (2**(result[30:23] - 127)) * 
                    ($itor({1'b1, result[22:0]}) / 2**23) * 
                    ((-1)**(result[31]));
            
            // Display the results
            $display("Test Case %d: A = %b, B = %b", i, A, B);
            if (zero_division) begin
                $display("Division by zero detected!");
            end else begin
                $display("Expected Value: %f, Result: %f", 
                         (i == 0) ? 4.2 / 3.2 : 
                         (i == 1) ? 0.66 / 0.51 : 
                         (i == 2) ? 8.23 / 2.45 : 
                         (i == 3) ? -12.31 / 3.11 : 0, value);
            end
        end
        $finish;
    end

endmodule
