// ============================================================================
// Module: Comparator_3input
// Description: Finds the maximum of three 8-bit numbers
// This is the hardware equivalent of "Find Maximum" program
// ============================================================================

module comparator_3input(
    input [7:0] a,           // First input number
    input [7:0] b,           // Second input number
    input [7:0] c,           // Third input number
    output [7:0] max_val     // Maximum of a, b, and c
);

    // Internal wires for comparison results
    wire [7:0] temp_max;

    // First compare a and b, get the maximum
    assign temp_max = (a > b) ? a : b;

    // Then compare temp_max with c, get the overall maximum
    assign max_val = (temp_max > c) ? temp_max : c;

endmodule
