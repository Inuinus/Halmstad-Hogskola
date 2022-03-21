-- divider256
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_div_pow2 is
port(
  i_clk         : in  std_logic;
  o_clk_div16   : out std_logic);
end clock_div_pow2;

architecture rtl of clock_div_pow2 is
	signal clk_divider        : unsigned(8 downto 0);

	begin
		p_clk_divider: process(i_clk)
		begin
			if(rising_edge(i_clk)) then
				clk_divider   <= clk_divider + 1;
		end if;
	end process p_clk_divider;

	o_clk_div16   <= clk_divider(3);
end rtl;