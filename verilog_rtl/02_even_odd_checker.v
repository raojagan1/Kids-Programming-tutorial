// ============================================================================
// Module: Even_Odd_Checker
// Description: Determines if an 8-bit number is even or odd
// even_flag = 1 means even, even_flag = 0 means odd
// This is the hardware equivalent of "Check Even or Odd" program
// ============================================================================

module even_odd_checker(
    input [7:0] num,         // 8-bit input number
    output even_flag         // 1 = even, 0 = odd
);

    // A number is even if the least significant bit (LSB) is 0
    // A number is odd if the least significant bit (LSB) is 1
    assign even_flag = ~num[0];  // NOT of the LSB

endmodule
