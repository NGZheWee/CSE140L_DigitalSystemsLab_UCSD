library verilog;
use verilog.vl_types.all;
entity conflict_detect is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        conflict        : out    vl_logic
    );
end conflict_detect;
