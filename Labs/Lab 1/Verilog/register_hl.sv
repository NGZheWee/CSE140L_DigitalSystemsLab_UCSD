module register_hl # (parameter N = 16)
 (
  input                clk,
  input [N/2-1:0]      inh,
  input [N/2-1:0]      inl,
  input                loadh,
  input                loadl,
  input                clear,
  output logic[N-1:0]  out
);

  always_ff @(posedge clk, posedge clear) begin
    if (clear) begin
      out[N-1:N/2] <= '0;
      out[N/2-1:0] <= '0;
    end
    else begin
      if (loadh) out[N-1:N/2] <= inh;
      else out[N-1:N/2] <= out[N-1:N/2];

      if (loadl) out[N/2-1:0] <= inl;
      else out[N/2-1:0] <= out[N/2-1:0];
    end
  end

endmodule
