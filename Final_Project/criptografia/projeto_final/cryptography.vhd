-- +-----------------------------+
-- |      Encriptografador       |
-- |Guilherme Gomes e Luan Klein |
-- +-----------------------------+
-- Encriptografador - Versão Desenvolvida pelo grupo
-- Recebe um caracter na entrada em UTF-8 (8 bits)
-- Inverte a ordem desses bits: EX: IN: 10010000 -> OUT: 00001001
-- Soma mais um nos bits invertidos: 00001001 + 1 = 00001010
-- Retorna o caracter criptografado

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.Numeric_Std.all;

ENTITY cryptography IS
	PORT (char_input    : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			char_output   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END cryptography;

ARCHITECTURE crypto OF cryptography IS
	BEGIN ENCRIPTOGRAFA : PROCESS (char_input)
		VARIABLE temp: STD_LOGIC_VECTOR(char_output'RANGE);
		VARIABLE n : INTEGER RANGE 0 to 255; 
		BEGIN
			FOR i IN char_input'RANGE LOOP
				temp(7 - i) := char_input(i);
			END LOOP;
			n := TO_INTEGER(UNSIGNED(temp)) + 1;
			char_output <= STD_LOGIC_VECTOR(TO_UNSIGNED(n, 8));
		END PROCESS;
END crypto;