// test bench for full adder
module FullAdder_TB();

// drivers into DUT
logic A, B_in, C_i;
// outputs from DUT
wire C_o, Sum;

// instantiate device under test (DUT)
FullAdder FA1(
  .A   (A),
  .B   (B_in),
  .C_i (C_i),
  .C_o (C_o),
  .S   (Sum)
);

// loop will run 8 times, through all combinations 
//   of the bottom 3 bits of counter i 
initial begin
  for(int i=0; i<8; i++) begin
	 A    = i[0];
	 B_in = i[1];
	 C_i  = i[2];
	 #1 $display(A,,B_in,,C_i,,,,C_o,Sum);
  end
  $stop; 
end



endmodule 
