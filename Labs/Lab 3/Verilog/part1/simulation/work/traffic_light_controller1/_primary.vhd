library verilog;
use verilog.vl_types.all;
library work;
entity traffic_light_controller1 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ew_str_sensor   : in     vl_logic;
        ew_left_sensor  : in     vl_logic;
        ns_sensor       : in     vl_logic;
        ew_str_light    : out    work.light_package.colors;
        ew_left_light   : out    work.light_package.colors;
        ns_light        : out    work.light_package.colors
    );
end traffic_light_controller1;
