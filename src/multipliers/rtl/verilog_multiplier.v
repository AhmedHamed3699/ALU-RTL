module multiplier_signed_star (
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [63:0] product 
);
    assign product = a * b;
endmodule
