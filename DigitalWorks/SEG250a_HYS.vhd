-- Quartus II VHDL Template
-- SEG250a_HYS 허윤성

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SEG250a_HYS is
	port 
	(
		X : in std_logic_vector(3 downto 0) ;
		Z : out std_logic_vector (6 downto 0)
	);

end entity;

architecture rtl of SEG250a_HYS is
begin
process(X)
begin
	case X is
	WHEN "0000" => Z <= "1000000";
	WHEN "0001" => Z <= "1111001";
	WHEN "0010" => Z <= "0100100";
	WHEN "0011" => Z <= "0110000";
	WHEN "0100" => Z <= "0011001";
	WHEN "0101" => Z <= "0010010";
	WHEN "0110" => Z <= "0000010";
	WHEN "0111" => Z <= "1011000";
	WHEN "1000" => Z <= "0000000";
	WHEN "1001" => Z <= "0010000";
	WHEN "1010" => Z <= "0001000";
	WHEN "1011" => Z <= "0000011";
	WHEN "1100" => Z <= "1000110";
	WHEN "1101" => Z <= "0100001";
	WHEN "1110" => Z <= "0000110";
	WHEN "1111" => Z <= "0001110";
	WHEN OTHERS => Z <= "1111111";
END CASE;
end process;
end rtl;