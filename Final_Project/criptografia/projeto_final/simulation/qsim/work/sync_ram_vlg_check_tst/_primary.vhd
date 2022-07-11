library verilog;
use verilog.vl_types.all;
entity sync_ram_vlg_check_tst is
    port(
        dataout         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end sync_ram_vlg_check_tst;
