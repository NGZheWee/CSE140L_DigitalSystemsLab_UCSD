module right_shift_register #(parameter WIDTH = 16)(
    input                    clk,
    input                    enable,
    input        [WIDTH-1:0] in, // input to shift
    input                    mode, // arithmetic (0) or logical (1) shift
    output logic [WIDTH-1:0] out); // shifted input

  always @(posedge clk) begin
    // Sequential logic, requiring nonblocking (<=) assignments
    if (enable) begin
      if (mode) begin
        // Load and logical right shift (fills in 0s from the left)
        out <= {1'b0, in[WIDTH-1:1]};
      end else begin
        // Load and arithmetic right shift (preserves MSB/sign bit)
        out <= {in[WIDTH-1], in[WIDTH-1:1]};
      end
    end else begin
      // Hold (no change in output)
      out <= out;
    end
  end

endmodule
