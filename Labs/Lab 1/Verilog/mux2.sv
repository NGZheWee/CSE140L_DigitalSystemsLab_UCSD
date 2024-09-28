// 2:1 mux (selector) of N-wide buses
// CSE140L
module mux2 #(parameter WIDTH = 8)
 (input        [WIDTH-1:0] d0, d1, 
  input                    s, 
  output logic [WIDTH-1:0] y);
  always_comb
  begin
    if (s) 
      y = d1; 
    else
      y = d0;
  end
  
endmodule


