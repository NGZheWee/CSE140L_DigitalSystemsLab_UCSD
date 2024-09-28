library verilog;
use verilog.vl_types.all;
library work;
entity traffic_light_controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        e_str_sensor    : in     vl_logic;
        w_str_sensor    : in     vl_logic;
        e_left_sensor   : in     vl_logic;
        w_left_sensor   : in     vl_logic;
        ns_sensor       : in     vl_logic;
        e_str_light     : out    work.light_package.colors;
        w_str_light     : out    work.light_package.colors;
        e_left_light    : out    work.light_package.colors;
        w_left_light    : out    work.light_package.colors;
        ns_light        : out    work.light_package.colors
    );
end traffic_light_controller;
