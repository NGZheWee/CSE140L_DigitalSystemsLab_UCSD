// Implementation of Robertson's multiplier using a FSM control unit and 
// datapath to meet the requirements outlined in toprobertsons.v.
module robsmult #(parameter WIDTH = 8)
(
input clk,  //CLK
input reset,
input [WIDTH-1:0] multiplier,
input [WIDTH-1:0] multiplicand,
output [WIDTH*2-1:0] product, // multiplier * multiplicand 
output done // signal that product is ready
);
 
// control signals
wire[14:0] c;	
// datapath signals
wire zq, zy, zr;

// instantiate control unit
robs_control_unit_micro cu(.clk(clk), .reset(reset), .zq(zq), .zy(zy), .zr(zr), .c(c), .done(done));	

// instantiate datapath
robs_datapath #(.WIDTH(WIDTH)) dp(.clk, .reset, .multiplier, .multiplicand, .c, .product, .zq, .zr);

assign zy = ~multiplicand[WIDTH-1];	// what does this do?

endmodule





