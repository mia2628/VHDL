-- Quartus II VHDL Template
-- LAB030102
-- programmed by HYS
library ieee;
use ieee.std_logic_1164.all;

entity LAB030102 is

	port 
	(
		A,B,C	   : in std_logic	;
		F1 : out std_logic ;
		F2 : inout std_logic	
	);

end entity;

architecture Behavioral of LAB030102 is
signal T1,T2,T3 : std_logic;

begin
T2<= (A AND B AND C);
T1<=(A OR B OR C);
T3<=(NOT F2 AND T1);
F2<=(A AND B) OR ( A AND C) OR (B AND C);
F1<=(T3 OR T2); 
	

end Behavioral;
