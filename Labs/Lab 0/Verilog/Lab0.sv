// demo of sequential register and combinational adder
//   creating accumulator
// testbench
module Lab0;

bit       clk, reset;
bit [7:0] data_in;
wire[7:0] data_out;

// instantiate DUT here
accumulator acc1(.clk     (clk    ),   // may omit (clk) since names are the same
                 .reset   (reset)  , 
                 .data_in (data_in), 
                 .data_out(data_out));

always begin
  #5ns clk = 1'b1;
  #5ns clk = 1'b0;
end

initial begin
  #10ns reset = 1;
  #10ns reset = 0;
  #20ns data_in = 2;
  #30ns data_in = 4; 
  #100ns $stop;
end

endmodule



// Device Under Test (DUT)
module accumulator(
  input             clk, 
                    reset,
  input       [7:0] data_in,
  output logic[7:0] data_out);

  always_ff @(posedge clk) begin
    if(reset) data_out <= 8'b0;
    else      data_out <= data_out + data_in;
  end

endmodule


		  // data_out        0
		  //				 2
		  //				 4
		  //				 6
		  //				 8