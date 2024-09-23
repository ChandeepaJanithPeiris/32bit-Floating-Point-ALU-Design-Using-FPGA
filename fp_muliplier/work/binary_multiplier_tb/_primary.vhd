library verilog;
use verilog.vl_types.all;
entity binary_multiplier_tb is
    generic(
        N               : integer := 24
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end binary_multiplier_tb;
