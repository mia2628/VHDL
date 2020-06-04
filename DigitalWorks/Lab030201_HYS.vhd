-- Quartus II VHDL Template
-- Lab030201_HYS

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab030201_HYS is

	port 
	(
		Xi,Yi,Bi	   : in std_logic;
		Di,B : out std_logic
	);

end entity;

architecture rtl of Lab030201_HYS is
begin

	Di <= Xi xor Yi xor Bi;
	B <= ((not Xi) and Yi) or ((not Xi) and Bi) or (Yi and Bi);

end rtl;
