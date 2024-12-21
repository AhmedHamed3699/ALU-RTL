module WTM32_final (
    input clk,
    input rst,
    input [31:0] in1,
    input [31:0] in2,
    output  [63:0]  out
);

wire [31:0]A;
wire [31:0]B;
wire [63:0]product;

WTM32 B1  (A,B,product);
endmodule