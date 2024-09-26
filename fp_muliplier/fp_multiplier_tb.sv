`timescale 1ns/1ns

module fp_multiplier_tb;

    // Inputs
    logic [31:0] in1;
    logic [31:0] in2;

    // Outputs
    logic [31:0] out;

    // Instantiate the fp_multiplier module
    fp_multiplier uut (
        .in1(in1),
        .in2(in2),
        .out(out)
    );

    // Test stimulus
    initial begin
        // Monitor changes in a more readable format (in decimal)
        $monitor("Time: %0t | in1: %h (%f) | in2: %h (%f) | out: %h", $time, in1, $bitstoreal(in1), in2, $bitstoreal(in2), out);

        // Test 1: 0.513 * 661.016
        in1 = 32'b00111111000000110101001111111000; // 0.513
        in2 = 32'b01000100001001010100000100000110; // 661.016
        #10;

        // Add more test cases as needed...

        // Stop simulation after enough time
    end

endmodule
