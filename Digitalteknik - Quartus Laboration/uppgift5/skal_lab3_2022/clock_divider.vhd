-- clock_divider
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_divider is
port(
  clk_50MHz       : in  std_logic;
  clk_div   		: out std_logic);
end clock_divider;

architecture rtl of clock_divider is
	signal clk_divider	: unsigned(26 downto 0);

	begin
		p_clk_divider: process(clk_50MHz)
		begin
			if(rising_edge(clk_50MHz)) then
				clk_divider   <= clk_divider + 1;
		end if;
	end process p_clk_divider;

	clk_div <= clk_divider(6);
end rtl;