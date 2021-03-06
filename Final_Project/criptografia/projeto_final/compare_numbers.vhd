-- +-----------------------------+
-- | Comparador de Dois Números  |
-- |Guilherme Gomes e Luan Klein |
-- +-----------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity compare_numbers is
  port (
    value1 : in  BIT_VECTOR (7 downto 0);
    value2  : in  BIT_VECTOR (7 downto 0);
	 clock   : in  std_logic;
    result : out BIT
  );
end entity compare_numbers;

ARCHITECTURE comparador OF compare_numbers IS
	BEGIN COMPARE : PROCESS (clock)
		VARIABLE res: BIT;
		VARIABLE resTemp: BIT;
		BEGIN
			res:= '1';
			FOR i IN value1'RANGE LOOP
				resTemp := (value1(i) and value2(i)) or ( not(value1(i)) and not(value2(i)));
				res := res and resTemp;
			END LOOP;
			result <= res;
		END PROCESS;
END comparador;