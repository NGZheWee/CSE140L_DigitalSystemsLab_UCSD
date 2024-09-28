// micro-program counter, asynchronous reset
// Active high load
// Active low increment
module upcreg(
  input              clk,
  input              reset,
  input              load_incr,
  input [4:0]        upc_next,
  output logic [4:0] upc);

  always_ff @ (posedge clk, posedge reset) begin
    if (reset) begin
      upc <= 5'b0; // Reset the micro-program counter to 0
    end
    else if (load_incr) begin
      upc <= upc_next; // Load the next micro-program counter value
    end
    else begin
      upc <= upc + 5'b1; // Increment the micro-program counter
    end
  end
endmodule