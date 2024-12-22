module TM32 (
    input [31:0] in1,
    input [31:0] in2,
    output [63:0] out
);

    wire [31:0] A;
    wire [31:0] B;
    wire [63:0] product;

    assign A = in1;
    assign B = in2;

    WTM32 TM (
        .A(A),
        .B(B),
        .product(product)
    );

    assign out = product;

endmodule
