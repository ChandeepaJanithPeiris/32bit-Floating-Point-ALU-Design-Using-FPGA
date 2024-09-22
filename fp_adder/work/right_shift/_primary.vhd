library verilog;
use verilog.vl_types.all;
entity right_shift is
    generic(
        N               : integer := 24
    );
    port(
        \in\            : in     vl_logic_vector;
        shift_amt       : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector;
        grs             : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end right_shift;
