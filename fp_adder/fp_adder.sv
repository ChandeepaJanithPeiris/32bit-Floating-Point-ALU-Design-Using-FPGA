module fp_adder (
    input logic [31:0] in1,
    input logic [31:0] in2,
    output logic [31:0] out
);

// Number 1
logic sign1 = in1[31];
logic [7:0] exp1 = in1[30:23];
logic [23:0] man1 = {1'b1, in1[22:0]};

// Number 2
logic sign2 = in2[31];
logic [7:0] exp2 = in2[30:23];
logic [23:0] man2 = {1'b1, in2[22:0]};

logic [7:0] shift_amount;
logic [23:0] new_man2;
logic [23:0] new_man1;
logic [2:0] grs1;
logic [2:0] grs2;
logic carry1;
logic carry2;
logic [23:0] mantissa1;
logic [23:0] mantissa2;
logic [23:0] mantissa_f;
logic [7:0] exp;
logic sign;

// Instantiations (outside the procedural block)
right_shift rs1(
    .in(man2),
    .shift_amt(shift_amount),
    .out(new_man2),
    .grs(grs2)
);

right_shift rs2(
    .in(man1),
    .shift_amt(shift_amount),
    .out(new_man1),
    .grs(grs1)
);

full_adder fa1(
    .a(new_man2),
    .b(man1),
    .sum(mantissa2),
    .carry(carry2)
);

full_adder fa2(
    .a(new_man1),
    .b(man2),
    .sum(mantissa1),
    .carry(carry1)
);



always_comb begin 
    if (exp1 > exp2) begin
        shift_amount = exp1 - exp2;
        //rs1  -> new_mantissa2,grs2 =  shift(man2,shift_amt);
        //fa1  -> mantissa2, carry2 = fulladder(new_mantissa2 + man1);
    end else if (exp2 > exp1) begin
        shift_amount = exp2 - exp1;
        //rs2 -> new_mantissa1,grs1 =  shift(man1,shift_amt);
        //fa2 -> mantissa1, carry1 = fullladder(new_mantissa1 + man2);
    end

    // Exponent of the output
    exp = shift_amount;

    // Rounding
    if (grs1 == 3'b111 || grs1 == 3'b101 || grs1 == 3'b110) mantissa_f = mantissa1 + 24'b1;
    else if (grs2 == 3'b111 || grs2 == 3'b101 || grs2 == 3'b110) mantissa_f = mantissa2 + 24'b1;


    // Determining sign
    if (sign1 == sign2) sign = sign1;

    // Final output
    out = {sign, exp, mantissa_f[22:0]};
end

endmodule
