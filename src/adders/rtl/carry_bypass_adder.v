module CarryBypassAdder #(
    parameter WIDTH = 32,  // Total width of the adder
    parameter BLOCK_SIZE= 4
)(
    input  [WIDTH-1:0] A,  
    input  [WIDTH-1:0] B, 
    input              Cin,
    output [WIDTH-1:0] Sum, 
    output             Cout, 
    output             Overflow
);

    localparam NUM_BLOCKS = (WIDTH + BLOCK_SIZE - 1) / BLOCK_SIZE;

    wire [WIDTH:0] Carry;   
    wire [NUM_BLOCKS:0] selectedCarry;     // carry signal out of mux
    wire [WIDTH-1:0] Prop;                 // Propagate signals
    wire [NUM_BLOCKS-1:0] P_block;         // Propagate for each block
    assign Carry[0] = Cin;                 // Initial carry-in
    assign selectedCarry[0] = Cin;         // Initial carry-in

    genvar i, j;
    generate
        for (i = 0; i < NUM_BLOCKS; i = i + 1) begin : BLOCKS

            // Each block contains BLOCK_SIZE Full Adders
            for (j = 0; j < BLOCK_SIZE; j = j + 1) begin : ADDERS
                    // Instantiate Full Adder
                    if(j == 0) begin       
                        full_adder FA (
                            .a(A[i * BLOCK_SIZE + j]),
                            .b(B[i * BLOCK_SIZE + j]),
                            .cin(selectedCarry[i]),
                            .sum(Sum[i * BLOCK_SIZE + j]),
                            .cout(Carry[i * BLOCK_SIZE + j+1])
                        );
                    end else begin
                        full_adder FA (
                            .a(A[i * BLOCK_SIZE + j]),
                            .b(B[i * BLOCK_SIZE + j]),
                            .cin(Carry[i * BLOCK_SIZE + j]),
                            .sum(Sum[i * BLOCK_SIZE + j]),
                            .cout(Carry[i * BLOCK_SIZE + j+1])
                        );
                    end

                    // Propagate Signal = A XOR B
                    assign Prop[i * BLOCK_SIZE + j] = A[i * BLOCK_SIZE + j] ^ B[i * BLOCK_SIZE + j];
            end

            // Block propagate: AND of all bit propagates            
            assign P_block[i] = &Prop[i * BLOCK_SIZE + BLOCK_SIZE-1:i * BLOCK_SIZE];

            // Instantiate Mux for carry bypass
            Mux2x1 carry_mux (
                .in0(Carry[i * BLOCK_SIZE + BLOCK_SIZE]), // Block Carry-out
                .in1(selectedCarry[i]),                   // Carry Bypass
                .sel(P_block[i]),                         // Select signal
                .out(selectedCarry[i+1])                  // Output to next block
            );
        end
    endgenerate

    assign Cout = selectedCarry[NUM_BLOCKS];               // Final carry-out
    assign Overflow =  (Carry[WIDTH-1] ^ Cout);

endmodule