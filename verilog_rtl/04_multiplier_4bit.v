// ============================================================================
// Module: Multiplier_4bit
// Description: Multiplies two 4-bit numbers to produce an 8-bit result
// This demonstrates the concept behind factorial calculation in hardware
// ============================================================================

module multiplier_4bit(
    input [3:0] a,           // First 4-bit input number
    input [3:0] b,           // Second 4-bit input number
    output [7:0] product     // 8-bit output (result of a × b)
);

    // Simple combinational multiplication
    assign product = a * b;

endmodule
