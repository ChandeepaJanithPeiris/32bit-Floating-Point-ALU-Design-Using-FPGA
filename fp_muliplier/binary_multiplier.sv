module binary_multiplier (
    input  logic [23:0] A,  // 24-bit input A
    input  logic [23:0] B,  // 24-bit input B
    output logic [47:0] P   // 48-bit product
);

    // Array to hold partial products
    logic [47:0] partial_products [23:0];
    
    // Generate Partial Products using a generate block with genvar
    genvar i;
    generate
        for (i = 0; i < 24; i = i + 1) begin : gen_partial_products
            assign partial_products[i] = (A & {24{B[i]}}) << i;
        end
    endgenerate

    // Sum up the partial products using an always block
    always_comb begin
        P = partial_products[0];  // Initialize sum with the first partial product
        for (int j = 1; j < 24; j = j + 1) begin
            P = P + partial_products[j];  // Sum the partial products
        end
    end

endmodule
