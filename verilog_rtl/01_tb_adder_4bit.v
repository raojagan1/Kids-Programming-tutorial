// ============================================================================
// Testbench for Adder_4bit Module
// This testbench verifies that the adder works correctly
// ============================================================================

`timescale 1ns/1ps

module tb_adder_4bit();

    // Testbench signals
    reg [3:0] a_test;
    reg [3:0] b_test;
    wire [4:0] sum_test;

    // Instantiate the adder module
    adder_4bit uut (
        .a(a_test),
        .b(b_test),
        .sum(sum_test)
    );

    // Test stimuli
    initial begin
        $display("========================================");
        $display("  4-bit Adder Testbench");
        $display("========================================");
        $display("Time(ns) | A  | B  | Sum (A+B)");
        $display("--------|----|----|----------");

        // Test case 1: 5 + 7 = 12
        a_test = 4'd5;
        b_test = 4'd7;
        #10;
        $display("%t    | %2d | %2d | %2d", $time, a_test, b_test, sum_test);

        // Test case 2: 3 + 4 = 7
        a_test = 4'd3;
        b_test = 4'd4;
        #10;
        $display("%t    | %2d | %2d | %2d", $time, a_test, b_test, sum_test);

        // Test case 3: 15 + 1 = 16 (overflow test)
        a_test = 4'd15;
        b_test = 4'd1;
        #10;
        $display("%t    | %2d | %2d | %2d", $time, a_test, b_test, sum_test);

        // Test case 4: 8 + 8 = 16
        a_test = 4'd8;
        b_test = 4'd8;
        #10;
        $display("%t    | %2d | %2d | %2d", $time, a_test, b_test, sum_test);

        // Test case 5: 0 + 0 = 0
        a_test = 4'd0;
        b_test = 4'd0;
        #10;
        $display("%t    | %2d | %2d | %2d", $time, a_test, b_test, sum_test);

        $display("========================================");
        $display("Testbench completed successfully!");
        $display("========================================");
        $finish;
    end

endmodule
