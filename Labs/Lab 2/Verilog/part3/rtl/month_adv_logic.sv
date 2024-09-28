module month_adv_logic(
  input logic clk, rst, Monthadv,
  input logic pospulse_28, pospulse_30, pospulse_31,
  output logic[3:0] Month,
  output logic rst_counter28, rst_counter30, rst_counter31
);

  
	always_ff@(posedge clk) begin
		if(rst)begin
			Month <= 1;
			rst_counter28 <= 1'b0;
			rst_counter30 <= 1'b0;
			rst_counter31 <= 1'b0;
		end
		else begin
			case(Month)
				4'd1: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd2;
					end
					else begin
						if(pospulse_31) begin
							// reset all date counters
							// go to Feburary
							Month <= 4'd2;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd2: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd3;
					end
					else begin
						if(pospulse_28) begin
							// reset all date counters
							// go to March
							Month <= 4'd3;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd3: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd4;
					end
					else begin
						if(pospulse_31) begin
							// reset all date counters
							// go to April
							Month <= 4'd4;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd4: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd5;
					end
					else begin
						if(pospulse_30) begin
							// reset all date counters
							// go to May
							Month <= 4'd5;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd5: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd6;
					end
					else begin
						if(pospulse_31) begin
							Month <= 4'd6;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd6: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd7;
					end
					else begin
						if(pospulse_30) begin
							Month <= 4'd7;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd7: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd8;
					end
					else begin
						if(pospulse_31) begin
							Month <= 4'd8;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd8: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd9;
					end
					else begin
						if(pospulse_31) begin
							Month <= 4'd9;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd9: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd10;
					end
					else begin
						if(pospulse_30) begin
							Month <= 4'd10;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd10: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd11;
					end
					else begin
						if(pospulse_31) begin
							Month <= 4'd11;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd11: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd12;
					end
					else begin
						if(pospulse_30) begin
							Month <= 4'd12;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				
				4'd12: begin
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
					if(Monthadv)begin
						Month <= 4'd1;
					end
					else begin
						if(pospulse_31) begin
							Month <= 4'd1;
							rst_counter28 <= 1'b1;
							rst_counter30 <= 1'b1;
							rst_counter31 <= 1'b1;
						end
					end
				end
				default: begin
					Month <= 4'd1;
					rst_counter28 <= 1'b0;
					rst_counter30 <= 1'b0;
					rst_counter31 <= 1'b0;
				end
			endcase
		end
	end
endmodule