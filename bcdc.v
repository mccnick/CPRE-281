module bcdconverter(N2X3, N2X2, N2X1, N2X0, N1X3, N1X2, N1X1, N1X0, s0, s1, s2, s3, c0); 
input c0, s3, s2, s1, s0; 
output N2X3, N2X2, N2X1, N2X0, N1X3, N1X2, N1X1, N1X0; 
 
	assign N2X3 = 0; 
	assign N2X2 = 0; 
	assign N2X1 = (c0 & s2) | (c0 & s3); 
	assign N2X0 = (~c0 & s3 & s1) | (~c0 & s3 & s2) | (s3 & s2 & s1) | (c0 & ~s3 & ~s2); 

	assign N1X3 = (~c0 & s3 & ~s2 & ~s1) | (c0 & ~s3 & ~s2 & s1) | (c0 & s3 & s2 & ~s1); 
	assign N1X2 = (~c0 & ~s3 & s2) | (~c0 & s2 & s1) | (c0 & ~s2 & ~s1) | (c0 & s3 & ~s2); 
	assign N1X1 = (~c0 & ~s3 & s1) |  (~s3 & s2 & s1) | (~ c0 & s3 & s2 & ~s1) | (c0 & ~s3 & ~ s2 & ~s1) | (c0 & s3 & ~s2 & s1); 
	assign N1X0 = s0; 
 
endmodule