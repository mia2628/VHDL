--7세그먼트 (에노드공통) 드라이버
--2015108250 허윤성
library ieee;
use ieee.std_logic_1164.all;


entity Lab0304CADriver250_HYS is
port
(
x : in integer range 0 to 15;
z : out std_logic_vector (6 downto 0)
);

end entity;

architecture rtl of Lab0304CADriver250_HYS is
begin
process (x)
begin
case x is
WHEN 0 => z <= "1000000";
WHEN 1 => z <= "1111001";
WHEN 2 => z <= "0100100";
WHEN 3 => z <= "0110000";
WHEN 4 => z <= "0011001";
WHEN 5 => z <= "0010010";
WHEN 6 => z <= "0000010";
WHEN 7 => z <= "1011000";
WHEN 8 => z <= "0000000";
WHEN 9 => z <= "0010000";
WHEN 10 => z <= "0001000";
WHEN 11 => z <= "0000011";
WHEN 12 => z <= "1000110";
WHEN 13 => z <= "0100001";
WHEN 14 => z <= "0000110";
WHEN 15 => z <= "0001110";
WHEN OTHERS => z <= "1111111";
end case;
end process;
end rtl;