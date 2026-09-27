// ============================================================================
// Testbench for Simple_ALU Module
// Tests all ALU operations: ADD, SUBTRACT, AND, OR
// ============================================================================

`timescale 1ns/1ps

module tb_simple_alu();

    // Testbench signals
    reg [7:0] a_test;
    reg [7:0] b_test;
    reg [1:0] op_test;
    wire [8:0] result_test;
    wire zero_flag_test;

    // Instantiate the ALU module
    simple_alu uut (
        .a(a_test),
        .b(b_test),
        .op(op_test),
        .result(result_test),
        .zero_flag(zero_flag_test)
    );

    // Test stimuli
    initial begin
        $display("========================================================");
        $display("  Simple 8-bit ALU Testbench");
        $display("========================================================");
        $display("Time(ns) |  A  |  B  | Op | Operation | Result | Zero");
        $display("---------|-----|-----|----|-----------|---------|----- ");

        // Test ADD operation (op = 00)
        a_test = 8'd10;
        b_test = 8'd20;
        op_test = 2'b00;
        #10;
        $display("%t    |  %2d |  %2d | 00 |    ADD    |  %3d   |  %d", 
                 $time, a_test, b_test, result_test, zero_flag_test);

        // Test SUBTRACT operation (op = 01)
        a_test = 8'd50;
        b_test = 8'd30;
        op_test = 2'b01;
        #10;
        $display("%t    |  %2d |  %2d | 01 |  SUBTRACT |  %3d   |  %d", 
                 $time, a_test, b_test, result_test, zero_flag_test);

        // Test AND operation (op = 10)
        a_test = 8'b11110000;  // 240
        b_test = 8'b10101010;  // 170
        op_test = 2'b10;
        #10;
        $display("%t    | %3d | %3d | 10 |    AND    |  %3d   |  %d", 
                 $time, a_test, b_test, result_test, zero_flag_test);

        // Test OR operation (op = 11)
        a_test = 8'b11000000;  // 192
        b_test = 8'b00001111;  // 15
        op_test = 2'b11;
        #10;
        $display("%t    | %3d | %3d | 11 |    OR     |  %3d   |  %d", 
                 $time, a_test, b_test, result_test, zero_flag_test);

        // Test zero flag (result = 0)
        a_test = 8'd0;
        b_test = 8'd0;
        op_test = 2'b00;
        #10;
        $display("%t    |  %2d |  %2d | 00 |    ADD    |  %3d   |  %d (Zero flag)", 
                 $time, a_test, b_test, result_test, zero_flag_test);

        $display("========================================================");
        $display("Testbench completed successfully!");
        $display("========================================================");
        $finish;
    end

endmodule
