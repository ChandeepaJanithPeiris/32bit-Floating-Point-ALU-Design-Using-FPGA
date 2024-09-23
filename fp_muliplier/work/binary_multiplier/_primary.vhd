library verilog;
use verilog.vl_types.all;
entity binary_multiplier is
    generic(
        N               : integer := 24
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        P               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end binary_multiplier;
