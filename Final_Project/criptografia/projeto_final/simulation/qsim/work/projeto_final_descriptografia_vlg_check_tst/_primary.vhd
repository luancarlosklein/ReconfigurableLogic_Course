library verilog;
use verilog.vl_types.all;
entity projeto_final_descriptografia_vlg_check_tst is
    port(
        address_ram     : in     vl_logic_vector(7 downto 0);
        data_in_decripto: in     vl_logic_vector(7 downto 0);
        dataout         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end projeto_final_descriptografia_vlg_check_tst;
