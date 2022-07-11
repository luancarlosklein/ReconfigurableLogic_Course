library verilog;
use verilog.vl_types.all;
entity projeto_final_forca_bruta_vlg_sample_tst is
    port(
        aclr            : in     vl_logic;
        choose          : in     vl_logic;
        clock           : in     vl_logic;
        clock_ram_2     : in     vl_logic;
        datain          : in     vl_logic_vector(7 downto 0);
        pos_manual      : in     vl_logic_vector(7 downto 0);
        we              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end projeto_final_forca_bruta_vlg_sample_tst;
