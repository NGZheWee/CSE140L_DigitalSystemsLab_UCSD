library verilog;
use verilog.vl_types.all;
entity posedge_detector is
    port(
        clk             : in     vl_logic;
        \signal\        : in     vl_logic;
        positive_dege   : out    vl_logic
    );
end posedge_detector;
