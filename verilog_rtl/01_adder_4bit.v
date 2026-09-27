// ============================================================================
// Module: Adder_4bit
// Description: Adds two 4-bit numbers and produces a 5-bit result with carry
// This is the hardware equivalent of "Add Two Numbers" program
// ============================================================================

module adder_4bit(
    input [3:0] a,           // First 4-bit input number
    input [3:0] b,           // Second 4-bit input number
    output [4:0] sum         // 5-bit output (4-bits + carry)
);

    // Simple combinational logic
    // Add the two numbers directly
    assign sum = a + b;

endmodule
