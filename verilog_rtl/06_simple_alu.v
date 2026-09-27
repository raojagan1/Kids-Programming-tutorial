// ============================================================================
// Module: Simple_ALU (Arithmetic Logic Unit)
// Description: A simple 8-bit ALU that can perform:
//   - ADD (op = 00)
//   - SUBTRACT (op = 01)
//   - AND (op = 10)
//   - OR (op = 11)
// ============================================================================

module simple_alu(
    input [7:0] a,           // First operand (8-bit)
    input [7:0] b,           // Second operand (8-bit)
    input [1:0] op,          // Operation select (2-bit)
    output [8:0] result,     // Result (9-bit to include carry)
    output zero_flag         // Set to 1 if result is zero
);

    reg [8:0] alu_result;

    // Combinational logic for ALU operations
    always @(*) begin
        case(op)
            2'b00: alu_result = a + b;        // ADD
            2'b01: alu_result = a - b;        // SUBTRACT
            2'b10: alu_result = a & b;        // AND
            2'b11: alu_result = a | b;        // OR
            default: alu_result = 9'b0;
        endcase
    end

    assign result = alu_result;
    assign zero_flag = (alu_result == 9'b0) ? 1 : 0;

endmodule
