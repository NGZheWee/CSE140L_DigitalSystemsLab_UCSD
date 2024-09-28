library verilog;
use verilog.vl_types.all;
entity struct_diag is
    generic(
        NS              : integer := 60;
        NH              : integer := 24;
        NW              : integer := 7
    );
    port(
        Reset           : in     vl_logic;
        Timeset         : in     vl_logic;
        Alarmset        : in     vl_logic;
        Minadv          : in     vl_logic;
        Hrsadv          : in     vl_logic;
        Dayadv          : in     vl_logic;
        Alarmon         : in     vl_logic;
        Pulse           : in     vl_logic;
        S1disp          : out    vl_logic_vector(6 downto 0);
        S0disp          : out    vl_logic_vector(6 downto 0);
        M1disp          : out    vl_logic_vector(6 downto 0);
        M0disp          : out    vl_logic_vector(6 downto 0);
        H1disp          : out    vl_logic_vector(6 downto 0);
        H0disp          : out    vl_logic_vector(6 downto 0);
        D0disp          : out    vl_logic_vector(6 downto 0);
        Buzz            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NS : constant is 1;
    attribute mti_svvh_generic_type of NH : constant is 1;
    attribute mti_svvh_generic_type of NW : constant is 1;
end struct_diag;
