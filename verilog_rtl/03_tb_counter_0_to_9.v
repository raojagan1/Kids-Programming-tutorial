// ============================================================================
// Testbench for Counter_0_to_9 Module
// Simulates clock pulses and verifies counting behavior
// ============================================================================

`timescale 1ns/1ps

module tb_counter_0_to_9();

    // Testbench signals
    reg clk_test;
    reg reset_test;
    wire [3:0] count_test;

    // Instantiate the counter module
    counter_0_to_9 uut (
        .clk(clk_test),
        .reset(reset_test),
        .count(count_test)
    );

    // Clock generation: 10ns period (100MHz)
    initial begin
        clk_test = 0;
        forever #5 clk_test = ~clk_test;
    end

    // Test stimuli
    initial begin
        $display("==========================================");
        $display("  Counter 0-to-9 Testbench");
        $display("==========================================");
        $display("Time(ns) | Reset | Count");
        $display("---------|-------|-------");

        // Reset the counter
        reset_test = 1;
        #15;  // Wait after reset assertion
        reset_test = 0;
        #5;

        // Display counts from 0 to 9 multiple times
        repeat(25) begin
            #10;
            $display("%t    |   %d   |  %2d", $time, reset_test, count_test);
        end

        // Test reset during counting
        reset_test = 1;
        #10;
        $display("%t    |   %d   |  %2d  <-- Reset asserted", $time, reset_test, count_test);
        reset_test = 0;
        #10;
        $display("%t    |   %d   |  %2d  <-- After reset", $time, reset_test, count_test);

        $display("==========================================");
        $display("Testbench completed successfully!");
        $display("==========================================");
        $finish;
    end

endmodule
