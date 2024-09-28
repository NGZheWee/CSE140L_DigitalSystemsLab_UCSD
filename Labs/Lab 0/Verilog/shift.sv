module shift();

logic[7:0] a, b;

a = b>>1;
a = b>>>1;	   // eqiv to >>




logic signed[7:0] a, b;

a = b>>1;	   // bring in 0 from left
a = b>>>1;	   // retain and copies sign bit

b = 10000000;

b>>1   01000000;
b>>>1  11000000;







endmodule