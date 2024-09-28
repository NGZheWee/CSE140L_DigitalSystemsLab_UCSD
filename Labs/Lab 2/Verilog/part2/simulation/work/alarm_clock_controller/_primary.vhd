library verilog;
use verilog.vl_types.all;
entity alarm_clock_controller is
    port(
        Timeset         : in     vl_logic;
        Alarmset        : in     vl_logic;
        Minadv          : in     vl_logic;
        Hrsadv          : in     vl_logic;
        S_tick          : in     vl_logic;
        M_tick          : in     vl_logic;
        Time_minadv     : out    vl_logic;
        Time_hrsadv     : out    vl_logic;
        Alarm_minadv    : out    vl_logic;
        Alarm_hrsadv    : out    vl_logic
    );
end alarm_clock_controller;
