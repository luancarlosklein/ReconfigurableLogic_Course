library verilog;
use verilog.vl_types.all;
entity cryptography is
    port(
        char_input      : in     vl_logic_vector(7 downto 0);
        char_output     : out    vl_logic_vector(7 downto 0)
    );
end cryptography;
