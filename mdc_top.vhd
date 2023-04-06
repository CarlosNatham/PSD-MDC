library ieee;
use ieee.std_logic_1164.all;

entity mdc_top is
port( i_X:				in std_logic_vector (7 downto 0);	-- entrada i_x de 8 bits
		i_Y:				in std_logic_vector (7 downto 0);	-- entrada i_Y de 8 bits
		i_GO:				in std_logic;								-- entrada GO
		i_CLK:	  		in std_logic;								-- clock
     	i_CLR:	  		in std_logic;								-- clear
		o_RDY:			out std_logic;								-- saída RDY
		o_D:				out std_logic_vector (7 downto 0));	-- saída mdc
end mdc_top;

architecture arch_3 of mdc_top is

component mdc_datapath is
port(	i_X:				in std_logic_vector (7 downto 0);	-- entrada i_x de 8 bits
		i_Y:				in std_logic_vector (7 downto 0);	-- entrada i_Y de 8 bits
		i_SEL_X:			in std_logic;								-- entrada seleção x
		i_SEL_Y:			in std_logic;								-- entrada seleção y
		i_CLR_X:			in std_logic;								-- clear x
		i_CLR_Y:			in std_logic;								-- clear y
		i_CLR_D:			in std_logic;								-- clear d
		i_CLK:			in std_logic;								-- clock
		i_LD_X:			in std_logic;								-- load x
		i_LD_Y:			in std_logic;								-- load y
		i_LD_D:			in std_logic;								-- load d
		o_XY_IGUAIS:	out std_logic;								-- saída comparação igualdade
		o_XY_MAIOR:		out std_logic;								-- saída comparação maior
		o_D:				out std_logic_vector (7 downto 0));	-- saída mdc
end component;

component mdc_control is
port( i_GO:				in std_logic;		-- entrada GO
		i_XY_IGUAIS:	in std_logic;		-- entrada verificação igualdade
		i_XY_MAIOR:		in std_logic;		-- entrada verificação maior/menor
		i_CLK:	  		in std_logic;		-- clock
		i_CLR:	  		in std_logic;		-- clear geral
		o_RDY:			out std_logic;		-- saída RDY
		o_LD_X:			out std_logic;		-- saída load x
		o_LD_Y:			out std_logic;		-- saída load y
		o_LD_D:			out std_logic;		-- saída load d
		o_SEL_X:			out std_logic;		-- saída seleção x
		o_SEL_Y:			out std_logic);		-- saída seleção y
end component;

signal w_SEL_X, w_SEL_Y, w_LD_X, w_LD_Y, w_LD_D, w_XY_IGUAIS, w_XY_MAIOR: std_logic;

begin
	u_0: mdc_datapath port map(	i_X			=> i_X,
											i_Y			=> i_Y,
											i_SEL_X		=> w_SEL_X,
											i_SEL_Y		=> w_SEL_Y,
											i_CLR_X		=> i_CLR,
											i_CLR_Y		=> i_CLR,
											i_CLR_D		=> i_CLR,
											i_CLK			=> i_CLK,
											i_LD_X		=> w_LD_X,
											i_LD_Y		=> w_LD_Y, 
											i_LD_D		=> w_LD_D,
											o_XY_IGUAIS => w_XY_IGUAIS,
											o_XY_MAIOR  => w_XY_MAIOR,
											o_D			=> o_D);

	u_1: mdc_control port map(		i_GO			=> i_GO,
											i_XY_IGUAIS	=> w_XY_IGUAIS,
											i_XY_MAIOR	=> w_XY_MAIOR,
											i_CLK			=> i_CLK,
											i_CLR			=> i_CLR,
											o_RDY			=> o_RDY,
											o_LD_X		=> w_LD_X,
											o_LD_Y		=> w_LD_Y,
											o_LD_D		=> w_LD_D,
											o_SEL_X		=> w_SEL_X,
											o_SEL_Y		=> w_SEL_Y);
										
end arch_3;