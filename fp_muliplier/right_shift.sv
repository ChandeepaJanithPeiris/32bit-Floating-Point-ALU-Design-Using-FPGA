module right_shift (
    input logic [49:0] in,          // Input binary number
    input logic [7:0] shift_amount, // Amount to shift (3 bits -> can shift 0 to 7 positions)
    output logic [22:0] out         // Output shifted number
);

    logic [49:0] shifted_in; 

    always_comb begin
        shifted_in = in >> shift_amount;  // Shift right by shift_amount
        out = shifted_in[48:26];          // Take bits [48:26] for the output (23 bits)
    end

endmodule