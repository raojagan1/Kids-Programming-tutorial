// ============================================================================
// Module: Counter_0_to_9
// Description: A 4-bit synchronous counter that counts from 0 to 9, then resets
// This is the hardware equivalent of "Print 1 to 10" program
// ============================================================================

module counter_0_to_9(
    input clk,               // Clock signal
    input reset,             // Asynchronous reset (active high)
    output [3:0] count       // 4-bit counter output (0-9)
);

    reg [3:0] counter_value;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset counter to 0
            counter_value <= 4'd0;
        end
        else begin
            // Count from 0 to 9, then reset to 0
            if (counter_value == 4'd9) begin
                counter_value <= 4'd0;
            end
            else begin
                counter_value <= counter_value + 1'b1;
            end
        end
    end

    // Assign output
    assign count = counter_value;

endmodule
