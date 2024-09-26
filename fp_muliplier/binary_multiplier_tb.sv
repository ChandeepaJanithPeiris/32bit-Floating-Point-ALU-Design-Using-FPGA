`timescale 1ns/1ns
module binary_multiplier_tb;

    // Parameters for the multiplier (Set N to 24 for 24-bit inputs)
    // Testbench signals
    logic [23:0] A, B;
    logic [47:0] P;

    // Instantiate the multiplier
    binary_multiplier uut (
        .A(A),
        .B(B),
        .P(P)
    );

    // Initial block to apply stimulus
    initial begin
        // Display the header
        $display("A\t\t\t\tB\t\t\t\tP");

        // Apply test cases
        A = 24'b00000000000000000000000101; // A = 5
        B = 24'b00000000000000000000000010; // B = 2
        #10;  // Wait for result
        $display("%d\t\t%d\t\t%d", A, B, P);

        A = 24'b11111111111111111111110111; // A = 9
        B = 24'b00000000000000000000000011; // B = 3
        #10;  // Wait for result
        $display("%d\t\t%d\t\t%d", A, B, P);

        A = 24'b00000000000000000000001011; // A = 11
        B = 24'b00000000000000000000000100; // B = 4
        #10;  // Wait for result
        $display("%d\t\t%d\t\t%d", A, B, P);

        A = 24'b11111111111111111111111011; // A = 21
        B = 24'b11111111111111111111111001; // B = 9
        #10;  // Wait for result
        $display("%d\t\t%d\t\t%d", A, B, P);
    end

endmodule
