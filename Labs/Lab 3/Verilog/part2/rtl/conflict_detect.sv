module conflict_detect(
    input logic [4:0]       in_sig,
    output logic            conflict
);

logic [2:0] sum;
assign sum = in_sig[4] + in_sig[3] + in_sig[2] + in_sig[1] + in_sig[0];
assign conflict = (sum > 1);

endmodule