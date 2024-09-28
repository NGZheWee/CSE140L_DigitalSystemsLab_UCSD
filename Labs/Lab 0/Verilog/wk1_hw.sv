
/*	    1-bit Half adder    
       inputs (1-bit each) are A and B (addends)
       outputs (1-bit each) are C_o (carry out) and S (sum)
*/


module HalfAdder(
  input        A, B,
  output logic C_o, S);

// behavioral description
  always_comb {C_o, S} = A+B;

// structural description
  assign S = A ^ B;    // exclusive OR (parity)
  assign C_o = A & B;  // logical AND

endmodule		   


module FullAdder(
  input        A, B, C_i,
  output logic C_o, S);

// behavioral description
  always_comb {C_o, S} = A+B+C_i;

// structural description
  assign S = A ^ B ^ C_i;    // exclusive OR (parity)
  assign S = ^{A,B,C_i}		 // same thing
  assign C_o = A & B | B & C_i | A & C_i;  // majority
  assign C_o = (A & (B | C_i)) | (B & C_i);	 // maj. 

endmodule		   


module Comparator(
  input[n-1:0] A, B,
  output logic OUT);

  logic[n:0] DIFF;
// behavioral description
  assign OUT = A==B;

// structural description
  always_comb begin
    DIFF = A-B;
	OUT  = DIFF? 1 : 0; 
  end

  always_comb begin
    DIFF = A^B;    
	OUT  = DIFF? 1 : 0; 
  end

endmodule



module Mux4(
  input [n-1:0] A,B,C,D,
  input [  1:0] SEL,
  output[n-1:0]	OUT);

  always_comb case(SEL)
	0: OUT = A;
	1: OUT = B;
	2: OUT = C;
	3: OUT = D;
  endcase

endmodule