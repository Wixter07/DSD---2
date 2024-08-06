`timescale 1ns/1ns
`include "lab3B.v"
module lab3B_tb(); 
reg A,B,Cin;
wire sum,carry;
lab3B ab(A,B,Cin,sum,carry);
always@(A or B or Cin);
initial
begin
$dumpfile("lab3B_tb.vcd");
$dumpvars(0, lab3B_tb);
A=3'b0; B=3'b0; Cin=3'b0;
#20;
A=3'b0;B=3'b0;Cin=3'b0;
#20;
A=3'b0;B=3'b0;Cin=3'b1;
#20;
A=3'b0;B=3'b0;Cin=3'b1;
#20;
A=3'b0;B=3'b1;Cin=3'b0;
#20;
A=3'b0;B=3'b1;Cin=3'b0;
#20;
A=3'b0;B=3'b1;Cin=3'b1;
#20;
A=3'b0;B=3'b1;Cin=3'b1;
#20;
A=3'b1;B=3'b0;Cin=3'b0;
#20;
A=3'b1;B=3'b0;Cin=3'b0;
#20;
A=3'b1;B=3'b0;Cin=3'b1;
#20;
A=3'b1;B=3'b0;Cin=3'b1;
#20;
A=3'b1;B=3'b1;Cin=3'b0;
#20;
A=3'b0;B=3'b1;Cin=3'b0;
#20;
A=3'b1;B=3'b1;Cin=3'b1;
#20;
A=3'b1;B=3'b1;Cin=3'b1;
#20;
$display("Test Complete");
end
endmodule
