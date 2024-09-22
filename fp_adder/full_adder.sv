module full_adder (
    input logic [23:0] a,     // 24-bit input
    input logic [23:0] b,     // 24-bit input
    output logic [23:0] sum,  // 24-bit sum
    output logic carry        // Carry out
);

    always_comb begin
        {carry, sum} = a + b;  // Perform 24-bit addition
    end

endmodule
