// ============================================================================
// Testbench for Comparator_3input Module
// Tests maximum value selection from three numbers
// ============================================================================

`timescale 1ns/1ps

module tb_comparator_3input();

    // Testbench signals
    reg [7:0] a_test;
    reg [7:0] b_test;
    reg [7:0] c_test;
    wire [7:0] max_val_test;

    // Instantiate the comparator module
    comparator_3input uut (
        .a(a_test),
        .b(b_test),
        .c(c_test),
        .max_val(max_val_test)
    );

    // Test stimuli
    initial begin
        $display("===============================================");
        $display("  3-Input Comparator Testbench");
        $display("===============================================");
        $display("Time(ns) |  A  |  B  |  C  | Max");
        $display("---------|-----|-----|-----|-----");

        // Test case 1: 10, 25, 15 -> max = 25
        a_test = 8'd10;
        b_test = 8'd25;
        c_test = 8'd15;
        #10;
        $display("%t    | %3d | %3d | %3d | %3d", $time, a_test, b_test, c_test, max_val_test);

        // Test case 2: 5, 8, 3 -> max = 8
        a_test = 8'd5;
        b_test = 8'd8;
        c_test = 8'd3;
        #10;
        $display("%t    | %3d | %3d | %3d | %3d", $time, a_test, b_test, c_test, max_val_test);

        // Test case 3: 100, 50, 75 -> max = 100
        a_test = 8'd100;
        b_test = 8'd50;
        c_test = 8'd75;
        #10;
        $display("%t    | %3d | %3d | %3d | %3d", $time, a_test, b_test, c_test, max_val_test);

        // Test case 4: 200, 200, 200 -> max = 200 (all equal)
        a_test = 8'd200;
        b_test = 8'd200;
        c_test = 8'd200;
        #10;
        $display("%t    | %3d | %3d | %3d | %3d", $time, a_test, b_test, c_test, max_val_test);

        // Test case 5: 1, 2, 255 -> max = 255
        a_test = 8'd1;
        b_test = 8'd2;
        c_test = 8'd255;
        #10;
        $display("%t    | %3d | %3d | %3d | %3d", $time, a_test, b_test, c_test, max_val_test);

        $display("===============================================");
        $display("Testbench completed successfully!");
        $display("===============================================");
        $finish;
    end

endmodule
