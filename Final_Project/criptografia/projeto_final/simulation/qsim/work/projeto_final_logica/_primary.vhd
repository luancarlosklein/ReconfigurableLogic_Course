library verilog;
use verilog.vl_types.all;
entity projeto_final_logica is
    port(
        address_ram     : out    vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        reset_counter   : in     vl_logic;
        data_in_cripto  : out    vl_logic_vector(7 downto 0);
        we_ram_in       : in     vl_logic;
        datain          : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0);
        we              : in     vl_logic
    );
end projeto_final_logica;
