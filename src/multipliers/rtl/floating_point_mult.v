
module FloatingPointMultiplier (
    input [31:0] A,
    input [31:0] B,
    output [31:0] Product
);
    
    reg [23:0] accumA, accumB;
    wire [47:0] accumResult;
    reg [22:0] finalAccum;
    reg [7:0] expA, expB;
    reg [8:0] tempExp;
    reg tempSign;

    multiplier_signed_star intra_multiplier (
        .a({8'b0, accumA}),     
        .b({8'b0, accumB}),     
        .product(accumResult)        
    );

    always @(*) begin
            accumA = {1'b1, A[22:0]};
            accumB = {1'b1, B[22:0]};

            expA = A[30:23];
            expB = B[30:23];

            tempSign = A[31] ^ B[31];

            if (A[30:0] == 31'd0 || B[30:0] == 31'd0) begin
                finalAccum = 23'd0;
                tempExp = 9'd0;
                tempSign = 1'b0;
            end else begin
                tempExp = expB + expA - 8'b01111111 + accumResult[47];
                finalAccum = (accumResult[47] == 1'b1) ? accumResult[46:24] + accumResult[23] : accumResult[45:23] + accumResult[22];
            end
    end
    
    assign Product[31] = tempSign;
    assign Product[30:23] = tempExp[7:0];
    assign Product[22:0] = finalAccum;

endmodule

