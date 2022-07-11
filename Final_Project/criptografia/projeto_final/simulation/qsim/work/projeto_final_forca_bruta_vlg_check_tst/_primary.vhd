library verilog;
use verilog.vl_types.all;
entity projeto_final_forca_bruta_vlg_check_tst is
    port(
        comp_result     : in     vl_logic;
        count_output    : in     vl_logic_vector(7 downto 0);
        dataout         : in     vl_logic_vector(7 downto 0);
        output_memory   : in     vl_logic_vector(7 downto 0);
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end projeto_final_forca_bruta_vlg_check_tst;
