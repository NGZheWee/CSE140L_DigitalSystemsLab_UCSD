// traffic light controller
// CSE140L 3-street, 12-state version
// inserts all-red after each yellow
// uses enumerated variables for states and for red-yellow-green
// 5 after traffic, 10 max cycles for green after conflict
// starter (shell) -- you need to complete the always_comb logic
import light_package ::*;           // defines red, yellow, green

// same as Harris & Harris 4-state, but we have added two all-reds
module traffic_light_controller1(
  input         clk, reset, 
                ew_str_sensor, ew_left_sensor, ns_sensor,  // traffic sensors, east-west straight, east-west left, north-south 
  output colors ew_str_light, ew_left_light, ns_light);    // traffic lights, east-west straight, east-west left, north-south

// HRR = red-red following YRR; RRH = red-red following RRY;
// ZRR = 2nd cycle yellow, follows YRR, etc. 
  typedef enum {GRR, YRR, ZRR, HRR, RGR, RYR, RZR, RHR, RRG, RRY, RRZ, RRH} tlc_states;  
              // 0    1    2    3    4	  5	   6    7    8    9    10   11 
  tlc_states    present_state, next_state;
  integer ctr5, next_ctr5,       //  5 sec timeout when my traffic goes away
          ctr10, next_ctr10;     // 10 sec limit when other traffic presents

// sequential part of our state machine (register between C1 and C2 in Harris & Harris Moore machine diagram
// combinational part will reset or increment the counters and figure out the next_state
logic ew_str_sensor_negpulse, ew_str_sensor_negpulse_latch;
logic ew_left_sensor_negpulse, ew_left_sensor_negpulse_latch;
logic ns_sensor_negedge, ns_sensor_negedge_latch;
logic conflict;
logic conflict_posedge;

negedge_pulse ew_str_sensor_negedge(
	.clk(clk), .rst(reset),
	.in_sig(ew_str_sensor),
	.out_sig(ew_str_sensor_negpulse)
);

negedge_pulse ew_left_sensor_negedge(
	.clk(clk), .rst(reset),
	.in_sig(ew_left_sensor),
	.out_sig(ew_left_sensor_negpulse)
);


negedge_pulse ns_sensor_negedge_ins(
	.clk(clk), .rst(reset),
	.in_sig(ns_sensor),
	.out_sig(ns_sensor_negedge)
);

conflict_detect conflict_detect(
    .a			({ew_str_sensor, ew_left_sensor, ns_sensor}),
    .conflict   (conflict)
);

posedge_pulse conflict_rising(
	.clk(clk), .in_sig(conflict),
	.out_sig(conflict_posedge)
);


