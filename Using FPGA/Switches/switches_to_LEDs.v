module switches_to_LEDs 
    #(parameter N = 5) // Output width (5 bits to store sum)
(
    input [3:0] i_switch,  // Input port for the 4-bit number
    input key0,             // Store first input signal (active low)
    input key1,             // Store second input signal (active low)
    input key2,             // Perform addition and display result signal (active low)
    input clk,              // Clock signal
    output reg [4:0] o_LED  // Output port for 5-bit result (to accommodate carry)
);

    reg [3:0] first_input;  // Register to store the first 4-bit input
    reg [3:0] second_input; // Register to store the second 4-bit input
    reg [4:0] stored_value; // Register to store the result of the addition

    always @(posedge clk) begin
        if (key0 == 1'b0) begin
            // Store the first 4-bit input when key0 is pressed (active low)
            first_input <= i_switch;
            o_LED <= i_switch; // Light up LEDs to show the entered first input
        end
        else if (key1 == 1'b0) begin
            // Store the second 4-bit input when key1 is pressed (active low)
            second_input <= i_switch;
            o_LED <= i_switch; // Light up LEDs to show the entered second input
        end
        else if (key2 == 1'b0) begin
            // Perform the addition and display the result when key2 is pressed (active low)
            stored_value <= first_input + second_input;
            o_LED <= first_input + second_input; // Directly display the addition result
        end
    end

endmodule