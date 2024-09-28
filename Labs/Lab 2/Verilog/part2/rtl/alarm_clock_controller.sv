module alarm_clock_controller(
	input logic Timeset, Alarmset, Minadv, Hrsadv, S_tick, M_tick,
	output logic Time_minadv, Time_hrsadv, Alarm_minadv, Alarm_hrsadv
);
	
	always_comb begin
		case({Timeset, Alarmset})
			//set alarm, timer advancment as usual
			2'b01: begin
		    	Time_minadv = S_tick;
		    	Time_hrsadv = M_tick;
				Alarm_minadv = Minadv;
				Alarm_hrsadv = Hrsadv;
			end
			//set time, 
			2'b10: begin
				Time_minadv = Minadv;
				Time_hrsadv = Hrsadv;
				Alarm_minadv = 1'b0;
	  	 		Alarm_hrsadv = 1'b0;
			end
			// seting both time and alarm cannot happen at the same time
			default: begin
				// function as normal
				Time_minadv = S_tick;
				Time_hrsadv = M_tick;
				Alarm_minadv = 1'b0;
	  	 		Alarm_hrsadv = 1'b0;
			end
		endcase
	end

endmodule