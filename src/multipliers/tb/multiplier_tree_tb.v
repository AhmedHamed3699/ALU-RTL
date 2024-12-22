module tb_TM32;

    reg [31:0] in1;
    reg [31:0] in2;
    wire [63:0] out;

    WTM32 uut (
        .op1(in1),
        .op2(in2),
        .result(out)
    );

    integer success_count = 0;
    integer failure_count = 0;

    task report_result(input [31:0] a, input [31:0] b, input [63:0] product, input success, input [3:0] test_case_number);
        begin
            if (success) begin
                $display("TestCase#%0d: success", test_case_number);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input A = %d, B = %d, Output = %d", test_case_number, a, b, product);
                failure_count = failure_count + 1;
            end
        end
    endtask

    initial begin
        // Test Case 1: Multiplication of a positive and a negative number
        in1 = 32'd10; in2 = -32'd5; // Expected output: -50
        #10;
        report_result(in1, in2, out, (out == -64'd50), 1);  // Correct format for negative value

        // Test Case 2: Multiplication of two positive numbers
        in1 = 32'd20; in2 = 32'd15; // Expected output: 300
        #10;
        report_result(in1, in2, out, (out == 64'd300), 2);

        // Test Case 3: Multiplication of two negative numbers
        in1 = -32'd5; in2 = -32'd6; // Expected output: 30
        #10;
        report_result(in1, in2, out, (out == 64'd30), 3);

        // Test Case 4: Multiplication of a negative and a positive number
        in1 = -32'd100; in2 = 32'd25; // Expected output: -2500
        #10;
        report_result(in1, in2, out, (out == -64'd2500), 4);  // Correct format for negative value

        // Test Case 5: Multiplication by zero
        in1 = 32'd0; in2 = 32'd50; // Expected output: 0
        #10;
        report_result(in1, in2, out, (out == 64'd0), 5);

        // Test Case 6: Multiplication by one
        in1 = 32'd1; in2 = 32'd100; // Expected output: 100
        #10;
        report_result(in1, in2, out, (out == 64'd100), 6);

        // Test Case 7: Additional random test case 1
        in1 = -32'd123; in2 = 32'd456; // Expected output: -56088
        #10;
        report_result(in1, in2, out, (out == -64'd56088), 7);  // Correct format for negative value

        // Test Case 8: Additional random test case 2
        in1 = 32'd1000; in2 = -32'd25; // Expected output: -25000
        #10;
        report_result(in1, in2, out, (out == -64'd25000), 8);  // Correct format for negative value

        // End simulation
        $display("Total Test Cases: %0d Successes, %0d Failures", success_count, failure_count);
        $stop;
    end

endmodule
