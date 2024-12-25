module InputRegister (
    input wire clk,
    input wire reset,
    input wire [31:0] A_in,
    input wire [31:0] B_in,
    input wire cin_in,
    output reg [31:0] A_out,
    output reg [31:0] B_out,
    output reg cin_out
);

    always @(posedge clk) begin
        if (reset) begin
            A_out <= 32'b0;
            B_out <= 32'b0;
            cin_out <= 1'b0;
        end else begin
            A_out <= A_in;
            B_out <= B_in;
            cin_out <= cin_out;
        end
    end

endmodule


module OutputRegister (
    input wire clk,
    input wire reset,
    input wire [63:0] result_in,  // 64 bits for result,1 bit for cout, 1 bit overflow
    input wire cout_in, 
    input wire overflow_in,
    output reg [63:0] result_out,
    output reg cout_out,
    output reg overflow_out
);

    always @(posedge clk) begin
        if (reset) begin
            result_out <= 64'b0;
            cout_out <= 1'b0;
            overflow_out <= 1'b0;
        end else begin
            result_out <= result_in;
            cout_out <= cout_in;
            overflow_out <= overflow_in;
        end
    end

endmodule