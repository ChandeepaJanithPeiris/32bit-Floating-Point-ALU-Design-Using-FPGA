library verilog;
use verilog.vl_types.all;
entity binary_multiplier is
    port(
        A               : in     vl_logic_vector(23 downto 0);
        B               : in     vl_logic_vector(23 downto 0);
        P               : out    vl_logic_vector(47 downto 0)
    );
end binary_multiplier;
