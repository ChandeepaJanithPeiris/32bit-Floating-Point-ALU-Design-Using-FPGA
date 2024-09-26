library verilog;
use verilog.vl_types.all;
entity binary_division is
    port(
        Q               : in     vl_logic_vector(23 downto 0);
        M               : in     vl_logic_vector(23 downto 0);
        Qo              : out    vl_logic_vector(24 downto 0);
        A               : out    vl_logic_vector(24 downto 0)
    );
end binary_division;
