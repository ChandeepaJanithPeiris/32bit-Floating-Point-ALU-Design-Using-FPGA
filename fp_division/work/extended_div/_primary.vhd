library verilog;
use verilog.vl_types.all;
entity extended_div is
    port(
        Q               : in     vl_logic_vector(23 downto 0);
        M               : in     vl_logic_vector(23 downto 0);
        ans             : out    vl_logic_vector(23 downto 0)
    );
end extended_div;
