module lab3step1qpf(A, C, G, W);
input C, G, W;
output A; 

wire notg, notw, notc;


not(notg, G);
not(notw, W);
not(notc, C);

or(inst5, C, W, notg );

or(inst4, notw, G, notc);


and(A, inst4, inst5 );

//not(D, C); // not c, stored in d
//not(X, W); // not w, stored in x
//not(H, G); // not g, stored in h
//or(D, X, G); // or G, stored x, stored d
//or(H, C, W); // or C, or W, stored h
//and(A, D, H);/ 


endmodule