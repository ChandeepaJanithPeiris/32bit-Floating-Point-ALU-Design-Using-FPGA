`timescale 1ns/1ns

module fp_division_tb;

    // Input signals
    logic [31:0] in1, in2;

    // Output signal
    logic [31:0] out;

    // Instantiate the fp_division module
    fp_division fp_div (
        .in1(in1),
        .in2(in2),
        .out(out)
    );

    // Test procedure
    initial begin
        // Monitor signals to observe changes
        $monitor("Time: %0t | in1 = %0b, in2 = %0b | out = %0b",
                 $time, in1, in2, out);

        // Test Case 1: 8.0 / 2.0
        in1 = 32'b01000000100000000000000000000000;  // 8.0 in IEEE-754
        in2 = 32'b01000000000000000000000000000000;  // 2.0 in IEEE-754
        #10;

        // Test Case 2: 15.0 / 5.0
        in1 = 32'b01000001111000000000000000000000;  // 15.0 in IEEE-754
        in2 = 32'b01000000101000000000000000000000;  // 5.0 in IEEE-754
        #10;

        // Test Case 3: 100.0 / 25.0
        in1 = 32'b01000010110010000000000000000000;  // 100.0 in IEEE-754
        in2 = 32'b01000001110010000000000000000000;  // 25.0 in IEEE-754
        #10;

        // Test Case 4: 50.5 / 5.5
        in1 = 32'b01000010010010010000000000000000;  // 50.5 in IEEE-754
        in2 = 32'b01000000101100000000000000000000;  // 5.5 in IEEE-754
        #10;

        // Test Case 5: 1.0 / 3.0 (Fractional result)
        in1 = 32'b00111111100000000000000000000000;  // 1.0 in IEEE-754
        in2 = 32'b01000000010000000000000000000000;  // 3.0 in IEEE-754
        #10;

        // Test Case 6: 1e6 / 1e3
        in1 = 32'b01001000111010000000000000000000;  // 1,000,000 in IEEE-754
        in2 = 32'b01000111011110100000000000000000;  // 1,000 in IEEE-754
        #10;

    end

endmodule
