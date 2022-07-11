library verilog;
use verilog.vl_types.all;
entity cryptography_vlg_check_tst is
    port(
        char_output     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end cryptography_vlg_check_tst;
