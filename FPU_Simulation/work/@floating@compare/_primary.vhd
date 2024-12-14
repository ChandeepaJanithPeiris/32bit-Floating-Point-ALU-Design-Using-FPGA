library verilog;
use verilog.vl_types.all;
entity FloatingCompare is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic
    );
end FloatingCompare;
