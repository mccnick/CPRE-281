module FA(input[3:0] X, input [3:0] Y, input Cin, output Cout, output [3:0] s);
assign {Cout, s} = X + Y + Cin;
endmodule