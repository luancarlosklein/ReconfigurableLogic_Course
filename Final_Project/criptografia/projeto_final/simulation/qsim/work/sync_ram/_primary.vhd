library verilog;
use verilog.vl_types.all;
entity sync_ram is
    port(
        clock           : in     vl_logic;
        we              : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        datain          : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0)
    );
end sync_ram;
