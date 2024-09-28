module posedge_pulse(
	input logic clk,
	input logic in_sig,
	output logic out_sig
);
	logic d0;
	always_ff@(posedge clk) begin
		d0 <= in_sig;
	end
	assign out_sig = in_sig & ~d0;
endmodule                      