// CSE140L  
// see Structural Diagram in Lab2 assignment writeup
// fill in missing connections and parameters
module struct_diag #(parameter NS=60, NH=24)(
  input Reset,
        Timeset, 	  // manual buttons
        Alarmset,	  //	(five total)
		Minadv,
		Hrsadv,
		Alarmon,
		Pulse,		  // assume 1/sec.
// 6 decimal digit display (7 segment)
  output [6:0] S1disp, S0disp, 	   // 2-digit seconds display
               M1disp, M0disp, 
               H1disp, H0disp,
//                       D0disp,   // for part 2
  output logic Buzz);	           // alarm sounds
// internal connections (may need more)
  logic[6:0] TSec, TMin, THrs,     // clock/time 
             AMin, AHrs;		   // alarm setting
  logic[6:0] Min, Hrs;
  logic Szero, Mzero, Hzero, 	   // "carry out" from sec -> min, min -> hrs, hrs -> days
        TMen, THen, AMen, AHen; 
  logic S_tick, M_tick;
  logic AMzero, AHzero;
  logic alarm_buzzer;

  logic M59, S59;
  logic is_m59_s59;
  assign is_m59_s59 = !(M59 & S59);
  assign M59 = (TMin == 6'd59);
  assign S59 = (TSec == 6'd59);
  negedge_pulse negedge_pulse_M_tick(
    .clk(Pulse), .rst(Reset), .in_sig(Mzero & is_m59_s59), .out_sig(M_tick)
    );
  posedge_pulse posedge_pulse_S_tick(
    .clk(Pulse), .in_sig(Szero), .out_sig(S_tick)
    );

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
  lcd_int Sdisp(
    .bin_in    (TSec)  ,
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
  
  // set Buzz when Alarmon is set and the time matches the alarm time
  assign Buzz = Alarmon ? alarm_buzzer : 1'b0;
  
endmodule