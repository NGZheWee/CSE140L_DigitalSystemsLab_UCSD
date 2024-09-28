library verilog;
use verilog.vl_types.all;
entity falling_edge_detector is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \signal\        : in     vl_logic;
        falling_edge    : out    vl_logic
    );
end falling_edge_detector;