always_ff @(posedge clk) begin
	if(reset) begin
		ew_str_sensor_negpulse_latch <= 0;
		ew_left_sensor_negpulse_latch <= 0;
		ns_sensor_negedge_latch <= 0;
		present_state <= RRH;        // so that EWS has top priority after reset
		ctr5          <= 0;
		ctr10         <= 0;
	end  
	else begin
		case(present_state)
		GRR: begin
			if (conflict_posedge) begin
				ctr10 <= 1;
			end
			else if (conflict) begin
				if(ctr10 < 9) begin
					if(ctr10 < 5) begin
						if(ew_str_sensor_negpulse) begin
							ctr5 <= 1;
							ew_str_sensor_negpulse_latch <= 1;
						end
					end
					else if(ctr5 == 4) begin
						ew_str_sensor_negpulse_latch <= 0;
						present_state <= YRR;
					end
					if(ew_str_sensor_negpulse_latch) begin
						ctr5 <= ctr5 + 1;
					end
					ctr10 <= ctr10 + 1;
				end
				else begin
					ctr5 <= 1;
					ctr10 <= 0;
					present_state <= YRR;
					ew_str_sensor_negpulse_latch <= 0;
				end
			end
			else if(ctr10 < 9) begin
				if(ctr10 < 5) begin
					if(ew_str_sensor_negpulse) begin
						ctr5 <= 1;
						ew_str_sensor_negpulse_latch <= 1;
					end
				end
				else if(ctr5 == 4) begin
					ew_str_sensor_negpulse_latch <= 0;
					present_state <= YRR;
				end
				if(ew_str_sensor_negpulse_latch) begin
					ctr5 <= ctr5 + 1;
				end
				ctr10 <= ctr10 + 1;
			end
			else begin
				ctr5 <= 1;
				ctr10 <= 0;
				present_state <= YRR;
				ew_str_sensor_negpulse_latch <= 0;
			end
		end
		
		YRR: begin
			ctr5 <= 1;
			ctr10 <= 0;
			present_state <= ZRR;
		end

		ZRR: begin
			if (conflict) begin
				present_state <= HRR;
			end
			else if(ew_left_sensor) begin
				present_state <= RGR;
			end
			else if(ns_sensor) begin
				present_state <= RRG;
			end
			else begin
				present_state <= HRR;
			end
		end

		HRR: begin
			if(ew_left_sensor) begin
				present_state <= RGR;
			end
			else if(ns_sensor) begin
				present_state <= RRG;
			end
		end
		
		RGR: begin
			if (conflict_posedge) begin
				ctr10 <= 1;
			end
			else if (conflict) begin
				if(ctr10 < 9) begin
					if(ctr10 < 5) begin
						if(ew_left_sensor_negpulse) begin
							ctr5 <= 1;
							ew_left_sensor_negpulse_latch <= 1;
						end
					end
					else if(ctr5 == 4) begin
						ew_left_sensor_negpulse_latch <= 0;
						present_state <= RYR;
					end
					if(ew_left_sensor_negpulse_latch) begin
							ctr5 <= ctr5 + 1;
					end
					ctr10 <= ctr10 + 1;
				end
				else begin
					ctr5 <= 1;
					ctr10 <= 0;
					present_state <= RYR;
					ew_left_sensor_negpulse_latch <= 0;
				end
			end
			else if(ctr10 < 9) begin
				if(ctr10 < 5) begin
					if(ew_left_sensor_negpulse) begin
						ctr5 <= 1;
						ew_left_sensor_negpulse_latch <= 1;
					end
				end
				else if(ctr5 == 4) begin
					ew_left_sensor_negpulse_latch <= 0;
					present_state <= RYR;
				end
				if(ew_left_sensor_negpulse_latch) begin
						ctr5 <= ctr5 + 1;
				end
				ctr10 <= ctr10 + 1;
			end
			else begin
				ctr5 <= 1;
				ctr10 <= 0;
				present_state <= RYR;
				ew_left_sensor_negpulse_latch <= 0;
			end
		end
		
		RYR: begin
			ctr5 <= 0;
			ctr10 <= 0;
			present_state <= RZR;
		end
		
		RZR: begin
			present_state <= RHR;
		end
		
		RHR: begin
			if(ns_sensor) begin
				present_state <= RRG;
			end
			else if (ew_str_sensor) begin
				present_state <= GRR;
			end
		end
		
		RRG: begin
			if (conflict_posedge) begin
				ctr10 <= 1;
			end
			else if (conflict) begin
				if(ctr10 < 9) begin
					if(ctr10 < 5) begin
						if(ew_str_sensor_negpulse) begin
							ctr5 <= 1;
							ew_str_sensor_negpulse_latch <= 1;
						end
					end
					else if(ctr5 == 4) begin
						ew_str_sensor_negpulse_latch <= 0;
						present_state <= YRR;
					end
					if(ew_str_sensor_negpulse_latch) begin
						ctr5 <= ctr5 + 1;
					end
					ctr10 <= ctr10 + 1;
				end
				else begin
					ctr5 <= 1;
					ctr10 <= 0;
					present_state <= RRY;
					ns_sensor_negedge_latch <= 0;
				end
			end
			else if(ctr10 < 9) begin
				if(ctr10 < 5) begin
					if(ns_sensor_negedge) begin
						ctr5 <= 1;
						ns_sensor_negedge_latch <= 1;
					end
				end
				else if(ctr5 == 4) begin
					//next state
					ns_sensor_negedge_latch <= 0;
					present_state <= RRY;
				end
				if(ns_sensor_negedge_latch) begin
					ctr5 <= ctr5 + 1;
				end
				ctr10 <= ctr10 + 1;
			end
			else begin
					ctr5 <= 1;
					ctr10 <= 0;
					present_state <= RRY;
					ns_sensor_negedge_latch <= 0;
				//end
			end
		end
		
		RRY: begin
			ctr5 <= 0;
			present_state <= RRZ;
			ctr10 <= 0;
		end
		
		RRZ: begin
			present_state <= RRH;
		end
		
		RRH: begin
			if(ew_str_sensor) begin
				present_state <= GRR;
			end
			else if(ew_left_sensor) begin
				present_state <= RGR;
			end
			else if(ns_sensor) begin
				present_state <= RRG;
			end
		end

		default:;
		endcase
	end  
end	
	 
	 
// combination output driver  ("C2" block in the Harris & Harris Moore machine diagram)
  always_comb begin
    ew_str_light  = red;                // cover all red plus undefined cases
	  ew_left_light = red;
	  ns_light      = red;
    case(present_state)      // Moore machine
      GRR:     ew_str_light  = green;
	  YRR,ZRR: ew_str_light  = yellow;  // my dual yellow states -- brute force way to make yellow last 2 cycles
	  RGR:     ew_left_light = green;
	  RYR,RZR: ew_left_light = yellow;
	  RRG:     ns_light      = green;
	  RRY,RRZ: ns_light      = yellow;
    endcase
  end

endmodule