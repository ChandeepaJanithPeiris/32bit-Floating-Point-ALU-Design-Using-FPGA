`timescale 1ns/1ns
module right_shift_tb;

  // Testbench signals
  logic [49:0] in;          // Input binary number
  logic [7:0] shift_amount; // Shift amount
  logic [22:0] out;         // Output shifted number

  // Instantiate the right shifter module
  right_shift uut (
    .in(in),
    .shift_amount(shift_amount),
    .out(out)
  );

  // Testbench process
  initial begin
    // Display header
    $display("Time\tOutput");

    // Monitor output
    $monitor("%0t\t%b", $time, out);

    // Test case 1
    in = 50'b11011101010101010101010101010101010101010101010101; // 50-bit input
    shift_amount = 4;    // Shift right by 4 bits
    #10;

    // Test case 2
    in = 50'b10101111111111110000000011111111000000001111111111; // 50-bit input
    shift_amount = 2;    // Shift right by 2 bits
    #10;

    // Test case 3
    in = 50'b11110000111100001111000011110000111100001111000011; // 50-bit input
    shift_amount = 4;    // Shift right by 4 bits
    #10;

    // Test case 4
    in = 50'b01010101010101010101010101010101010101010101010101; // 50-bit input
    shift_amount = 1;    // Shift right by 1 bit
    #10;

    // Test case 5
    in = 50'b00001111000011110000111100001111000011110000111100; // 50-bit input
    shift_amount = 3;    // Shift right by 3 bits
    #10;

  end

endmodule