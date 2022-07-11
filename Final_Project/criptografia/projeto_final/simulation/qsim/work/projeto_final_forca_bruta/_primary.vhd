library verilog;
use verilog.vl_types.all;
entity projeto_final_forca_bruta is
    port(
        comp_result     : out    vl_logic;
        clock           : in     vl_logic;
        we              : in     vl_logic;
        choose          : in     vl_logic;
        aclr            : in     vl_logic;
        pos_manual      : in     vl_logic_vector(7 downto 0);
        datain          : in     vl_logic_vector(7 downto 0);
        count_output    : out    vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0);
        clock_ram_2     : in     vl_logic;
        output_memory   : out    vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end projeto_final_forca_bruta;
