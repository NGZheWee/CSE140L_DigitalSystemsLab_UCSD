module testbench;
    
reg clk = 0;
reg rst = 1;

initial begin
    $fsdbDumpfile("novas.fsdb");
    $fsdbDumpvars(0, testbench);
end

initial begin
    forever begin
        #5 clk = ~clk;
    end
end

task wait_clk(input integer num);
begin
    repeat (num) begin
        @(posedge clk);
    end
end
endtask

task release_rst();
begin
    wait_clk(5);
    rst = 0;
    wait_clk(1);
end
endtask

initial begin
    release_rst();


    $finish;
end

endmodule
