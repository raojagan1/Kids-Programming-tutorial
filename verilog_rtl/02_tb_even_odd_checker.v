// ============================================================================
// Testbench for Even_Odd_Checker Module
// Tests various numbers to verify even/odd detection
// ============================================================================

`timescale 1ns/1ps

module tb_even_odd_checker();

    // Testbench signals
    reg [7:0] num_test;
    wire even_flag_test;

    // Instantiate the even_odd_checker module
    even_odd_checker uut (
        .num(num_test),
        .even_flag(even_flag_test)
    );

    // Test stimuli
    initial begin
        $display("==========================================");
        $display("  Even/Odd Checker Testbench");
        $display("==========================================");
        $display("Time(ns) | Number | Result");
        $display("         |        | (1=Even, 0=Odd)");
        $display("---------|--------|----------");

        // Test case 1: 7 (odd)
        num_test = 8'd7;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        // Test case 2: 10 (even)
        num_test = 8'd10;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        // Test case 3: 1 (odd)
        num_test = 8'd1;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        // Test case 4: 0 (even)
        num_test = 8'd0;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        // Test case 5: 255 (odd)
        num_test = 8'd255;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        // Test case 6: 100 (even)
        num_test = 8'd100;
        #10;
        $display("%t    |   %3d  | %s", $time, num_test, (even_flag_test ? "Even" : "Odd"));

        $display("==========================================");
        $display("Testbench completed successfully!");
        $display("==========================================");
        $finish;
    end

endmodule
