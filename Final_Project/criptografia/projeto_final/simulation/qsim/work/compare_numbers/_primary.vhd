library verilog;
use verilog.vl_types.all;
entity compare_numbers is
    port(
        value1          : in     vl_logic_vector(7 downto 0);
        value2          : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        result          : out    vl_logic
    );
end compare_numbers;
