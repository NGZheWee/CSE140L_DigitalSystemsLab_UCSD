// Control Memory (Read-only)
module rom(
  input       [ 4:0] addr, 
  output logic[22:0] data);
    
  logic  [22:0] mem[18];    // memory core, 23 bits wide, 18 elements deep
    
  initial begin
    for(int i=0; i<18; i++) begin
      mem[i] = '0;			// start by initializing all elements to 0, then override below
    end
// preload Microcode ROM with Roberston's multiplication algorithm
    mem[00] = 23'b00000001000000000000011;
    mem[01] = 23'b00000010000000000001100;
    mem[02] = 23'b00000011000001100000000;
    mem[03] = 23'b00101100000000000000000;
    mem[04] = 23'b01000110000000000000000;	   // 
    mem[05] = 23'b00000110000010100100000;
    mem[06] = 23'b01101001000000000000000;
    mem[07] = 23'b00001000001000000000000;
    mem[08] = 23'b10001010000000000000000;
    mem[09] = 23'b00001010001100000000000;
    mem[10] = 23'b00001011010001101010000;
    mem[11] = 23'b10000011000000000000000;
    mem[12] = 23'b01001110000000000000000;
    mem[13] = 23'b00001110000000100100000;
    mem[14] = 23'b00001111001000000000000;
    mem[15] = 23'b00010000000001101010000;
    mem[16] = 23'b00010001100000010001000;
    mem[17] = 23'b10010001000000000000000;
  end

// fill in the guts
//   out = mem(addr)	   assign data = ...      always_comb data = ...
//  data = mem(addr)	   [ ]
  always_comb data = mem[addr];
endmodule
