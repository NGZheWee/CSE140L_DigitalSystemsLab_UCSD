library verilog;
use verilog.vl_types.all;
entity ct_mod_N is
    generic(
        N               : integer := 60
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        ct_out          : out    vl_logic_vector(6 downto 0);
        z               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end ct_mod_N;
