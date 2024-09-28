// Counter that decrements from WIDTH to 0 at every positive clock edge.
// CSE140L      lab 1
  module counter_down #(parameter dw=8, WIDTH=7)
  (
    input                 clk,
    input                 reset,
    input                 ena,
    output logic [dw-1:0] result
  );
  
    always @(posedge clk)
    begin
      if (reset) 
        result <= (ena == 1) ? WIDTH : WIDTH; 
      else if (ena) 
        result <= result - 1; 
      else 
        result <= result; 
    end
  
  endmodule
  