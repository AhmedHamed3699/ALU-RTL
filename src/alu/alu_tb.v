module tb_ALU;
    reg clk;
    reg reset;
    reg [31:0] A, B;
    reg [2:0] op_select; // 0: Add_float, 1: Mul_float, 2: Add_int, 3: Mul_int
    reg cin;
    wire [63:0] result;
    wire overflow;
    wire cout;

    ALU DUT (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .op_select(op_select),
        .cin(cin),
        .result(result),
        .overflow(overflow),
        .cout(cout)
    );

    integer success_tcs = 0;
    integer failure_tcs = 0;
    integer test_case_number = 0;

    task check_result;
        input [31:0] A;
        input [31:0] B;
        input [63:0] expected_result;
        input [63:0] actual_result;
        input expected_overflow;
        input actual_overflow;
        input expected_cout;
        input actual_cout;

        begin
            if (actual_result == expected_result && actual_overflow == expected_overflow && actual_cout == expected_cout) begin
                success_tcs = success_tcs + 1;
                $display("TestCase#%0d: success", test_case_number);
            end else begin
                failure_tcs = failure_tcs + 1;
                $display("TestCase#%0d: failed", test_case_number);
            end
            $display("Operation OpSelect=%d, Input A=%h, B=%h, Result=%h | Expected Result=%h, Overflow=%b, Cout=%b", 
                    op_select, A, B, actual_result, expected_result, actual_overflow, actual_cout);
        end
    endtask
    function [63:0] create_fp;
        input sign;
        input [7:0] exp;
        input [22:0] mantissa;
        begin
            create_fp = {{32{sign}}, sign, exp, mantissa};
        end
    endfunction

    initial begin
        clk = 0;
        forever #20 clk = ~clk; // 34ns clock period
    end

    initial begin
        reset = 1;
        #40;
        reset = 0;
        


        $display("Total Test Cases: %0d, Success: %0d, Failures: %0d", 
                success_tcs + failure_tcs, success_tcs, failure_tcs);
        $finish;
    end
endmodule