module Mux2x1 (
    input in0,       
    input in1,       
    input sel,    
    output out      
);

    assign out = sel ? in1 : in0;   
    
endmodule
