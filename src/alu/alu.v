module ALU (
    input wire clk,
    input wire reset,
    input wire [31:0] A,
    input wire [31:0] B,
    input wire op_select, //  0: add_floating, 1: mult_floating
    input wire cin,             
    output reg [63:0] result,
    output reg overflow,
    output reg cout             
);

    wire [63:0] mul_int_result;
    wire [31:0] A_in_reg, B_in_reg,add_float_result, add_int_result, mul_float_result;
    wire cin_in_reg;
    wire cout_integer, overflow_integer;
    wire cout_floating, overflow_floating;
    reg [63:0] result_reg_in;
    reg cout_in_rg, overflow_in_reg;
    wire cout_out_reg, overflow_out_reg;
    wire [63:0] result_out_reg;
    
    FloatingPointAdder floating_adder (
        .A(A_in_reg),
        .B(B_in_reg),
        .Sum(add_float_result)       
    );

    FloatingPointMultiplier floating_multiplier (
        .A(A_in_reg),
        .B(B_in_reg),
        .Product(mul_float_result)
    );


    InputRegister input_reg (
        .clk(clk),
        .reset(reset),
        .A_in(A),
        .B_in(B),
        .cin_in(cin),
        .A_out(A_in_reg),
        .B_out(B_in_reg),
        .cin_out(cin_in_reg)
    );

    OutputRegister output_reg (
        .clk(clk),
        .reset(reset),
        .result_in(result_reg_in),
        .cout_in(cout_in_rg),
        .overflow_in(overflow_in_reg),
        .result_out(result_out_reg),
        .overflow_out(overflow_out_reg),
        .cout_out(cout_out_reg)
    );

    always @(posedge clk) begin
        if (reset) begin
            result <= 64'b0;
            overflow <= 1'b0;
            cout <= 1'b0;
        end else begin
            case (op_select)
                2'b00: begin
                    result_reg_in <= {{32{add_int_result[31]}},add_int_result};
                    overflow_in_reg <= overflow_integer;
                    cout_in_rg <= cout_integer;
                end
                2'b01: begin
                    result_reg_in <= {{32{mul_float_result[31]}}, mul_float_result};
                    overflow_in_reg <= 1'b0;
                    cout_in_rg <= 1'b0; 
                end
                2'b10: begin
                    result_reg_in <= {{32{add_float_result[31]}}, add_float_result};
                    overflow_in_reg <= overflow_floating;
                    cout_in_rg <= cout_floating;
                end
                2'b11: begin
                    result_reg_in <= mul_int_result;
                    overflow_in_reg <= 1'b0;
                    cout_in_rg <= 1'b0; 
                end
            endcase
            result <= result_out_reg;
            overflow <= overflow_out_reg;
            cout <= cout_out_reg;
        end
    end

endmodule