library verilog;
use verilog.vl_types.all;
entity FloatingDivision is
    generic(
        XLEN            : integer := 32
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        zero_division   : out    vl_logic;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of XLEN : constant is 1;
end FloatingDivision;
