module extended_div_tb;
    // Input signals
    logic [23:0] Q, M;
    
    // Output signals
    logic signed [23:0] ans;     // Quotient

    // Instantiate the binary_division module
    extended_div div (
        .Q(Q),
        .M(M),
        .ans(ans)
    );

    // Test procedure
    initial begin
        // Monitor signals to observe changes
        $monitor("Time: %0t | Q = %0b, M = %0b | answer (ans) = %0b",
                  $time, Q, M, ans);

        // Test Case 1: 8 / 3
        Q = 24'b111111100001000000000000;  // Dividend = 8
        M = 24'b100001111000000000000000;  // Divisor = 3
        #10;

        // // Test Case 2: 9 / 2
        // Q = 24'b111011010010000000000000;  // Dividend = 9
        // M = 24'b100001111000000000000000;  // Divisor = 2
        // #10;

        // // Test Case 3: 15 / 4
        // Q = 24'b110010110100000000000000; // Dividend = 15
        // M = 24'b100001111000000000000000;  // Divisor = 4
        // #10;

        // // Test Case 4: 7 / 1
        // Q = 24'b100001111000000000000000;  // Dividend = 7
        // M = 24'b100001111000000000000000;  // Divisor = 1
        // #10;

        // // Additional 24-bit test cases
        // // Test Case 5: 16777215 / 3  (Max 24-bit value divided by 3)
        // Q = 24'd16777215;  // Dividend = 16777215
        // M = 24'd3;  // Divisor = 3
        // #10;

        // // Test Case 6: 1000000 / 50
        // Q = 24'd1000000;  // Dividend = 1,000,000
        // M = 24'd50;  // Divisor = 50
        // #10;

        // // Test Case 7: 12345678 / 123
        // Q = 24'd12345678;  // Dividend = 12,345,678
        // M = 24'd123;  // Divisor = 123
        // #10;

    end
endmodule

