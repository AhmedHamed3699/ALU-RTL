module carry_look_ahead_adder (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output overflow
);

    wire [31:0] g, p, carry;

    assign g = a & b;
    assign p = a ^ b;

    assign carry[0] = 1'b0;

    genvar i;
    generate
        for (i = 1; i < 32; i = i + 1) begin : carry_look_ahead
            assign carry[i] = g[i-1] | (p[i-1] & carry[i-1]);
        end
    endgenerate

    assign sum = p ^ carry;
    assign overflow = (a[31] & b[31] & ~sum[31]) | (~a[31] & ~b[31] & sum[31]);

endmodule
