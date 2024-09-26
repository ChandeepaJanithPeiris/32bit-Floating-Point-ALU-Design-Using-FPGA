library verilog;
use verilog.vl_types.all;
entity right_shift is
    port(
        \in\            : in     vl_logic_vector(47 downto 0);
        shift_amount    : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(22 downto 0)
    );
end right_shift;
