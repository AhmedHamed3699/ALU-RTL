module CarrySelectAdder (
  input [31:0] A,
  input [31:0] B,
  input Cin,
  output [31:0] Sum,
  output Cout,
  output Overflow
);
    wire [31:0] sumWithCin0;         //sum with cin=1'b0
    wire [31:0] sumWithCin1;         //sum with cin=1'b1
    wire [31:0] carry0;       //carries of summation with cin=0
    wire [31:0] carry1;       //carries of summation with cin=1

    genvar i;

    generate 
        for (i=0;i<32;i=i+1) begin :oneBitAdders

        full_adder FA0 (
         .a(A[i]),
         .b(B[i]),
         .cin((i==0)?1'b0:carry0[i-1]),
         .sum(sumWithCin0[i]),
         .cout(carry0[i])
        );

        full_adder FA1 (
         .a(A[i]),
         .b(B[i]),
         .cin((i==0)?1'b1:carry1[i-1]),
         .sum(sumWithCin1[i]),
         .cout(carry1[i])
        );    

        end

    endgenerate

    assign Cout = (Cin) ? carry1[31] : carry0[31];

    assign Sum = (Cin) ? sumWithCin1 : sumWithCin0;     

    // Overflow occurs if the sign of A and B matches, but the sign of Sum is different
    assign Overflow = (A[31] ^ B[31]) ? 0 : (A[31] ^ Sum[31]);

endmodule