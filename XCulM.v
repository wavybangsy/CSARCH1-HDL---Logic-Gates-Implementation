// Name: Mary Erika L. Culala | Section: S14
`timescale 1ns/ 1ps

module XCulM(F,A,B,C,D);
    input A,B,C,D;
    output F; 
    wire w1, w2, w3, w4, w5; 

    and (w1, C, D);
    or (w2, B, w1);
    and (w3, A, w2);
    not (w4, C);
    and (w5, B, w4);
    or (F, w3, w5);
endmodule