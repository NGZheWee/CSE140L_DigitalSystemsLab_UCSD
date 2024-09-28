// testbench for lab2 -- alarm clock
// hours, minutes, and seconds
// task which drives six consecutive 7=segment displays
// $fdisplay performs a return / new line feed; $fwrite does not
task display_tb(input[6:0] seg_d,
  seg_e, seg_f, seg_g, seg_h, seg_i, Buzz
  );
   int h1;
   begin
    h1=$fopen("list1.txt");	   // 		'b00001
    //h1=$fopen("../testbench/list1.txt");	   // 		'b00001
//	h2=$fopen("list2.txt");    //       'b00010
//  h3=$fopen("list3.txt");    //       'b00100
 // segment A
      if(seg_d[6]) $fwrite(h1," _ ");
      else         $fwrite(h1,"   ");		
      $fwrite(h1," ");
	  if(seg_e[6]) $fwrite(h1," _ ");
	  else         $fwrite(h1,"   ");
	  $fwrite(h1,"  ");
	  if(seg_f[6]) $fwrite(h1," _ ");
	  else         $fwrite(h1,"   ");
      $fwrite(h1," ");
	  if(seg_g[6]) $fwrite(h1," _ ");
	  else         $fwrite(h1,"   ");
	  $fwrite(h1,"  ");
	  if(seg_h[6]) $fwrite(h1," _ ");
	  else         $fwrite(h1,"   ");
      $fwrite(h1," ");
	  if(seg_i[6]) $fwrite(h1," _ ");
	  else         $fwrite(h1," ");

      $fdisplay(h1,"");	   

// segments FGB
      if(seg_d[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_d[0]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_d[5]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
	  if(seg_e[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_e[0]) $fwrite(h1,"_");		   
	  else $fwrite(h1," ");				 
	  if(seg_e[5]) $fwrite(h1,"|");		  
	  else $fwrite(h1," ");

	  $fwrite(h1,"  ");
	  if(seg_f[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_f[0]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_f[5]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
	  if(seg_g[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_g[0]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_g[5]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1,"  ");
	  if(seg_h[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_h[0]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_h[5]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
	  if(seg_i[1]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_i[0]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_i[5]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fdisplay(h1,"");

  // segments EDC
      if(seg_d[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_d[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_d[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
      if(seg_e[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_e[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_e[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1,"  ");
      if(seg_f[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_f[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_f[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
      if(seg_g[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_g[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_g[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1,"  ");
      if(seg_h[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_h[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_h[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");

	  $fwrite(h1," ");
      if(seg_i[2]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(seg_i[3]) $fwrite(h1,"_");
	  else $fwrite(h1," ");
	  if(seg_i[4]) $fwrite(h1,"|");
	  else $fwrite(h1," ");
	  if(Buzz) $fdisplay(h1,"   BUZZ!!!");

	  $fdisplay(h1,"");


	end
endtask
module lab2_tb #(parameter NS = 60, NH = 24);
  logic Reset    = 1,
        Clk      = 0,
        Timeset  = 0,
        Alarmset = 0,
		Minadv   = 0,
		Hrsadv   = 0,
		Alarmon  = 1,
		Pulse    = 0;
  wire[6:0] S1disp, S0disp,
            M1disp, M0disp;
  wire[6:0] H1disp, H0disp;
  wire Buzz;

  struct_diag #(.NS(NS),.NH(NH)) sd(.*);             // our DUT itself
  initial begin
      $fsdbDumpfile("novas.fsdb");
      $fsdbDumpvars(0, lab2_tb);
  end
  initial begin
	#  2us  Reset    = 0;
	#  1us  Timeset  = 1;
	        Minadv   = 1;
	# 50us  Minadv   = 0;
	       Hrsadv   = 1;
	#  7us  Timeset  = 0;
//	force (.sd.Min = 'h5);
//	release(.sd.Min);
    display_tb (.seg_d(H1disp),
    .seg_e(H0disp), .seg_f(M1disp),
    .seg_g(M0disp), .seg_h(S1disp),
    .seg_i(S0disp), .Buzz(Buzz));
	#  1us  Alarmset = 1;
	#  8us  Hrsadv   = 0;
	#  1us  Minadv   = 1;
	# 10us  Minadv   = 0;
	#  1us  Alarmset = 0;
    display_tb (.seg_d(H1disp),
    .seg_e(H0disp), .seg_f(M1disp),
    .seg_g(M0disp), .seg_h(S1disp),
    .seg_i(S0disp), .Buzz(Buzz));
    for(int i=0; i<1640; i++) 
	# 1us  display_tb (.seg_d(H1disp),
    .seg_e(H0disp), .seg_f(M1disp),
    .seg_g(M0disp), .seg_h(S1disp),
    .seg_i(S0disp),.Buzz(Buzz));
  	#1500us  
	$finish;
  end 
  always begin
    #500ns Pulse = 1;
	#500ns Pulse = 0;
  end

endmodule
