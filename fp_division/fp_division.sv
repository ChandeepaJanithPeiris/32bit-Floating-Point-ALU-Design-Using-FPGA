`include "binary_division.sv"

module fp_division (
    input logic [31:0] in1,
    input logic [31:0] in2,
    output logic [31:0] out
);

// Number 1
logic sign1 = in1[31];
logic [7:0] exp1  = in1[30:23];
logic [23:0] mantissa1 = {1'b1, in1[22:0]}; // add implicit 1

// Number 2
logic sign2 = in2[31]; 
logic [7:0] exp2  = in2[30:23]; 
logic [23:0] mantissa2 = {1'b1, in2[22:0]}; // add implicit 1

logic sign;
logic [7:0] exp;
logic [22:0] mantissa;
logic [24:0] Qo;
logic [24:0] A;

binary_division div (
    .Q(mantissa1),
    .M(mantissa2),
    .Qo(Qo),
    .A(A)
);

// Sign calculation
//assign sign = sign1 ^ sign2;
//assign exp = exp1 -exp2 +127;
// assign mantissa = Qo[22:0];
// assign out = {sign,exp,mantissa};

always_comb begin
    sign = sign1 ^ sign2;
    exp = exp1 - exp2 +127;
    mantissa = Qo[22:0];

    out  = {sign,exp,mantissa};
end


endmodule