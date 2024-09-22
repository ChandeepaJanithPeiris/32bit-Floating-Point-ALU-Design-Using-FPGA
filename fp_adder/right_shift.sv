module right_shift #(parameter N = 24) (
    input logic [N-1:0] in,      // Input binary number
    input logic [7:0] shift_amt, // Amount to shift (log2(N) bits needed to represent shift amount)
    output logic [N-1:0] out,    // Output shifted number
    output logic [2:0] grs
);

    logic [N-1:0] leftover; //leftover bits

    always_comb begin
        out = in >> shift_amt;                  // Shift right by shift_amt
        leftover = in & ((1 << shift_amt) - 1); // Capture leftover bits
        grs = leftover[2:0];
        grs = {grs[0],grs[1],grs[2]};
    end

endmodule




