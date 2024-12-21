module full_adder
(input a,input b, input c,output sum,output carry);

wire g1,p1;
assign g1=a & b;
assign p1=a ^ b;

assign sum=p1 ^ c;
assign carry = g1 | (p1&c);

endmodule
