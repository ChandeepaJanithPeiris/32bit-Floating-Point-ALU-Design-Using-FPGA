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

        // Test Case 1:
        Q = 24'b111111100001000000000000;  
        M = 24'b100001111000000000000000;  
        #10;

    end
endmodule

