`timescale 1ns/1ns

module full_adder_tb;
  parameter N = 24;
  // Inputs
  logic [N-1:0] a,b;

  // Outputs
  logic [N-1:0] sum;
  logic c_out;

  // Instantiate the full Adder module
  full_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(c_out)
  );

  // Test stimulus
  initial begin
    // Monitor changes
    $monitor("Time: %0t | a: %b | b: %b | sum: %b | c_out: %b", $time, a, b , sum, c_out);

    // Test case 1: Add two small numbers
    a = 24'b000000000000000000000101; // 5
    b = 24'b000000000000000000000011; // 3
    #10;

    // Test case 2: Add with carry-in
    a = 24'b000000000000000000000101; // 5
    b = 24'b000000000000000000000101; // 5
    #10;

    // Test case 3: Add two large numbers
    a = 24'b111111111111111111111111; // Max value for 23 bits
    b = 24'b111111111111111111111111; // Max value for 23 bits
    #10;

    // Test case 4: Add with carry overflow
    a = 24'b111111111111111111111111; // Max value for 23 bits
    b = 24'b111111111111111111111111; // Max value for 23 bits
    #10;

    // Test case 5: Random values
    a = 24'b101010101010101010101010;
    b = 24'b010101010101010101010101;
    #10;
    
  end

endmodule
