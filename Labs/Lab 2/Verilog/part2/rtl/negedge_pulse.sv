module negedge_pulse(
	input logic clk, rst, in_sig,
	output logic out_sig
);
	logic d0;
	// 1 stage ff for falling edge detection
	always_ff@(posedge clk) begin
		if(rst)begin
			d0 <= 1'b0;
		end
		else begin
			d0 <= in_sig;
		end
	end
	// output is d0 & (~in_sig)
	assign out_sig = d0 & (~in_sig);
	
endmodule