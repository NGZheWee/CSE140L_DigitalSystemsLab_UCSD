// CSE140L  
// see Structural Diagram in Lab2 assignment writeup
// fill in missing connections and parameters
module struct_diag #(parameter NS=60, NH=24, NW = 7)(
  input Reset,
        Timeset, 	  // manual buttons
        Alarmset,	  //	(five total)
		Minadv,
		Hrsadv,
		Dayadv,
		Dateadv,
		Monthadv,
		Alarmon,
		Pulse,		  // assume 1/sec.
// 6 decimal digit display (7 segment)
  output [6:0] S1disp, S0disp, 	   // 2-digit seconds display
               M1disp, M0disp, 
               H1disp, H0disp, D0disp, Month1disp,Month0disp,Date1disp,Date0disp,
  output logic Buzz);	           // alarm sounds
  logic[6:0] TSec, TMin, THrs,     // clock/time 
             AMin, AHrs;		   // alarm setting
  logic[6:0] Min, Hrs;
  logic Szero, Mzero, Hzero, 	   // "carry out" from sec -> min, min -> hrs, hrs -> days
        TMen, THen, AMen, AHen; 
  logic S_tick, M_tick, H_tick;
  logic AMzero, AHzero;
  logic alarm_buzzer;
  logic [6:0] day_of_week;		//trace day of week
  logic day_of_week_is_zero;
  // day of week counter -- runs at either 1/sec or 1/60sec
  logic [3:0] Month;
  logic [5:0] date, date28, date30, date31;
  logic Month_zero;
  logic date28_is_zero;
  logic date30_is_zero, date31_is_zero;
  logic pospulse_28, pospulse_30, pospulse_31;
  logic date_adv;
  logic rst_counter28, rst_counter30, rst_counter31; 
  
  assign date_adv = H_tick || Dateadv;

	month_adv_logic month_adv_logic(
  .clk(Pulse), 
  .rst(Reset), 
  .Monthadv(Monthadv),
  .pospulse_28(pospulse_28), 
  .pospulse_30(pospulse_30), 
  .pospulse_31(pospulse_31),
  .Month(Month),
  .rst_counter28(rst_counter28), 
  .rst_counter30(rst_counter30), 
  .rst_counter31(rst_counter31)
);

  posedge_pulse posedge_detector_u5(
    .clk(Pulse), 
    .in_sig(date28_is_zero), 
    .out_sig(pospulse_28)
    );
  posedge_pulse posedge_detector_u6(
    .clk(Pulse), 
    .in_sig(date30_is_zero), 
    .out_sig(pospulse_30)
    );
  posedge_pulse posedge_detector_u7(
    .clk(Pulse), 
    .in_sig(date31_is_zero), 
    .out_sig(pospulse_31)
    );

  posedge_pulse posedge_pulse_H_tick(
    .clk(Pulse), 
    .in_sig(Hzero), 
    .out_sig(H_tick)
    );
  logic M59, S59;
  logic is_m59_s59;
  assign is_m59_s59 = !(M59 & S59);
  assign M59 = (TMin == 6'd59);
  assign S59 = (TSec == 6'd59);
  negedge_pulse negedge_pulse_M_tick(
    .clk(Pulse), 
    .rst(Reset), 
    .in_sig(Mzero & is_m59_s59), 
    .out_sig(M_tick)
    );
  posedge_pulse posedge_pulse_S_tick(
    .clk(Pulse), 
    .in_sig(Szero), 
    .out_sig(S_tick)
    );
  assign date = (Month == 4'd1) ? date31 :
                (Month == 4'd2) ? date28 :
                (Month == 4'd3) ? date31 :
                (Month == 4'd4) ? date30 :
                (Month == 4'd5) ? date31 :
                (Month == 4'd6) ? date30 :
                (Month == 4'd7) ? date31 :
                (Month == 4'd8) ? date31 :
                (Month == 4'd9) ? date30 :
                (Month == 4'd10) ? date31 :
                (Month == 4'd11) ? date30 : date31;


  alarm_clock_controller alarm_clock_controller(
    .Timeset(Timeset), 
    .Alarmset(Alarmset), 
    .Minadv(Minadv), 
	  .Hrsadv(Hrsadv), 
    .S_tick(S_tick), 
    .M_tick(M_tick), 
	  .Time_minadv(TMen), 
    .Time_hrsadv(THen),
	  .Alarm_minadv(AMen), 
    .Alarm_hrsadv(AHen)
	 );

   month_date_counter28 month_date_conter28(
    .clk(Pulse), .rst(Reset||rst_counter28), .en(date_adv), .count(date28), .zero(date28_is_zero)
    );
  month_date_counter30  month_date_conter30(
    .clk(Pulse), .rst(Reset||rst_counter30), .en(date_adv), .count(date30), .zero(date30_is_zero)
    );
  month_date_counter31  month_date_conter31(
    .clk(Pulse), .rst(Reset||rst_counter31), .en(date_adv), .count(date31), .zero(date31_is_zero)
    );
  ct_mod_N #(.N(NW)) week_counter(
    .clk(Pulse), .rst(Reset), .en(Dayadv | H_tick), .ct_out(day_of_week), .z(day_of_week_is_zero)
    );

// free-running seconds counter	-- be sure to set parameters on ct_mod_N modules
  ct_mod_N #(.N(NS)) Sct(
// input ports
    .clk(Pulse), .rst(Reset), .en(!Timeset), 
// output ports    
    .ct_out(TSec), .z(Szero)
    );
  
// minutes counter -- runs at either 1/sec or 1/60sec
  ct_mod_N #(.N(NS)) Mct(
    .clk(Pulse), .rst(Reset), .en(TMen), .ct_out(TMin), .z(Mzero)
    );
  
// hours counter -- runs at either 1/sec or 1/60min
  ct_mod_N #(.N(NH)) Hct(
	.clk(Pulse), .rst(Reset), .en(THen), .ct_out(THrs), .z(Hzero)
    );
	 
// alarm set registers for minutes-- either hold or advance 1/sec
  ct_mod_N #(.N(NS)) Mreg(
    .clk(Pulse), .rst(Reset), .en(AMen), .ct_out(AMin), .z(AMzero)
    ); 
	 
// alarm set registers for hours-- either hold or advance 1/sec	 
  ct_mod_N #(.N(NS)) Hreg(
    .clk(Pulse), .rst(Reset), .en(AHen), .ct_out(AHrs), .z(AHzero)
    ); 

//alarm set display mux
	//mux for display minutes
  assign Min = Alarmset ? AMin : TMin;
	//mux for display hours
  assign Hrs = Alarmset ? AHrs : THrs;
	 
	 
// display drivers (2 digits each, 6 digits total)
	lcd_int Month_disp(
    .bin_in ({3'd0, Month})  ,
	.Segment1  (Month1disp),
	.Segment0  (Month0disp)
	);
	
	lcd_int Date_disp(
    .bin_in ({1'd0, date})  ,
	.Segment1  (Date1disp),
	.Segment0  (Date0disp)
	);
	
  lcd_int Ddisp(
    .bin_in ({4'd0, day_of_week[2:0]})  ,
	.Segment1  (),
	.Segment0  (D0disp)
	);
	
  lcd_int Sdisp(
    .bin_in (TSec)  ,
	.Segment1  (S1disp),
	.Segment0  (S0disp)
	);

  lcd_int Mdisp(
    .bin_in (Min) ,
	.Segment1  (M1disp),
	.Segment0  (M0disp)
	);

  lcd_int Hdisp(
    .bin_in (Hrs),
	.Segment1  (H1disp),
	.Segment0  (H0disp)
	);

// buzz off :)	  make the connections
  alarm a1(
    .tmin(TMin), .amin(AMin), .thrs(THrs), .ahrs(AHrs), .buzz(alarm_buzzer)
	);
  
  // Buzz only on weekdays if Alarmon is asserted
  always_comb begin
		if(Alarmon)begin
			if(day_of_week[2:0] == 3'd0) Buzz = alarm_buzzer;
			else if(day_of_week[2:0] == 3'd1) Buzz = alarm_buzzer;
			else if(day_of_week[2:0] == 3'd2) Buzz = alarm_buzzer;
			else if(day_of_week[2:0] == 3'd3) Buzz = alarm_buzzer;
			else if(day_of_week[2:0] == 3'd4) Buzz = alarm_buzzer;
			else Buzz = 1'b0;
		end
		else begin
			Buzz = 1'b0;
		end
	end

endmodule