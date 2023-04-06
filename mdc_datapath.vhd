library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mdc_datapath is
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
end mdc_datapath;

architecture arch_2 of mdc_datapath is
	
	signal w_X, w_Y, w_REG1, w_REG2, w_AUXREG1, w_AUXREG2, w_XY_SUB, w_YX_SUB, w_D: std_logic_vector (7 downto 0);
	signal w_XY_MAIOR, w_XY_IGUAIS: std_logic;
	
	begin
		x_mux3_1: process(i_X, i_SEL_X)
		begin
			if(i_SEL_X = '0') then
				w_X <= i_X;
			else
				w_X <= w_XY_SUB;
			end if;
		end process;
		
		y_mux3_1: process(i_Y, i_SEL_Y)
		begin
			if(i_SEL_Y = '0') then
				w_Y <= i_Y;
			else
				w_Y <= w_YX_SUB;
			end if;
		end process;
		
		reg_1: process(i_CLR_X, i_LD_X, i_CLK)
		begin
			if(i_CLR_X = '1') then
				w_REG1 <= "00000000";
			elsif(rising_edge(i_CLK)) then
				if(i_LD_X = '1') then
					w_REG1 <= w_X;
				end if;
			else
			end if;
		end process;
		
		reg_2: process(i_CLR_Y, i_LD_Y, i_CLK)
		begin
			if(i_CLR_Y = '1') then
				w_REG2 <= "00000001";
			elsif(rising_edge(i_CLK)) then
				if(i_LD_Y = '1') then
					w_REG2 <= w_Y;
				end if;
			else
			end if;
		end process;
		
		w_AUXREG1 <= w_REG1;
		w_AUXREG2 <= w_REG2;
		w_XY_SUB <= w_REG1 - w_REG2;
		w_YX_SUB <= w_REG2 - w_REG1;
		
		operacao_1: process(w_AUXREG1, w_AUXREG2)
		begin
			if(w_AUXREG1 = w_AUXREG2) then
				w_XY_IGUAIS <= '1';
			else
				w_XY_IGUAIS <= '0';
			end if;
		end process;
		
		operacao_2: process(w_AUXREG1, w_AUXREG2)
		begin
			if(w_AUXREG1 > w_AUXREG2) then
				w_XY_MAIOR <= '1';
			else
				w_XY_MAIOR <= '0';
			end if;
		end process;
		
		o_XY_IGUAIS <= w_XY_IGUAIS;
		o_XY_MAIOR <= w_XY_MAIOR;
		
		reg_3: process(i_CLR_D, i_LD_D, i_CLK)
		begin
			if(i_CLR_D = '1') then
				w_D <= "00000000";
			elsif(rising_edge(i_CLK)) then
				if(i_LD_D = '1') then
					w_D <= w_REG1;
				end if;
			else
			end if;
		end process;
		
		o_D <= w_D;
		
end arch_2;