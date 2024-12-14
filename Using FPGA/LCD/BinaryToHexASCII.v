module BinaryToHexASCII (
    input [31:0] binaryNumber,
    output reg [7:0] charArray [0:15] // Array of 16 ASCII characters
);
    integer i;
    reg [3:0] nibble; // 4-bit portion of the binary number

    // Function to convert a 4-bit nibble to its ASCII hex representation
    function [7:0] nibbleToASCII;
        input [3:0] nibble;
        begin
            if (nibble < 4'hA)
                nibbleToASCII = 8'h30 + nibble; // 0-9 in ASCII
            else
                nibbleToASCII = 8'h37 + nibble; // A-F in ASCII
        end
    endfunction

    always @(*) begin
        // Convert each 4-bit nibble into ASCII and store in charArray
        for (i = 0; i < 8; i = i + 1) begin
            nibble = binaryNumber[31 - (i * 4) -: 4]; // Extract 4 bits
            charArray[i] = nibbleToASCII(nibble);     // Convert to ASCII
        end

        // Fill remaining array slots with ASCII '0' (padding)
        for (i = 8; i < 16; i = i + 1) begin
            charArray[i] = 8'h30; // ASCII '0'
        end
    end
endmodule
