// 5:1 MULTIPLEXER	(combinational 5-way switch)
module mux5 (input        d0, d1, d2, d3, d4,
             input [2:0]  s, 
             output logic y);

always_comb begin
  // Combinational logic (use =, not <=)
  case (s)
    3'b000: y = d0;
    3'b001: y = d1;
    3'b010: y = d2;
    3'b011: y = d3;
    3'b100: y = d4;
    default: y = 0; 
  endcase
end
endmodule
