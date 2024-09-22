`timescale 1ns/1ns

module fp_adder_tb;

    // Inputs
    logic [31:0] in1;
    logic [31:0] in2;

    // Outputs
    logic [31:0] out;

  // Instantiate the full Adder module
  fp_adder uut (
    .in1(in1),
    .in2(in2),
    .out(out)
  );

  // Test stimulus
  initial begin
    // Monitor changes
    $monitor("Time: %0t | in1: %b | in2: %b | out: %b", $time, in1, in2 , out);

    // Test 1
    in1 = 32'b00111111000000110101001111111000; // 0.513
    in2 = 32'b01000100001001010100000100000110; // 661.016
    #10;

  end

endmodule

