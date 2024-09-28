library verilog;
use verilog.vl_types.all;
entity month_adv_logic is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Monthadv        : in     vl_logic;
        pospulse_28     : in     vl_logic;
        pospulse_30     : in     vl_logic;
        pospulse_31     : in     vl_logic;
        Month           : out    vl_logic_vector(3 downto 0);
        rst_counter28   : out    vl_logic;
        rst_counter30   : out    vl_logic;
        rst_counter31   : out    vl_logic
    );
end month_adv_logic;
