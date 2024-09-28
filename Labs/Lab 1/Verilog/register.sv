module register # (parameter N = 8)
   (
    input                clk,   // implied input wire
    input                load,
    input                clear,
    input        [N-1:0] in,
    output logic [N-1:0] out
   );

  always_ff @(posedge clk, posedge clear) begin
    if (clear) out <= '0; 
    else if (load) out <= in; 
  end

endmodule
