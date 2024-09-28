module falling_edge_detector(
	input logic clk,
	input logic rst,
	input logic signal,
	output logic falling_edge
);
	logic my_buffer;
	
	always_ff@(posedge clk) begin
		if(rst)begin
			my_buffer <= 1'b0;
		end
		else begin
			my_buffer <= signal;
		end
	end
	
	assign falling_edge = my_buffer & (~signal);
	
endmodule