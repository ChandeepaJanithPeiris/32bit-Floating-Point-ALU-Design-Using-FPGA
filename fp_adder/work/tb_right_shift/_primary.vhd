library verilog;
use verilog.vl_types.all;
entity tb_right_shift is
    generic(
        N               : integer := 24
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end tb_right_shift;
