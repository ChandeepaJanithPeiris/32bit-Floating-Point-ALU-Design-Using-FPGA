`timescale 1ns/1ns
module tb_right_shift;

  // Parameter definition (same as the module)
  parameter N = 24;
  // Testbench signals
  logic [N-1:0] in;       // Input binary number
  logic [7:0] shift_amt; // Shift amount
  logic [N-1:0] out;      // Output shifted number
  logic [2:0] grs ; // grs

  // Instantiate the right shifter module
  right_shift uut (
    .in(in),
    .shift_amt(shift_amt),
    .out(out),
    .grs(grs)
  );

  // Testbench process
  initial begin
    // Display header
    $display("Time\tInput\tShift\tOutput\tgrs");
    $monitor("%0t\t%b\t%d\t%b\t%b", $time, in, shift_amt, out, grs);

    // Test case 1
    in = 8'b11011101; // Binary input
    shift_amt = 4;    // Shift right by 3 bits
    #10;

    // Test case 2
    in = 8'b10101111; // Binary input
    shift_amt = 2;    // Shift right by 2 bits
    #10;

    // Test case 3
    in = 8'b11110000; // Binary input
    shift_amt = 4;    // Shift right by 4 bits
    #10;

    // Test case 4
    in = 8'b01010101; // Binary input
    shift_amt = 1;    // Shift right by 1 bit
    #10;

  end

endmodule
