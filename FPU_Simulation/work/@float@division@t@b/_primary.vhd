library verilog;
use verilog.vl_types.all;
entity FloatDivisionTB is
    generic(
        XLEN            : integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of XLEN : constant is 1;
end FloatDivisionTB;
