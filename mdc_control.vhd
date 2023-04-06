library ieee;
use ieee.std_logic_1164.all;

entity mdc_control is
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
		o_SEL_Y:			out std_logic);	-- saída seleção y
end mdc_control;

architecture arch_1 of mdc_control is

	type state_type is (s_0,s_1,s_2,s_3,s_4,s_5,s_6);	-- tipos fsm
 	signal r_STATE_REG  : state_type;	-- registrador
	signal s_NEXT_STATE : state_type;	-- proximo estado

	begin
		-- função de registro do estado
		p_STATE_REG : process(i_CLK, i_CLR)
    	begin
        	if(i_CLR = '1') then
            	r_STATE_REG <= s_0; 
         elsif (rising_edge(i_CLK)) then
             	r_STATE_REG <= s_NEXT_STATE;
         end if;
      end process;
		
		-- função de transição do estado     
		p_NEXT_STAGE : process (r_state_REG, i_GO, i_XY_IGUAIS, i_XY_MAIOR)
    	begin
        	case (r_STATE_REG) is
				when s_0 =>	if(i_GO = '1') then
									s_NEXT_STATE <= s_1;
								else
									s_NEXT_STATE <= s_0;
								end if;
				when s_1 => s_NEXT_STATE <= s_2;
				when s_2 => if(i_XY_IGUAIS = '1') then
									s_NEXT_STATE <= s_6;
								else
									s_NEXT_STATE <= s_3;
								end if;
				when s_3 => if(i_XY_MAIOR = '1') then
									s_NEXT_STATE <= s_5;
								else
									s_NEXT_STATE <= s_4;
								end if;
				when s_4 => s_NEXT_STATE <= s_2;
				when s_5 => s_NEXT_STATE <= s_2;
				when s_6 => s_NEXT_STATE <= s_0;
			end case;
		end process;
		
		o_RDY <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_1 or r_STATE_REG = s_2 or
		r_STATE_REG = s_3 or r_STATE_REG = s_4 or r_STATE_REG = s_5) else '1';
		
		o_LD_X <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_2 or r_STATE_REG = s_3 or 
		r_STATE_REG = s_4 or r_STATE_REG = s_6) else '1';
		
		o_LD_Y <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_2 or r_STATE_REG = s_3 or
		r_STATE_REG = s_5 or r_STATE_REG = s_6) else '1';
		
		o_LD_D <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_2 or r_STATE_REG = s_3 or 
		r_STATE_REG = s_4 or r_STATE_REG = s_5 or r_STATE_REG = s_6) else '1';
		
		o_SEL_X <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_1 or r_STATE_REG = s_2 or 
		r_STATE_REG = s_3 or r_STATE_REG = s_4 or r_STATE_REG = s_6) else '1';
		
		o_SEL_Y <= '0' when (r_STATE_REG = s_0 or r_STATE_REG = s_1 or r_STATE_REG = s_2 or 
		r_STATE_REG = s_3 or r_STATE_REG = s_5 or r_STATE_REG = s_6) else '1';
		
end arch_1;