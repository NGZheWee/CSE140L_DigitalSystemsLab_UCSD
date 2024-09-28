library verilog;
use verilog.vl_types.all;
entity lcd_int is
    port(
        bin_in          : in     vl_logic_vector(6 downto 0);
        Segment1        : out    vl_logic_vector(6 downto 0);
        Segment0        : out    vl_logic_vector(6 downto 0)
    );
end lcd_int;
