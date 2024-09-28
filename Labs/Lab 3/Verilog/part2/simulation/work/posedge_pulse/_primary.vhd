library verilog;
use verilog.vl_types.all;
entity posedge_pulse is
    port(
        clk             : in     vl_logic;
        in_sig          : in     vl_logic;
        out_sig         : out    vl_logic
    );
end posedge_pulse;
