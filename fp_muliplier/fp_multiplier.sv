module fp_multiplier (
    input logic [31:0] in1,
    input logic [31:0] in2,
    output logic [31:0] out
);

//number 1
logic sign1 =  in1[31];
logic [7:0] exp1  = in1[30:23];
logic [22:0] mantissa1 = {1'b1,in1[22:0]};

//number 2
logic sign2 =  in1[31];
logic [7:0] exp2  = in1[30:23];
logic [22:0] mantissa2 = {1'b1,in1[22:0]};

logic sign;
logic [7:0] exp;
logic [47:0] mult_mantissa;
logic [22:0] mantissa;
logic [7:0] shift_amount;



assign sign = sign1 ^ sign2;

binary_multiplier mult(
    .A(mantissa1),
    .B(mantissa2),
    .P(mult_mantissa)
);

right_shift rshift(
    .in(mult_mantissa),
    .shift_amount(shift_amount),
    .out(mantisssa)
);


always_comb begin 
    //multiply two mantissas
    if (mult_mantissa[1]  == 1'b1) begin
        shift_amount = 1; // if msb == 1 right shift
        //right_shift
        exp = exp1 + exp2 - 126; //increase exponent by 1       
    end
    else begin
      shift_amount = 0;
      exp = exp1 + exp2 - 127;
    end

    
end
    
endmodule