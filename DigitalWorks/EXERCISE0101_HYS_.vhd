-- Quartus II VHDL Template
-- 2015108250 허윤성

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EXERCISE0101_HYS is

	port 
	(
		A,B,C	   : in std_logic	;
		F1,F2 : inout std_logic	
	);

end entity;

architecture Behavioral of EXERCISE0101_HYS is
signal T1,T2,T3 : std_logic;

begin
T2<=(A AND B AND C);
T1<=(A OR B OR C) ;
T3<=(NOT F2 AND T1) ;
F2<=(A AND B) OR ( A AND C) OR (B AND C);
F1<=(T3 OR T2) ;
	

end Behavioral;
