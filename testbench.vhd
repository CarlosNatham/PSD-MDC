library ieee;
use ieee.std_logic_1164.all;

entity testbench is

end testbench;

architecture tb of testbench is

component mdc_top is
port(	i_X:				in std_logic_vector (7 downto 0);	-- entrada i_x de 8 bits
		i_Y:				in std_logic_vector (7 downto 0);	-- entrada i_Y de 8 bits
		i_GO:				in std_logic;								-- entrada GO
		i_CLK:	  		in std_logic;								-- clock
		i_CLR:	  		in std_logic;								-- clear
		o_RDY:			out std_logic;								-- saída RDY
		o_D:				out std_logic_vector (7 downto 0));	-- saída mdc
end component;

signal w_i_X, w_i_Y, w_o_D: std_logic_vector (7 downto 0);
signal w_i_GO, w_i_CLK, w_i_CLR, w_o_RDY: std_logic;

begin
	DUV: mdc_top port map(	i_X		=> w_i_X,
									i_Y		=> w_i_Y,
									i_GO		=> w_i_GO,
									i_CLK		=> w_i_CLK,
									i_CLR		=> w_i_CLR,
									o_RDY		=> w_o_RDY,
									o_D		=> w_o_D);
									
	process
	begin
		w_i_X 	<= "00011011";
		w_i_Y 	<= "00001001";
		w_i_CLR 	<= '1';
		w_i_CLK 	<= '0';
		w_i_GO	<= '0';
		wait for 10 ns;
		w_i_CLR 	<= '0';
		w_i_CLK 	<= '1';
		w_i_GO	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
		w_i_CLK 	<= '0';
		wait for 10 ns;
		w_i_CLK 	<= '1';
		wait for 10 ns;
	end process;
end tb;