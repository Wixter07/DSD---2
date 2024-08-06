`timescale 1ns/1ns
`include "lab3C.v"
module lab3C_tb();
reg a0, a1, a2, a3, b0, b1, b2, b3,ci;
wire s0, s1, s2, s3, co0, co1, co2, co;
lab3C ab(a0, a1, a2, a3, b0, b1, b2, b3, ci, s0, s1, s2, s3, co0, co1, co2, co);
initial
begin
	$dumpfile("lab3C_tb.vcd");
	$dumpvars(0, lab3C_tb);
	a0=	1'b1; a1=1'b0; a2=1'b1; a3=1'b1; b0=1'b1; b1=1'b1; b2=1'b0; b3=1'b1; ci = 1'b0;
	#30;
	a0=	1'b0; a1=1'b0; a2=1'b0; a3=1'b1; b0=1'b1; b1=1'b1; b2=1'b1; b3=1'b0; ci = 1'b0;
	#30;
	a0=	1'b0; a1=1'b0; a2=1'b1; a3=1'b1; b0=1'b0; b1=1'b0; b2=1'b0; b3=1'b1; ci = 1'b0;
	#30;
	a0=	1'b0; a1=1'b0; a2=1'b1; a3=1'b1; b0=1'b1; b1=1'b0; b2=1'b0; b3=1'b1; ci = 1'b0;
	#30;
	$display("Test complete");
end
endmodule
	
