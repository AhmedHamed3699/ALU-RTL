module full_adder (
    input a, 
    input b,
    input cin,
    output sum,
    output cout
);

    wire g1,p1;
    assign g1 = a & b;
    assign p1 = a ^ b;

    assign sum = p1 ^ cin;
    assign cout = g1 | (p1 & cin);

endmodule
