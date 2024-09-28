module testbench;

parameter RESET_ACTIVE_HIGH = 1'b1;

logic clk = 0;
logic rst = RESET_ACTIVE_HIGH;

// DUT


initial begin
    $fsdbDumpfile("novas.fsdb");
    $fsdbDumpvars(0, testbench);
end

initial begin
    forever begin
        #5 clk = ~clk;
    end
end

task wait_clk(integer num);
begin
    repeat (num) begin
        @(posedge clk);
    end
end
endtask

task release_rst();
begin
    wait_clk(5);
    rst = ~RESET_ACTIVE_HIGH;
    wait_clk(1);
end
endtask

initial begin
    release_rst();

    $finish;
end

endmodule
