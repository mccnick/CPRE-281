module lab4(A, F, C, G, W);
input F, C, G, W;
output A;
reg A;

always @(F or C or G or W)
begin
	case({F, C, G, W})
	4'b0000: A =0;
	4'b0001: A =0;
	4'b0010: A =0;
	4'b0011: A =1;
	4'b0100: A =0;
	4'b0101: A =0;
	4'b0110: A =1;
	4'b0111: A =1;
	4'b1000: A =1;
	4'b1001: A =1;
	4'b1010: A =0;
	4'b1011: A =0;
	4'b1100: A =1;
	4'b1101: A =0;
	4'b1110: A =0;
	4'b1111: A =0;
	
	
	
	
	
	
	
	
	endcase
end
endmodule