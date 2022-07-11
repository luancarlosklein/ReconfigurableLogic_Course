-- +-----------------------------+
-- |        SELECTOR             |
-- |Guilherme Gomes e Luan Klein |
-- +-----------------------------+
-- Esse seletor implementa uma MUX

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.Numeric_Std.all;

ENTITY selector IS
	PORT (
			value1   : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			value2   : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			choose   : IN BIT;
			output   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END selector;

ARCHITECTURE sel OF selector IS
	BEGIN SELECTION : PROCESS (choose, value1, value2)
		BEGIN
			IF (choose = '0') THEN
				output <= value1;
			ELSE
				output <= value2;
			END IF;
		END PROCESS;
END sel;