module tb_TM32;

    reg [31:0] in1;
    reg [31:0] in2;

    wire [63:0] out;

    TM32 uut (
        .clk(clk),
        .rst(rst),
        .in1(in1),
        .in2(in2),
        .out(out)
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
        in1 = 32'd10; in2 = 32'd-5; // Expected output: -50
        #10;
        report_result(in1, in2, out,(out == in1 * in2) ,1);

        // Test Case 2: Multiplication of two positive numbers
        in1 = 32'd20; in2 = 32'd15; // Expected output: 300
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 2);

        // Test Case 3: Multiplication of two negative numbers
        in1 = 32'd-5; in2 = 32'd-6; // Expected output: 30
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 3);

        // Test Case 4: Multiplication of a negative and a positive number
        in1 = 32'd-100; in2 = 32'd25; // Expected output: -2500
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 4);

        // Test Case 5: Multiplication by zero
        in1 = 32'd0; in2 = 32'd50; // Expected output: 0
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 5);

        // Test Case 6: Multiplication by one
        in1 = 32'd1; in2 = 32'd100; // Expected output: 100
        #10;
        report_result(in1, in2, out,(out == in1 * in2), 6);

        // Test Case 7: Additional random test case 1
        in1 = 32'd-123; in2 = 32'd456; // Expected output: -56148
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 7);

        // Test Case 8: Additional random test case 2
        in1 = 32'd1000; in2 = 32'd-25; // Expected output: -25000
        #10;
        report_result(in1, in2, out, (out == in1 * in2), 8);

        // End simulation
        $display("Total Test Cases: %0d Successes, %0d Failures", success_count, failure_count);
        $stop;
    end
