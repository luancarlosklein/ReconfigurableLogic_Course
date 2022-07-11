library verilog;
use verilog.vl_types.all;
entity projeto_final_logica_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        datain          : in     vl_logic_vector(7 downto 0);
        reset_counter   : in     vl_logic;
        we              : in     vl_logic;
        we_ram_in       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end projeto_final_logica_vlg_sample_tst;
