// starter code for Lab 4
// CSE140L
module top_level (
  input        clk, 
               init,
  output logic done);

// dat_mem interface
// you will need this to talk to the data memory
logic         write_en;        // data memory write enable        
logic[8-1:0]  raddr, next_raddr,           // read address pointer
              waddr, next_waddr;           // write address pointer
logic[8-1:0]  data_in;         // to dat_mem
wire [8-1:0]  data_out;        // from dat_mem
// LFSR control input and data output
logic         LFSR_en;         // 1: advance LFSR; 0: hold		
// taps, start, pre_len are constants loaded from dat_mem [61:63]
logic[   5:0] taps,            // LFSR feedback pattern temp register
              start;           // LFSR initial state temp register
logic[   7:0] pre_len;         // preamble (_____) length           
logic         taps_en,         // 1: load taps register; 0: hold
              start_en,        //   same for start temp register
              prelen_en;       //   same for preamble length temp
logic         load_LFSR;       // copy taps and start into LFSR
wire [   5:0] LFSR;            // LFSR current value            
logic[   7:0] scram;           // encrypted message
logic[   7:0] ct_inc;          // prog count step (default = +1)
// instantiate the data memory 
dat_mem dm1(.clk, .write_en, .raddr, .waddr,
            .data_in, .data_out);

// instantiate the LFSR core
// need one for Lab 4; may want 6 for Lab 5
lfsr6 l6(.clk(clk), .en(LFSR_en), .init(load_LFSR),
         .taps(taps), .start(start), .state(LFSR));

logic[7:0] ct;                  // your program counter
// this can act as a program counter
always @(posedge clk)
  if(init)
    ct <= 0;
  else 
	  ct <= ct + ct_inc;     // default: next_ct = ct+1

assign data_in = (ct == 6) ? data_out ^ {2'b0, start} :
                  (ct > 6) ? data_out ^ LFSR : 8'b0;
// control decode logic (does work of instr. mem and control decode)
logic dec_prelen;
logic init_waddr, init_raddr;
logic inc_waddr, inc_raddr;
always_comb begin
// list defaults here; case needs list only exceptions
  write_en  = 'b0;         // data memory write enable        
  LFSR_en   = 'b0;         // 1: advance LFSR; 0: hold		
// enables to load control constants read from dat_mem[61:63] 
  prelen_en = 'b0;         // 1: load pre_len temp register; 0: hold
  dec_prelen = 'b0;
  taps_en   = 'b0;         // 1: load taps temp register; 0: hold
  start_en  = 'b0;         // 1: load start temp register; 0: hold
  load_LFSR = 'b0;         // copy taps and start into LFSR
  init_waddr = 'b0;
  init_raddr = 'b0;
  inc_waddr = 'b0;
  inc_raddr = 'b0;
// PC normally advances by 1
// override to go back in a subroutine or forward/back in a branch 
  ct_inc    = 'b1;         // PC normally advances by 1
  case(ct)
    0,1: begin   
           raddr     = 'd0;         // memory read address pointer
   		     waddr     = 'd64;    	// memory write address pointer
         end       // no op to wait for things to settle from init
// first tasks to be done:
// 1) raddr = 61, prelen_en = 1
//    pre_len <= data_out  
// 2) raddr = 62, taps_en = 1
//    taps <= data_out
// 3) raddr = 63, start_en = 1
//    start <= data_out
    2:   begin             // load pre_len temp register
           raddr      = 'd61;
           waddr      = 'd64;         // memory write address pointer
           prelen_en  = 'b1;
         end
    3:   begin             // load taps temp reg
           raddr      = 'd62;   
           waddr      = 'd64;
           taps_en    = 'b1;
         end               // load LFSR start temp reg
    4:   begin
           raddr      = 'd63;
		       waddr      = 'd64;
           start_en   = 'b1;
         end
	  5:   begin
	        raddr      = 'd0;
		      waddr      =	'd64;
		      load_LFSR  = 'b1;   // copy taps and start temps into LFSR
          init_waddr = 'b1;
		 end
    // firt preamble encryption cycle, set data_mem data_in = data_out ^ {2’b0,start}, waddr = 64, write_en = 1;  
    6:   begin             
	        raddr      = 'd0;
		      waddr      =	'd64;
          write_en   =  'b1;
          LFSR_en    =  'b1;
          dec_prelen =  'b1;
          inc_waddr  =  'b1;
         end       
    // for the reset preamble_len cycles, set data_mem data_in = data_out ^ lfsr, waddr = 64, write_en = 1;
    7:   begin
          raddr      = 'd0;
          waddr      =	next_waddr;
          write_en   =  'b1;
          LFSR_en    =  'b1;
          if (pre_len > 1) begin
            dec_prelen =  'b1;
            ct_inc     = 'b0;
          end
          else begin
            ct_inc     = 'b1;
            init_raddr = 'b1;
          end
          inc_waddr  =  'b1;
    end

	default: begin
/* What happens next?
   1)  for pre_len cycles, bitwise XOR ASCII _ = 0x5f with current
     LFSR state; prepend LFSR state with 2'b00 to pad to 8 bits
     write each successive result into dat_mem[64], dat_mem[65], etc.
     advance LFSR to next state while writing result  
   2) after pre_len operations, start reading data from dat_mem[0], [1], ...
     bitwise XOR each value w/ current LFLSR state
     store successively in dat_mem[64+pre_len+j], where j = 0, 1, ..., 49
     advance LFSR to next state while writing each result
     
You may want some sort of memory address counter or an adder that creates
an offset from the prog_counter.

Watch how the testbench performs Prog. 4. You will be doing the same 
operation, but at a more detailed, hardware level, instead of at the 
higher level the testbench uses.       
*/
          raddr      = next_raddr;
          waddr      = next_waddr;
          write_en   =  'b1;
          LFSR_en    =  'b1;
          inc_raddr =  'b1;
          inc_waddr  =  'b1;
	     end
  endcase
end 

always @(posedge clk) begin
  if (init_waddr) begin
    next_waddr <= 'd64;
  end
  else if(inc_waddr) begin
    next_waddr = next_waddr + 1;
  end
end

always @(posedge clk) begin
  if (init_raddr) begin
    next_raddr <= 'd1;
  end
  else if (inc_raddr) begin
    next_raddr = next_raddr + 1;
  end
end

// load control registers from dat_mem 
always @(posedge clk)
  if(prelen_en)
    pre_len <= data_out;      // copy from data_mem[61] to pre_len reg.
  else if (dec_prelen)
    pre_len <= pre_len - 1;   // decrement pre_len reg.
  else if(taps_en)
    taps    <= data_out;      // copy from data_mem[62] to taps reg.
  else if(start_en)
    start   <= data_out;      // copy from data_mem[63] to start reg.  

/* My done flag goes high once every 64 clock cycles
   Yours should go high at the completion of your encryption operation.
   This may be more or fewer clock cycles than mine. 
   Test bench waits for a done flag, so generate one at some time.
*/
assign done = &ct[5:0];

endmodule