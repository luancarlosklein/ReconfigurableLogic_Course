library verilog;
use verilog.vl_types.all;
entity cryptography_vlg_sample_tst is
    port(
        char_input      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end cryptography_vlg_sample_tst;
