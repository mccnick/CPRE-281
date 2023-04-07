module lab3step3 (A, F, C, G, W);
input F, C, G, W;
output A;

assign A = (~F & G & W)|(~F & C & G)|(F & ~G & ~W)|(F & ~C & ~G);

endmodule