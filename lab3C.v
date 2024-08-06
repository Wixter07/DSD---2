module lab3C(a0, a1, a2, a3, b0, b1, b2, b3 ,ci ,s0, s1, s2, s3, co0, co1, co2, co);
input a0, a1, a2, a3, b0, b1, b2, b3,ci;
output s0, s1, s2, s3, co0, co1, co2, co;
assign co0 = (a0 & b0)|(ci & a0)|(ci & b0);
assign s0= a0 ^ b0 ^ ci;
assign co1 = (a1 & b1)|(co0 & a1)|(co0 & b1);
assign s1= a1 ^ b1 ^ co0;
assign co2 = (a2 & b2)|(co1 & a2)|(co1 & b2);
assign s2= a2 ^ b2 ^ co1;
assign co3 = (a3 & b3)|(co2 & a3)|(co2 & b3);
assign s3= a3 ^ b3 ^ co2;
endmodule
