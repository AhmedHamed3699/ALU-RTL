module ripple_carry_adder (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output overflow
);

    wire [31:0] carry;

    full_adder FA0 (
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),
        .sum(sum[0]),
        .cout(carry[0])
    );

    genvar i;
    generate
        for (i = 1; i < 32; i = i + 1) begin : ripple
            full_adder FA (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i-1]),
                .sum(sum[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    assign overflow = (a[31] & b[31] & ~sum[31]) | (~a[31] & ~b[31] & sum[31]);

endmodule
