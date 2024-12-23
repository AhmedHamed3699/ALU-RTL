`timescale 1ns / 1ps

module adders_tb;
    reg [31:0] a, b;
    wire [31:0] ripple_carry_sum, carry_look_ahead_sum;
    wire ripple_carry_overflow, carry_look_ahead_overflow;
    integer ripple_carry_success_count, carry_look_ahead_success_count;
    integer ripple_carry_failure_count, carry_look_ahead_failure_count;

    ripple_carry_adder RCA (
        .a(a),
        .b(b),
        .sum(ripple_carry_sum),
        .overflow(ripple_carry_overflow)
    );

    carry_look_ahead_adder CLA (
        .a(a),
        .b(b),
        .sum(carry_look_ahead_sum),
        .overflow(carry_look_ahead_overflow)
    );

    task check_test_case(input integer test_case_num, input [31:0] expected_sum, input expected_overflow);
        begin
            $display("TestCase#%0d : input A=%h and B=%h, Output Sum=%h, Overflow=%b", test_case_num, a, b, ripple_carry_sum, ripple_carry_overflow);
            if (ripple_carry_sum !== expected_sum || ripple_carry_overflow !== expected_overflow) begin
                $display("Ripple Carry:     failure :(");
                $display("Expected Sum=%h, Expected Overflow=%b", expected_sum, expected_overflow);
                ripple_carry_failure_count = ripple_carry_failure_count + 1;
            end else begin
                $display("Ripple Carry :    success :)");
                ripple_carry_success_count = ripple_carry_success_count + 1;
            end
            if (carry_look_ahead_sum !== expected_sum || carry_look_ahead_overflow !== expected_overflow) begin
                $display("Carry Look-Ahead: failure :(");
                $display("Expected Sum=%h, Expected Overflow=%b", expected_sum, expected_overflow);
                carry_look_ahead_failure_count = carry_look_ahead_failure_count + 1;
            end else begin
                $display("Carry Look-Ahead: success :)");
                carry_look_ahead_success_count = carry_look_ahead_success_count + 1;
            end
        end
    endtask

    initial begin
        ripple_carry_success_count = 0;
        ripple_carry_failure_count = 0;
        carry_look_ahead_success_count = 0;
        carry_look_ahead_failure_count = 0;

        // Test case 1: Overflow of positive numbers
        a = 32'h7FFFFFFF; // Maximum positive 32-bit integer
        b = 32'h1;         // Adding 1 should overflow
        #10;
        check_test_case(1, 32'h80000000, 1); // Expected sum = -2147483648, overflow = 1

        // Test case 2: Overflow of negative numbers
        a = 32'h80000000; // Minimum negative 32-bit integer
        b = 32'hFFFFFFFF; // Adding -1 should overflow
        #10;
        check_test_case(2, 32'h7FFFFFFF, 1); // Expected sum = 2147483647, overflow = 1

        // Test case 3: Addition of a positive and a negative number
        a = 32'h7FFFFFFF; // Positive number
        b = 32'h80000000; // Negative number
        #10;
        check_test_case(3, 32'hFFFFFFFF, 0); // Expected sum = -1, no overflow

        // Test case 4: Addition of two positive numbers
        a = 32'h1A2B3C4D;
        b = 32'h5F6E7D8C;
        #10;
        check_test_case(4, 32'h7999B9D9, 0); // Expected sum = 2051430737, no overflow

        // Test case 5: Addition of two negative numbers
        a = 32'h80000000; // Minimum negative number
        b = 32'hFFFFFFFF; // Negative number (-1)
        #10;
        check_test_case(5, 32'h7FFFFFFF, 1); // Expected sum = 2147483647, overflow = 1

        // Test case 6: Random test case 1
        a = 32'h12345678;
        b = 32'h87654321;
        #10;
        check_test_case(6, 32'h99999999, 0); // Expected sum = 257354185, no overflow

        // Test case 7: Random test case 2
        a = 32'h11111111;
        b = 32'h22222222;
        #10;
        check_test_case(7, 32'h33333333, 0); // Expected sum = 858993459, no overflow

        // Test case 8: Random test case 3
        a = 32'h00000000;
        b = 32'hFFFFFFFF;
        #10;
        check_test_case(8, 32'hFFFFFFFF, 0); // Expected sum = -1, no overflow

        // Final report
        $display("Total Successes for ripple carry:     %d", ripple_carry_success_count);
        $display("Total Successes for carry look-ahead: %d", carry_look_ahead_success_count);
        $display("Total Failures for ripple carry:      %d", ripple_carry_failure_count);
        $display("Total Failures for carry look-ahead:  %d", carry_look_ahead_failure_count);
        $finish;
    end
endmodule
