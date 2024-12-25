//in IEEE standard number=(-1)^sign * 2^(exponent) * (1.mantissa)
//IEEE standard to get the sum of two numbers :
//1- convert to binary
//2- get the sign,exponent and the mantissa of each number
//3- get the exponent diffrence 
//4- allign the mantissa of the smallest exponent number 
//by shifting by the exponent differnce 
//5- add the two mantissas if both have the same sign else subtract
//6- normalize the Sum to ensure that the sum of mantissas is still in the format of 1.xxxx
//7- reassmble component(sign,exponent,mantissa)

module FloatingPointAdder (
  input signed  [31:0] A,
  input signed [31:0] B,
  output signed [31:0] Sum
);
  reg sign_A, sign_B;       //0->positive      //1-> negative
  reg Sum_sign;            
  
  reg [7:0] exponent_A, exponent_B;
  reg signed [7:0] Sum_exponent;

  reg signed [22:0] mantissa_A, mantissa_B; //
  reg signed [22:0] mantissa_Sum;

  reg signed [31:0] mantissa_A_32, mantissa_B_32,mantissa_A_32neg,mantissa_B_32neg;
  wire signed [31:0] mantissa_Sum_add, mantissa_Sum_subAB,mantissa_Sum_subBA;
  
  reg [21:0] temp_mantissa;
  integer i;
  wire cout,cin;
  assign cin=0;
  reg signed [7:0] exponent_diff;

   //module instantiation
   CarryBypassAdder fraction_add(
        .A(mantissa_A_32),
        .B(mantissa_B_32),
        .Cin(cin),
        .Sum(mantissa_Sum_add),
        .Cout(cout),
        .Overflow()
      );
  CarryBypassAdder fraction_sub12(
       .A(mantissa_A_32),
       .B(mantissa_B_32neg),
       .Cin(cin),
       .Sum(mantissa_Sum_sub12),
       .Cout(cout)
     );
  CarryBypassAdder fraction_sub21(
       .A(mantissa_A_32neg),
       .B(mantissa_B_32),
       .Cin(cin),
       .Sum(mantissa_Sum_sub21),
       .Cout(cout)
     );

  always @* begin
     sign_A = A[31];
     sign_B = B[31];
     exponent_A = A[30:23];
     exponent_B = B[30:23];
     mantissa_A =  A[22:0];
     mantissa_B =  B[22:0];

    exponent_diff = exponent_A - exponent_B;
    if (exponent_diff < 0) begin
      exponent_diff = -exponent_diff;
      mantissa_A = $signed(mantissa_A) >>> exponent_diff;
      Sum_exponent = exponent_B;
      Sum_sign = sign_B;
    end else begin
      mantissa_B = $signed(mantissa_B) >>> exponent_diff;
      Sum_exponent = exponent_A;
      Sum_sign = sign_A;
    end
	 
   mantissa_A_32 = { {9{mantissa_A[22]}}, mantissa_A };
   mantissa_B_32 = { {9{mantissa_B[22]}}, mantissa_B };

	 if (sign_A == sign_B) begin
      mantissa_Sum=mantissa_Sum_add[22:0];

    end else begin
      if (mantissa_A > mantissa_B) begin
        mantissa_B_32neg= -mantissa_B_32;
        mantissa_Sum=mantissa_Sum_subAB[22:0];
        Sum_sign = sign_A;
      end else begin
        mantissa_A_32neg= -mantissa_A_32;
        mantissa_Sum=mantissa_Sum_subBA[22:0];
        Sum_sign = sign_B;
      end
        end
	 temp_mantissa=mantissa_Sum[21:0];
      if (mantissa_Sum==23'b0) begin
        temp_mantissa=22'b0;
      end
      else begin
        for(i = 0; i < 22; i = i + 1) begin
            if(temp_mantissa[21]==0) begin
            temp_mantissa = temp_mantissa <<1;
            Sum_exponent =Sum_exponent-1;
            end
        end
      end
    mantissa_Sum[21:0]=temp_mantissa;
	 
  end

  // Construct the Sum
  assign Sum = {Sum_sign, Sum_exponent, mantissa_Sum};

endmodule