// Name: Mary Erika L. Culala | Section: S14
`timescale 1ns/ 1ps

module XCulM_tb();
    reg [3:0] t_input; //input
    wire t_F;  // output
    integer i;

    XCulM dut(t_F,t_input[3], t_input[2], t_input[1], t_input[0]);

    initial
    begin
       t_input = 4'b0000;
       for(i=1;i < 17; i= i+1)
        #10 t_input = i;
    end

    initial
    begin
        $display("Name: Mary Erika L. Culala, Function: A(CD + B) + BC', Gate-Level Modeling");
        $monitor("time %0d input=%b%b%b%b out F=%b",$time,t_input[3], t_input[2], t_input[1], t_input[0], t_F);
        $dumpfile("XCulM.vcd");
        $dumpvars();
    end
endmodule