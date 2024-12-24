`timescale 1ns/1ps

module CarrySelectAdder_tb;

    // Inputs
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;

    // Outputs
    wire [31:0] Sum;
    wire Cout;
    wire Overflow;

    // Instantiate the CarryBypassAdder
    CarrySelectAdder #(
    ) UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout),
        .Overflow(Overflow)
    );

    // Variables for tracking success and failure counts
    integer success_count = 0;
    integer failure_count = 0;

    // Task to run a test case
    task run_test;
        input [31:0] test_A;
        input [31:0] test_B;
        input test_Cin;
        input [31:0] expected_Sum;
        input expected_Cout;
        input expected_Overflow;
        input integer test_case_num;

        begin
            // Apply inputs
            A = test_A;
            B = test_B;
            Cin = test_Cin;

            // Wait for propagation delay
            #10;

            // Check results
            if (Sum === expected_Sum && Cout === expected_Cout && Overflow === expected_Overflow) begin
                $display("TestCase#%0d: success", test_case_num);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input A=%0d, B=%0d, Cin=%0d. Output Sum=%0d, Cout=%0d, Overflow=%0d",
                         test_case_num, test_A, test_B, test_Cin, Sum, Cout, Overflow);
                failure_count = failure_count + 1;
            end
        end
    endtask

    // Testbench procedure
    initial begin
        $display("Starting CarryBypassAdder Testbench...");

        // Test Case 1: Overflow of positive numbers
        run_test(32'h7FFFFFFF, 32'h00000001, 0, 32'h80000000, 0, 1, 1);

        // Test Case 2: Overflow of negative numbers
        run_test(32'h80000000, 32'hFFFFFFFF, 0, 32'h7FFFFFFF, 1, 1, 2);

        // Test Case 3: Addition of a positive and a negative number
        run_test(32'h7FFFFFFF, 32'h80000000, 0, 32'hFFFFFFFF, 0, 0, 3);

        // Test Case 4: Addition of two positive numbers
        run_test(32'h00000002, 32'h00000003, 0, 32'h00000005, 0, 0, 4);

        // Test Case 5: Addition of two negative numbers
        run_test(32'hFFFFFFFF, 32'hFFFFFFFF, 0, 32'hFFFFFFFE, 1, 0, 5);

        // Test Case 6: Random test case
        run_test(32'h12345678, 32'h87654321, 0, 32'h99999999, 0, 0, 6);

        // Test Case 7: Random test case
        run_test(32'hAAAAAAAA, 32'h55555555, 1, 32'h00000000, 1, 0, 7);

        // Test Case 8: Random test case
        run_test(32'h00000000, 32'hFFFFFFFF, 0, 32'hFFFFFFFF, 0, 0, 8);

        // Report total results
        $display("Testbench completed. Total successes: %0d, Total failures: %0d", success_count, failure_count);

        // Finish simulation
        $finish;
    end
endmodule
