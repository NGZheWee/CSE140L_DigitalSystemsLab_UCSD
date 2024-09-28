library verilog;
use verilog.vl_types.all;
entity month_date_counter28 is
    generic(
        N               : integer := 28
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        count           : out    vl_logic_vector(5 downto 0);
        zero            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end month_date_counter28;
