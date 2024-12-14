module FPU_TOP (
    input [17:0] i_switch,  // Input port for the 16-bit number
    input key0,             // Store first input signal (active low)
    input key1,             // Store second input signal (active low)
    input key2,             // Perform operation and display result signal (active low)
    input key3,             // Reset signal (active low)
    input clk,              // Clock signal
    output reg [17:0] o_LED_red,  // Output port for the 18-bit result
    output reg [7:0] o_LED_yellow, // Yellow LEDs to indicate partial result
    output reg o_LED_zero          // Single LED to indicate division by zero
);

    reg [31:0] first_input;  // Register to store the first 32-bit input
    reg [15:0] first_input_part1;
    reg [15:0] first_input_part2;

    reg [31:0] second_input;  // Register to store the second 32-bit input
    reg [15:0] second_input_part1;
    reg [15:0] second_input_part2;

    wire [31:0] addition_result;       // Result of FloatingAddition
    wire [31:0] subtraction_result;    // Result of FloatingSubtraction
    wire [31:0] multiplication_result; // Result of FloatingMultiplication
    wire [31:0] division_result;       // Result of FloatingDivision
    wire division_by_zero;             // Flag for division by zero

    reg [31:0] stored_value;           // Register to store the result of the operation
    reg zero_div;                      // Internal zero division flag

    // State variables to track input stage
    reg [1:0] input_stage; // 0: first part, 1: second part

    // Instantiating Floating Point Modules
    FloatingAddition FA (
        .A(first_input),
        .B(second_input),
        .result(addition_result)
    );

    FloatingAddition FS ( // Subtraction using addition of 2's complement
        .A(first_input),
        .B(~second_input + 1'b1),
        .result(subtraction_result)
    );

    FloatingMultiplication FM (
        .A(first_input),
        .B(second_input),
        .result(multiplication_result)
    );

    FloatingDivision FD (
        .A(first_input),
        .B(second_input),
        .zero_division(division_by_zero),
        .result(division_result)
    );

    always @(posedge clk) begin
        if (key3 == 1'b0) begin  // Reset logic
            first_input <= 32'b0;
            second_input <= 32'b0;
            stored_value <= 32'b0;
            zero_div <= 1'b0;
            input_stage <= 2'b00; // Reset input stage
            o_LED_red <= 18'b0;
            o_LED_yellow <= 8'b0;
            o_LED_zero <= 1'b0;
        end else if (key0 == 1'b0) begin
            if (input_stage == 2'b00) begin
                // Store the first part of the first input
                first_input_part1 <= i_switch[15:0];
                input_stage <= 2'b01; // Move to the second part
            end else if (input_stage == 2'b01) begin
                // Store the second part of the first input
                first_input_part2 <= i_switch[15:0];
                first_input <= {first_input_part1, first_input_part2}; // Concatenate
                input_stage <= 2'b00; // Reset for the next operation
            end
        end else if (key1 == 1'b0) begin
            if (input_stage == 2'b00) begin
                // Store the first part of the second input
                second_input_part1 <= i_switch[15:0];
                input_stage <= 2'b01; // Move to the second part
            end else if (input_stage == 2'b01) begin
                // Store the second part of the second input
                second_input_part2 <= i_switch[15:0];
                second_input <= {second_input_part1, second_input_part2}; // Concatenate
                input_stage <= 2'b00; // Reset for the next operation
            end
        end else if (key2 == 1'b0) begin
            // Perform the operation based on i_switch[17:16]
            case (i_switch[17:16])
                2'b00: begin // Addition
                    stored_value <= addition_result;
                end
                2'b01: begin // Subtraction
                    stored_value <= subtraction_result;
                end
                2'b10: begin // Multiplication
                    stored_value <= multiplication_result;
                end
                2'b11: begin // Division
                    if (division_by_zero) begin
                        stored_value <= 32'b0;
                        zero_div <= 1'b1; // Division by zero flag
                    end else begin
                        stored_value <= division_result;
                        zero_div <= 1'b0;
                    end
                end
            endcase
            // Output the result
            o_LED_red <= stored_value[31:14];  // 18 bits for o_LED_red
            o_LED_yellow <= stored_value[13:6]; // 8 bits for o_LED_yellow
            o_LED_zero <= zero_div; // Division by zero indication
        end
    end

endmodule
