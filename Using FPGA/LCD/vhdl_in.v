module vhdl_in (
    input [31:0] binaryInput, // 16-bit input (1010110101101001)
    output reg [7:0] array 

    // Declare signals
    wire [31:0] binaryNumber1 = 16'b1010110101101001; // 32-bit input for BinaryToHexASCII
    wire [31:0] binaryNumber2 = 16'b1010110101101001; // 32-bit input for BinaryToHexASCII
    wire [7:0] array1 [0:15]; // Array to store ASCII hex characters
    wire [7:0] array2 [0:15];
    reg [3:0] charIndex; // To iterate over charArray
    reg uart_enable; // Enable signal for UART

    // Instantiate the BinaryToHexASCII module
    BinaryToHexASCII b2h (
        .binaryNumber(binaryNumber),
        .charArray(charArray)
    );

    // UART transmitter (simplified version)
    UARTTransmitter uart (
        .tx_data(charArray[charIndex]),
        .tx_enable(uart_enable),
        .tx(uart_tx)
    );

    // Convert the 16-bit binary input to 32-bit (padded with leading zeros)
    assign binaryNumber = {16'b0, binaryInput}; // Pad with leading zeros to 32-bits

    // State machine to send each character of the hex string via UART
    always @(posedge clk) begin
        if (reset) begin
            charIndex <= 0;
            uart_enable <= 0;
        end else if (charIndex < 8) begin // We only need the first 8 characters
            uart_enable <= 1; // Enable UART to transmit
            if (uart_enable && uart_tx_ready) begin
                charIndex <= charIndex + 1; // Move to the next character
                uart_enable <= 0; // Disable UART until the next character is ready
            end
        end
    end

endmodule