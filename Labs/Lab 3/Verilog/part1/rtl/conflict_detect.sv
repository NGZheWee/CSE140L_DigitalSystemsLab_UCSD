module conflict_detect(
    input logic [2:0]  a,
    output logic conflict
);

logic [1:0] sum;

assign sum = a[0] + a[1] + a[2];

assign conflict = (sum > 2'b1);
    
endmodule