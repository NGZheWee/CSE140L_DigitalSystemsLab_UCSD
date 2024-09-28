// behavioral model of a full adder
module FullAdder(
  input         A, B, C_i,
  output logic  C_o, S
);


// fill in the guts:
//   C_o*2 + S = A+B+Ci


// behavioral, using concat. operator
//   {C_o,S} creates a single 2-bit vector of
//   carry out followed by sum
  always_comb {C_o,S} =	A + B + C_i;		// 'b11 = 1+1+1

// structural
/*  always_comb C_o = 
    A&B | B&C_i | A&C_i  ; 	  // maj.

  always_comb S = A ^ B ^ C_i;   // parity
*/
endmodule
/*
				   logical	 bitwise
					A||B  =  A|B  

  logic[7:0] A, B;
  logic[7:0] C;

  C = A||B;   C[0] = 0 iff A=B=0   
  C[7:1] = 7'bz;     0  1  x   z

  C = 8'bzzzzzz0   8'bzzzzzz1

  C = A|B;   C[i] = A[i] | B[i]   


*/