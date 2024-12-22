`timescale 1ns / 1ps

module tb_multiplier_signed_star;

    reg signed [31:0] a;
    reg signed [31:0] b;

    wire signed [63:0] product;

    multiplier_signed_star uut (
        .a(a),
        .b(b),
        .product(product)
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
        // TestCase 1: Multiplication of a positive and a negative number
        a = 32'sd10;  // Positive
        b = -32'sd5;  // Negative
        #10;
        report_result(a, b, product, (product == -64'd50), 1);

        // TestCase 2: Multiplication of two positive numbers
        a = 32'sd15;
        b = 32'sd20;
        #10;
        report_result(a, b, product, (product == 64'd300), 2);

        // TestCase 3: Multiplication of two negative numbers
        a = -32'sd5;
        b = -32'sd4;
        #10;
        report_result(a, b, product, (product == 64'd20), 3);

        // TestCase 4: Multiplication of a negative and a positive number
        a = -32'sd8;
        b = 32'sd3;
        #10;
        report_result(a, b, product, (product == -64'd24), 4);

        // TestCase 5: Multiplication by zero
        a = 32'sd0;
        b = 32'sd7;
        #10;
        report_result(a, b, product, (product == 64'd0), 5);

        // TestCase 6: Multiplication by one
        a = 32'sd1;
        b = -32'sd9;
        #10;
        report_result(a, b, product, (product == -64'd9), 6);

        // TestCase 7: Random test case 1
        a = 32'sd17;
        b = -32'sd3;
        #10;
        report_result(a, b, product, (product == -64'd51), 7);

        // TestCase 8: Random test case 2
        a = -32'sd10;
        b = 32'sd9;
        #10;
        report_result(a, b, product, (product == -64'd90), 8);

        // Final report
        $display("Total Success Test Cases: %d", success_count);
        $display("Total Failure Test Cases: %d", failure_count);
        $finish;
    end

endmodule
