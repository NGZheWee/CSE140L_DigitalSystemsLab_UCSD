// testbench for lab2
//`include "display_tb.sv"
// task which drives five consecutive 7=segment displays
// CSE140L  Lab 2  Part 2 
// $display performs a return / new line feed; $write does not
task display_tb(input[6:0] seg_j, seg_d,
  seg_e, seg_f, seg_g, seg_h, seg_i
  );
   begin
 // segment A (top bar of 7-segment)
      if(seg_j[6]) $write(" _ ");		// day of week 
      else         $write("   ");		//  
      $write("  ");						//  
      if(seg_d[6]) $write(" _ ");		// hour of day
      else         $write("   ");
      $write(" ");
	  if(seg_e[6]) $write(" _ ");		// ones digit of hour
	  else         $write("   ");
	  $write("  ");
	  if(seg_f[6]) $write(" _ ");		// minute 10s digit
	  else         $write("   ");
      $write(" ");
	  if(seg_g[6]) $write(" _ ");	    // minute 1s digit
	  else         $write("   ");
/*	  $write("  ");				        // optional seconds disp
	  if(seg_h[6]) $write(" _ ");		_
	  else         $write("   ");		 
      $write(" ");
	  if(seg_i[6]) $write(" _ ");
	  else         $write("   ");
*/      $display();					    // line feed
 // segments FGB						// top verticals, center
 	  if(seg_j[1]) $write("|");
	  else $write(" ");
	  if(seg_j[0]) $write("_");
	  else $write(" ");
	  if(seg_j[5]) $write("|");
	  else $write(" ");
	  $write("  ");                     // days-hrs double space
	  if(seg_d[1]) $write("|");
	  else $write(" ");
	  if(seg_d[0]) $write("_");
	  else $write(" ");
	  if(seg_d[5]) $write("|");
	  else $write(" ");
	  $write(" ");
	  if(seg_e[1]) $write("|");
	  else $write(" ");
	  if(seg_e[0]) $write("_");
	  else $write(" ");
	  if(seg_e[5]) $write("|");
	  else $write(" ");
	  $write("  ");	                    // hrs-mins double space
	  if(seg_f[1]) $write("|");
	  else $write(" ");
	  if(seg_f[0]) $write("_");
	  else $write(" ");
	  if(seg_f[5]) $write("|");
	  else $write(" ");
	  $write(" ");
	  if(seg_g[1]) $write("|");
	  else $write(" ");
	  if(seg_g[0]) $write("_");
	  else $write(" ");
	  if(seg_g[5]) $write("|");
	  else $write(" ");
	  $display();
  // segments EDC                       // lower sides, bottom     
      if(seg_j[2]) $write("|");
	  else $write(" ");
	  if(seg_j[3]) $write("_");
	  else $write(" ");
	  if(seg_j[4]) $write("|");
	  else $write(" ");
	  $write("  ");
     if(seg_d[2]) $write("|");
	  else $write(" ");
	  if(seg_d[3]) $write("_");
	  else $write(" ");
	  if(seg_d[4]) $write("|");
	  else $write(" ");
	  $write(" ");
      if(seg_e[2]) $write("|");
	  else $write(" ");
	  if(seg_e[3]) $write("_");
	  else $write(" ");
	  if(seg_e[4]) $write("|");
	  else $write(" ");
	  $write("  ");
      if(seg_f[2]) $write("|");
	  else $write(" ");
	  if(seg_f[3]) $write("_");
	  else $write(" ");
	  if(seg_f[4]) $write("|");
	  else $write(" ");
	  $write(" ");
      if(seg_g[2]) $write("|");
	  else $write(" ");
	  if(seg_g[3]) $write("_");
	  else $write(" ");
	  if(seg_g[4]) $write("|");
	  else $write(" ");
	  $display();
	end
endtask
module lab2_tb();
  logic Reset    = 1,
        Clk      = 0,
        Timeset  = 0,
        Alarmset = 0,
		Minadv   = 0,
		Hrsadv   = 0,
		Dayadv   = 0,
		Alarmon  = 1,
		Pulse    = 0;
		
  wire[6:0] S1disp, S0disp,
            M1disp, M0disp,
	        H1disp, H0disp, D0disp;
  wire Buzz;

  //top_level top(.*); // (.Reset(Reset),....)
  struct_diag sd(.*);             // our DUT itself

  //initial begin
  //    $fsdbDumpfile("lab2_tb_top_level.fsdb");
  //    $fsdbDumpvars(0, lab2_tb);
  //end

  initial begin
    $monitor("buzz = %b  at time %t",Buzz,$time);
	#  2ns  Reset    = 0;
    #  2ns
    $display("5':current time before setting:'00000', only 1 day digit, all initial values are 0");
    display_tb (.seg_j(D0disp),.seg_d(H1disp),
    .seg_e(H0disp), .seg_f(M1disp),
    .seg_g(M0disp), .seg_h(S1disp),
    .seg_i(S0disp));
	#  2ns  Timeset  = 1;
	        Minadv   = 1;
	#110ns  Minadv   = 0;     // Minadv has passed 55
	        Hrsadv   = 1;
	# 14ns  Hrsadv   = 0;     // Hrsadv has passed 7
		    Dayadv   = 1;
	#  8ns  Dayadv   = 0; 	  // Dayadv has passed 4
		    Timeset  = 0;
    #  2ns
    $display("5':current time after setting,'40755', increment day successful");
    display_tb (.seg_j(D0disp),.seg_d(H1disp),
    .seg_e(H0disp), .seg_f(M1disp),
    .seg_g(M0disp), .seg_h(S1disp),
    .seg_i(S0disp));

    #  2ns  Alarmset = 1; 
    #  2ns
    $display("display alarm time before setting:'40000', alarm digits does not affect day digit");
    display_tb (.seg_j(D0disp),.seg_d(H1disp),    //display the alarm time
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
	# 10ns  Hrsadv   = 1;
	# 16ns  Minadv   = 1;     //alarm hour = 8
	        Hrsadv   = 0;
	#  2ns  Minadv   = 0;     // alarm min = 1
    #  2ns
    $display("display alarm time after setting:'40801',alarm buzz at 0801");
    display_tb (.seg_j(D0disp),.seg_d(H1disp),    //display the alarm time
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));

	#  2ns  Alarmset = 0;
    #  2ns  
    $display("display current time after setting alarm");
    display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
	repeat(5) #120ns;   // wait 5 min 
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
	#120ns;             // wait 1 min
	$display("Buzz on Friday.");
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
	#120ns;
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
	repeat(24) #7200ns; // 24 * 1 hour = 1-day delay
	$display("5': Day increase successfully by hours reaching 24");
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
    repeat(24) #7200ns; // 24hours
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      .seg_i(S0disp));
    repeat(24) #7200ns; //24hours
    $display("5':Buzz on Friday(4), but not on Sat and Sun (5,6), Buzz again on Mon 0.");
	display_tb (.seg_j(D0disp),.seg_d(H1disp),
      .seg_e(H0disp), .seg_f(M1disp),
      .seg_g(M0disp), .seg_h(S1disp),
      . seg_i(S0disp));
  	#3000ns  $finish;
  end 
// digital clock generator
// 1ns period would be more convenient, but 100ps time resolution req'd.
  always begin  // period is 2 ns
    #1ns Pulse = 1;					 // #500ps Pulse = 1;
	#1ns Pulse = 0;					 // #500ps Pulse = 0;
  end
endmodule