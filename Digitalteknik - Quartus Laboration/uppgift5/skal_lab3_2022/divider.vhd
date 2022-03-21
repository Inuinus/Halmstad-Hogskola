-- D-vippa
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity divider is
	port(clock_50M: in std_logic;
		clk_out: out std_logic);
end entity divider;

--subtyp state_type is integer range 0 to 127;

--signal present_state, next_state: state_type;

architecture beteende of divider is




begin

	statediagram: process(present_state)
	begin
		if present_state = 127 then
			next_state <= 0;
			clk_out <= 1;
		else
		   next_state <= present_state + 1;
			clk_out <= 0;
		end if;
	end process;


	
	state_register: process(clock_50M)
	begin
		if rising_edge(clock_50M) then
			present_state <= next_state;
		end if;
	end process;


	
end architecture beteende;