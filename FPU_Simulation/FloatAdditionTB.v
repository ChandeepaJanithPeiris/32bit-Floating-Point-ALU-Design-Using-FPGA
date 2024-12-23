`timescale 1ns / 1ps
module FloatAdditionTB #(parameter XLEN = 32);
    reg [XLEN-1:0] A, B;
    reg clk;
    reg overflow, underflow, exception;
    wire [XLEN-1:0] result;
    real value;

    FloatingAddition F_Add (.A(A), .B(B), .result(result));

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 50 MHz clock with 20 ns period
    end

    // Input stimulus
    initial begin
        A = 32'b0_01111110_01010001111010111000010;  // 0.66
        B = 32'b0_01111110_00000101000111101011100;  // 0.51
        @(posedge clk);

        //A = 32'b0_10000010_00100101110100101111001;  // 9.182
        //B = 32'b0_10000010_01000111010111000010100;  // 10.23
        //@(posedge clk);

        //A = 32'b1_10000010_01100111011011001000110;  // -11.232
        //B = 32'b0_10000010_00100101011100001010010;  // 9.17
        //@(posedge clk);

        //A = 32'b0_01111110_11000111101011100001010;  // 0.89
        //B = 32'b1_10000001_11110011110101110000101;  //  -7.81
        //@(posedge clk);

        $finish;
    end

    // Result evaluation
    initial begin
        #15
        forever @(posedge clk) begin
            value = (2**(result[30:23]-127)) * ($itor({1'b1, result[22:0]}) / 2**23) * ((-1)**(result[31]));
        end
    end
endmodule
