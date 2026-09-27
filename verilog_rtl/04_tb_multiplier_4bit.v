// ============================================================================
// Testbench for Multiplier_4bit Module
// Tests multiplication of various 4-bit numbers
// ============================================================================

`timescale 1ns/1ps

module tb_multiplier_4bit();

    // Testbench signals
    reg [3:0] a_test;
    reg [3:0] b_test;
    wire [7:0] product_test;

    // Instantiate the multiplier module
    multiplier_4bit uut (
        .a(a_test),
        .b(b_test),
        .product(product_test)
    );

    // Test stimuli
    initial begin
        $display("==========================================");
        $display("  4-bit Multiplier Testbench");
        $display("==========================================");
        $display("Time(ns) | A  | B  | Product (A×B)");
        $display("---------|----|----|---------------");

        // Test case 1: 3 × 4 = 12
        a_test = 4'd3;
        b_test = 4'd4;
        #10;
        $display("%t    | %2d | %2d |     %3d", $time, a_test, b_test, product_test);

        // Test case 2: 5 × 5 = 25
        a_test = 4'd5;
        b_test = 4'd5;
        #10;
        $display("%t    | %2d | %2d |     %3d", $time, a_test, b_test, product_test);

        // Test case 3: 7 × 2 = 14
        a_test = 4'd7;
        b_test = 4'd2;
        #10;
        $display("%t    | %2d | %2d |     %3d", $time, a_test, b_test, product_test);

        // Test case 4: 15 × 15 = 225 (max 4-bit multiplication)
        a_test = 4'd15;
        b_test = 4'd15;
        #10;
        $display("%t    | %2d | %2d |     %3d", $time, a_test, b_test, product_test);

        // Test case 5: 0 × 8 = 0
        a_test = 4'd0;
        b_test = 4'd8;
        #10;
        $display("%t    | %2d | %2d |     %3d", $time, a_test, b_test, product_test);

        $display("==========================================");
        $display("Testbench completed successfully!");
        $display("==========================================");
        $finish;
    end

endmodule
