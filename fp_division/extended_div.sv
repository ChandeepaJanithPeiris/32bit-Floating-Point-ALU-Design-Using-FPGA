module extended_div (
    input  logic [23:0] Q,
    input  logic [23:0] M,
    output logic [23:0] ans
);

logic [24:0] Qo;
logic [24:0] A;
int count;

// Instantiate the binary division module
binary_division bin_div (
    .Q(Q),
    .M(M),
    .Qo(Qo),
    .A(A)
);

logic Q_temp;
logic [23:0] ans_temp;

always_comb begin
    // Initialize
    Q_temp = Q;
    ans_temp = 24'b0;  // Initialize the answer to 0
    count = 0;
    
    // Loop through 24 iterations (as we are processing 24-bit numbers)
    while (A != 0 && count < 24) begin
        // Concatenate current quotient bit to the result
        ans_temp = {ans_temp[22:0],Qo[0]};  // Assume Q[0] is the quotient bit
        Q_temp = {A[24:1], 1'b0};  // Shift A and add 0 to end of Q_temp 
        count = count + 1;
    end

    // Assign final value to output after loop
    ans = ans_temp;
end
    
endmodule
