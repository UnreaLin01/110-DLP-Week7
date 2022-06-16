--Taipei Tech Electronic Engineering Dep.
--110360120 林冠羽
--110360119 黃俊霖
--110360134 楊錦坤
--110360155 羅寶娜

library ieee;
use ieee.std_logic_1164.all;

entity class07 is
	port(
		tickIndicator:out std_logic;
		clk:in std_logic;
		button:in std_logic_vector(1 downto 0);
		switch:in std_logic_vector(9 downto 0);
		led:out std_logic_vector(9 downto 0));
end class07;

architecture a of class07 is
	signal outputs: std_logic_vector(9 downto 0);
	signal counts: integer:=0;
	signal indicator: std_logic:='1';
	constant maxCounts: integer:=2500000;
	
	begin
	process(clk)
		begin
		if(rising_edge(clk))then
			counts <= counts + 1;
			if(counts >= maxCounts - 1)then
				counts <= 0;
				
				case indicator is
					when '0' =>
						indicator <= '1';
					when '1' =>
						indicator <= '0';
					when others =>
						indicator <= '0';
				end case;
				
				if(button = "11")then
					
				elsif(button = "10")then
					outputs <= outputs(8 downto 0) & outputs(9);
				elsif(button = "01")then
					outputs <= outputs(0) & outputs(9 downto 1);
				elsif(button = "00")then
					outputs <= switch;
				end if;
				
			end if;
		end if;
		tickIndicator <= indicator;
		led <= outputs;
	end process;
end a;
		