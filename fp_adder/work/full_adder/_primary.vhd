library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        a               : in     vl_logic_vector(23 downto 0);
        b               : in     vl_logic_vector(23 downto 0);
        sum             : out    vl_logic_vector(23 downto 0);
        carry           : out    vl_logic
    );
end full_adder;
