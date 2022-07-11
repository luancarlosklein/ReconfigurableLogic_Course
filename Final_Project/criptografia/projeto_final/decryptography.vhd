-- +-----------------------------+
-- |      Descriptografador      |
-- |Guilherme Gomes e Luan Klein |
-- +-----------------------------+
-- Descriptografador - Versão Desenvolvida pelo grupo
-- Recebe um caracter na entrada em UTF-8 (8 bits) criptografado
-- Diminui 1 (considerando unsigned eque o overflow é permitido)
-- Inverte a ordem desses bits: EX: IN: 10010000 -> OUT: 00001001
-- Retorna o caracter descriptografado

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.Numeric_Std.all;

ENTITY decryptography IS
	PORT (char_input    : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			char_output   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END decryptography;

ARCHITECTURE decrypto OF decryptography IS
	BEGIN DESCRIPTOGRAFA : PROCESS (char_input)
		VARIABLE temp: STD_LOGIC_VECTOR(char_output'RANGE);
		VARIABLE temp2: STD_LOGIC_VECTOR(char_output'RANGE);
		VARIABLE n : INTEGER RANGE 0 to 255; 
		BEGIN
		   n := TO_INTEGER(UNSIGNED(char_input)) - 1;
			temp2 := STD_LOGIC_VECTOR(TO_UNSIGNED(n, 8));
			FOR i IN temp2'RANGE LOOP
				temp(7 - i) := temp2(i);
			END LOOP;
			char_output <= temp;
		END PROCESS;
END decrypto;