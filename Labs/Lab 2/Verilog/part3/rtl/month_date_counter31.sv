module month_date_counter31 
#(
	parameter N=31
)(
  input clk, rst, en,
  output logic[5:0] count,
  output logic      zero
);

	negedge_pulse negedge_pulse(
		.clk(clk), .rst(rst), .in_sig(count[4]), .out_sig(zero)
	);

	always_ff @(posedge clk) begin
		if(rst) begin
			count <= 1;
		end
		else if(en) begin
			if(count < 31)begin
				count <= count + 1;
			end
			else begin
				count <= 1;
			end
		end
	end
	

endmodule