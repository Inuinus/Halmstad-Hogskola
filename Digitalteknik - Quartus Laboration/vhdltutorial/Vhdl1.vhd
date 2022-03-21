-- J_K_Flip_Flop
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity j_k_flip_flop is
port(
	clk		: in std_logic;
	j			: in std_logic;
	k			: in std_logic;
	q			: out std_logic);
	end j_k_flip_flop;

architecture rtl of j_k_flip_flop is
	signal iq	: std_logic;
	
	begin
		p_flip_flop: process(clk)
		begin
			if(rising_edge(clk)) then
				if(j = '1' and k = '0')then
					iq <= '1';
				elsif(j = '0' and k = '1')then
					iq <= '0';
				elsif(j = '0' and k = '0')then
					iq <= iq;
				else
					iq <= not iq;
				end if;
			end if;
		end process p_flip_flop;
		
		q <= iq;
end rtl;
	