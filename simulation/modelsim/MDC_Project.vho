-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/29/2020 23:50:51"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mdc_top IS
    PORT (
	i_X : IN std_logic_vector(7 DOWNTO 0);
	i_Y : IN std_logic_vector(7 DOWNTO 0);
	i_GO : IN std_logic;
	i_CLK : IN std_logic;
	i_CLR : IN std_logic;
	o_RDY : OUT std_logic;
	o_D : OUT std_logic_vector(7 DOWNTO 0)
	);
END mdc_top;

-- Design Ports Information
-- o_RDY	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[0]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[4]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[5]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[6]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[3]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[6]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GO	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mdc_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GO : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_CLR : std_logic;
SIGNAL ww_o_RDY : std_logic;
SIGNAL ww_o_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u_0|w_YX_SUB[0]~29_sumout\ : std_logic;
SIGNAL \i_Y[0]~input_o\ : std_logic;
SIGNAL \i_GO~input_o\ : std_logic;
SIGNAL \u_1|Selector0~0_combout\ : std_logic;
SIGNAL \i_CLR~input_o\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_0~q\ : std_logic;
SIGNAL \u_0|w_YX_SUB[0]~30\ : std_logic;
SIGNAL \u_0|w_YX_SUB[0]~31\ : std_logic;
SIGNAL \u_0|w_YX_SUB[1]~25_sumout\ : std_logic;
SIGNAL \i_Y[1]~input_o\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_6~q\ : std_logic;
SIGNAL \u_0|LessThan0~0_combout\ : std_logic;
SIGNAL \u_0|LessThan0~1_combout\ : std_logic;
SIGNAL \u_0|w_XY_SUB[0]~30\ : std_logic;
SIGNAL \u_0|w_XY_SUB[0]~31\ : std_logic;
SIGNAL \u_0|w_XY_SUB[1]~26\ : std_logic;
SIGNAL \u_0|w_XY_SUB[1]~27\ : std_logic;
SIGNAL \u_0|w_XY_SUB[2]~2\ : std_logic;
SIGNAL \u_0|w_XY_SUB[2]~3\ : std_logic;
SIGNAL \u_0|w_XY_SUB[3]~6\ : std_logic;
SIGNAL \u_0|w_XY_SUB[3]~7\ : std_logic;
SIGNAL \u_0|w_XY_SUB[4]~10\ : std_logic;
SIGNAL \u_0|w_XY_SUB[4]~11\ : std_logic;
SIGNAL \u_0|w_XY_SUB[5]~14\ : std_logic;
SIGNAL \u_0|w_XY_SUB[5]~15\ : std_logic;
SIGNAL \u_0|w_XY_SUB[6]~17_sumout\ : std_logic;
SIGNAL \i_X[6]~input_o\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_4~q\ : std_logic;
SIGNAL \u_1|o_SEL_X~0_combout\ : std_logic;
SIGNAL \u_0|Equal0~0_combout\ : std_logic;
SIGNAL \u_1|s_NEXT_STATE.s_1~0_combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_1~q\ : std_logic;
SIGNAL \u_1|WideOr1~combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_2~q\ : std_logic;
SIGNAL \u_1|s_NEXT_STATE.s_3~0_combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_3~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|o_LD_X~0_combout\ : std_logic;
SIGNAL \u_0|w_YX_SUB[1]~27\ : std_logic;
SIGNAL \u_0|w_YX_SUB[2]~3\ : std_logic;
SIGNAL \u_0|w_YX_SUB[3]~7\ : std_logic;
SIGNAL \u_0|w_YX_SUB[4]~11\ : std_logic;
SIGNAL \u_0|w_YX_SUB[5]~14\ : std_logic;
SIGNAL \u_0|w_YX_SUB[5]~15\ : std_logic;
SIGNAL \u_0|w_YX_SUB[6]~17_sumout\ : std_logic;
SIGNAL \i_Y[6]~input_o\ : std_logic;
SIGNAL \u_1|o_LD_Y~0_combout\ : std_logic;
SIGNAL \u_0|w_XY_SUB[6]~18\ : std_logic;
SIGNAL \u_0|w_XY_SUB[6]~19\ : std_logic;
SIGNAL \u_0|w_XY_SUB[7]~21_sumout\ : std_logic;
SIGNAL \i_X[7]~input_o\ : std_logic;
SIGNAL \u_0|w_YX_SUB[6]~18\ : std_logic;
SIGNAL \u_0|w_YX_SUB[6]~19\ : std_logic;
SIGNAL \u_0|w_YX_SUB[7]~21_sumout\ : std_logic;
SIGNAL \i_Y[7]~input_o\ : std_logic;
SIGNAL \u_0|LessThan0~2_combout\ : std_logic;
SIGNAL \u_1|s_NEXT_STATE.s_4~0_combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_4~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|o_SEL_Y~0_combout\ : std_logic;
SIGNAL \u_0|w_XY_SUB[1]~25_sumout\ : std_logic;
SIGNAL \i_X[1]~input_o\ : std_logic;
SIGNAL \u_0|w_YX_SUB[1]~26\ : std_logic;
SIGNAL \u_0|w_YX_SUB[2]~1_sumout\ : std_logic;
SIGNAL \i_Y[2]~input_o\ : std_logic;
SIGNAL \u_0|w_XY_SUB[2]~1_sumout\ : std_logic;
SIGNAL \i_X[2]~input_o\ : std_logic;
SIGNAL \u_0|w_YX_SUB[2]~2\ : std_logic;
SIGNAL \u_0|w_YX_SUB[3]~5_sumout\ : std_logic;
SIGNAL \i_Y[3]~input_o\ : std_logic;
SIGNAL \u_0|w_XY_SUB[3]~5_sumout\ : std_logic;
SIGNAL \i_X[3]~input_o\ : std_logic;
SIGNAL \u_0|w_YX_SUB[3]~6\ : std_logic;
SIGNAL \u_0|w_YX_SUB[4]~9_sumout\ : std_logic;
SIGNAL \i_Y[4]~input_o\ : std_logic;
SIGNAL \u_0|w_XY_SUB[4]~9_sumout\ : std_logic;
SIGNAL \i_X[4]~input_o\ : std_logic;
SIGNAL \u_0|w_YX_SUB[4]~10\ : std_logic;
SIGNAL \u_0|w_YX_SUB[5]~13_sumout\ : std_logic;
SIGNAL \i_Y[5]~input_o\ : std_logic;
SIGNAL \u_0|w_XY_SUB[5]~13_sumout\ : std_logic;
SIGNAL \i_X[5]~input_o\ : std_logic;
SIGNAL \u_0|Equal0~1_combout\ : std_logic;
SIGNAL \u_1|s_NEXT_STATE.s_5~0_combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_5~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_3~q\ : std_logic;
SIGNAL \u_1|o_CLR_X~0_combout\ : std_logic;
SIGNAL \u_0|w_XY_SUB[0]~29_sumout\ : std_logic;
SIGNAL \i_X[0]~input_o\ : std_logic;
SIGNAL \u_0|Equal0~2_combout\ : std_logic;
SIGNAL \u_1|s_NEXT_STATE.s_6~0_combout\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_6~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|r_STATE_REG.s_5~q\ : std_logic;
SIGNAL \u_1|o_RDY~0_combout\ : std_logic;
SIGNAL \u_0|w_REG1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_0|w_REG2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_4~DUPLICATE_q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i_GO~input_o\ : std_logic;
SIGNAL \ALT_INV_i_CLR~input_o\ : std_logic;
SIGNAL \u_1|ALT_INV_o_CLR_X~0_combout\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_0~q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_1~q\ : std_logic;
SIGNAL \u_0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \u_0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u_0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_3~q\ : std_logic;
SIGNAL \u_0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u_0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u_0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_2~q\ : std_logic;
SIGNAL \u_1|ALT_INV_o_RDY~0_combout\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_5~q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_4~q\ : std_logic;
SIGNAL \u_1|ALT_INV_r_STATE_REG.s_6~q\ : std_logic;
SIGNAL \u_0|ALT_INV_w_REG2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_0|ALT_INV_w_REG1\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_X <= i_X;
ww_i_Y <= i_Y;
ww_i_GO <= i_GO;
ww_i_CLK <= i_CLK;
ww_i_CLR <= i_CLR;
o_RDY <= ww_o_RDY;
o_D <= ww_o_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\ <= NOT \u_1|r_STATE_REG.s_3~DUPLICATE_q\;
\u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\ <= NOT \u_1|r_STATE_REG.s_5~DUPLICATE_q\;
\u_1|ALT_INV_r_STATE_REG.s_4~DUPLICATE_q\ <= NOT \u_1|r_STATE_REG.s_4~DUPLICATE_q\;
\u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\ <= NOT \u_1|r_STATE_REG.s_6~DUPLICATE_q\;
\ALT_INV_i_GO~input_o\ <= NOT \i_GO~input_o\;
\ALT_INV_i_CLR~input_o\ <= NOT \i_CLR~input_o\;
\u_1|ALT_INV_o_CLR_X~0_combout\ <= NOT \u_1|o_CLR_X~0_combout\;
\u_1|ALT_INV_r_STATE_REG.s_0~q\ <= NOT \u_1|r_STATE_REG.s_0~q\;
\u_1|ALT_INV_r_STATE_REG.s_1~q\ <= NOT \u_1|r_STATE_REG.s_1~q\;
\u_0|ALT_INV_LessThan0~2_combout\ <= NOT \u_0|LessThan0~2_combout\;
\u_0|ALT_INV_LessThan0~1_combout\ <= NOT \u_0|LessThan0~1_combout\;
\u_0|ALT_INV_LessThan0~0_combout\ <= NOT \u_0|LessThan0~0_combout\;
\u_1|ALT_INV_r_STATE_REG.s_3~q\ <= NOT \u_1|r_STATE_REG.s_3~q\;
\u_0|ALT_INV_Equal0~2_combout\ <= NOT \u_0|Equal0~2_combout\;
\u_0|ALT_INV_Equal0~1_combout\ <= NOT \u_0|Equal0~1_combout\;
\u_0|ALT_INV_Equal0~0_combout\ <= NOT \u_0|Equal0~0_combout\;
\u_1|ALT_INV_r_STATE_REG.s_2~q\ <= NOT \u_1|r_STATE_REG.s_2~q\;
\u_1|ALT_INV_o_RDY~0_combout\ <= NOT \u_1|o_RDY~0_combout\;
\u_1|ALT_INV_r_STATE_REG.s_5~q\ <= NOT \u_1|r_STATE_REG.s_5~q\;
\u_1|ALT_INV_r_STATE_REG.s_4~q\ <= NOT \u_1|r_STATE_REG.s_4~q\;
\u_1|ALT_INV_r_STATE_REG.s_6~q\ <= NOT \u_1|r_STATE_REG.s_6~q\;
\u_0|ALT_INV_w_REG2\(0) <= NOT \u_0|w_REG2\(0);
\u_0|ALT_INV_w_REG1\(0) <= NOT \u_0|w_REG1\(0);
\u_0|ALT_INV_w_REG2\(1) <= NOT \u_0|w_REG2\(1);
\u_0|ALT_INV_w_REG1\(1) <= NOT \u_0|w_REG1\(1);
\u_0|ALT_INV_w_REG2\(7) <= NOT \u_0|w_REG2\(7);
\u_0|ALT_INV_w_REG1\(7) <= NOT \u_0|w_REG1\(7);
\u_0|ALT_INV_w_REG2\(6) <= NOT \u_0|w_REG2\(6);
\u_0|ALT_INV_w_REG1\(6) <= NOT \u_0|w_REG1\(6);
\u_0|ALT_INV_w_REG2\(5) <= NOT \u_0|w_REG2\(5);
\u_0|ALT_INV_w_REG1\(5) <= NOT \u_0|w_REG1\(5);
\u_0|ALT_INV_w_REG2\(4) <= NOT \u_0|w_REG2\(4);
\u_0|ALT_INV_w_REG1\(4) <= NOT \u_0|w_REG1\(4);
\u_0|ALT_INV_w_REG2\(3) <= NOT \u_0|w_REG2\(3);
\u_0|ALT_INV_w_REG1\(3) <= NOT \u_0|w_REG1\(3);
\u_0|ALT_INV_w_REG2\(2) <= NOT \u_0|w_REG2\(2);
\u_0|ALT_INV_w_REG1\(2) <= NOT \u_0|w_REG1\(2);

-- Location: IOOBUF_X89_Y9_N22
\o_RDY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|ALT_INV_o_RDY~0_combout\,
	devoe => ww_devoe,
	o => ww_o_RDY);

-- Location: IOOBUF_X26_Y0_N76
\o_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(0));

-- Location: IOOBUF_X89_Y25_N39
\o_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(1));

-- Location: IOOBUF_X18_Y81_N93
\o_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(2));

-- Location: IOOBUF_X64_Y0_N36
\o_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(3));

-- Location: IOOBUF_X28_Y0_N53
\o_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(4));

-- Location: IOOBUF_X14_Y0_N53
\o_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(5));

-- Location: IOOBUF_X2_Y81_N76
\o_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(6));

-- Location: IOOBUF_X16_Y81_N53
\o_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_D(7));

-- Location: IOIBUF_X89_Y25_N21
\i_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G10
\i_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~input_o\,
	outclk => \i_CLK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y12_N30
\u_0|w_YX_SUB[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[0]~29_sumout\ = SUM(( !\u_0|w_REG1\(0) $ (!\u_0|w_REG2\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u_0|w_YX_SUB[0]~30\ = CARRY(( !\u_0|w_REG1\(0) $ (!\u_0|w_REG2\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u_0|w_YX_SUB[0]~31\ = SHARE((!\u_0|w_REG1\(0)) # (\u_0|w_REG2\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG1\(0),
	datad => \u_0|ALT_INV_w_REG2\(0),
	cin => GND,
	sharein => GND,
	sumout => \u_0|w_YX_SUB[0]~29_sumout\,
	cout => \u_0|w_YX_SUB[0]~30\,
	shareout => \u_0|w_YX_SUB[0]~31\);

-- Location: IOIBUF_X89_Y13_N38
\i_Y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(0),
	o => \i_Y[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\i_GO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GO,
	o => \i_GO~input_o\);

-- Location: MLABCELL_X87_Y12_N3
\u_1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|Selector0~0_combout\ = ( !\u_1|r_STATE_REG.s_6~DUPLICATE_q\ & ( (\u_1|r_STATE_REG.s_0~q\) # (\i_GO~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_GO~input_o\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_0~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\,
	combout => \u_1|Selector0~0_combout\);

-- Location: IOIBUF_X89_Y11_N61
\i_CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR,
	o => \i_CLR~input_o\);

-- Location: FF_X87_Y12_N5
\u_1|r_STATE_REG.s_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|Selector0~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_0~q\);

-- Location: MLABCELL_X87_Y12_N33
\u_0|w_YX_SUB[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[1]~25_sumout\ = SUM(( !\u_0|w_REG1\(1) $ (\u_0|w_REG2\(1)) ) + ( \u_0|w_YX_SUB[0]~31\ ) + ( \u_0|w_YX_SUB[0]~30\ ))
-- \u_0|w_YX_SUB[1]~26\ = CARRY(( !\u_0|w_REG1\(1) $ (\u_0|w_REG2\(1)) ) + ( \u_0|w_YX_SUB[0]~31\ ) + ( \u_0|w_YX_SUB[0]~30\ ))
-- \u_0|w_YX_SUB[1]~27\ = SHARE((!\u_0|w_REG1\(1) & \u_0|w_REG2\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG1\(1),
	datad => \u_0|ALT_INV_w_REG2\(1),
	cin => \u_0|w_YX_SUB[0]~30\,
	sharein => \u_0|w_YX_SUB[0]~31\,
	sumout => \u_0|w_YX_SUB[1]~25_sumout\,
	cout => \u_0|w_YX_SUB[1]~26\,
	shareout => \u_0|w_YX_SUB[1]~27\);

-- Location: IOIBUF_X89_Y8_N21
\i_Y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(1),
	o => \i_Y[1]~input_o\);

-- Location: FF_X87_Y12_N20
\u_1|r_STATE_REG.s_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_6~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_6~q\);

-- Location: LABCELL_X88_Y12_N48
\u_0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|LessThan0~0_combout\ = ( \u_0|w_REG2\(0) & ( (\u_0|w_REG1\(1) & !\u_0|w_REG2\(1)) ) ) # ( !\u_0|w_REG2\(0) & ( (!\u_0|w_REG1\(0) & (\u_0|w_REG1\(1) & !\u_0|w_REG2\(1))) # (\u_0|w_REG1\(0) & ((!\u_0|w_REG2\(1)) # (\u_0|w_REG1\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(0),
	datac => \u_0|ALT_INV_w_REG1\(1),
	datad => \u_0|ALT_INV_w_REG2\(1),
	dataf => \u_0|ALT_INV_w_REG2\(0),
	combout => \u_0|LessThan0~0_combout\);

-- Location: LABCELL_X88_Y12_N36
\u_0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|LessThan0~1_combout\ = ( \u_0|w_REG1\(2) & ( (!\u_0|w_REG1\(3) & (!\u_0|w_REG2\(3) & ((!\u_0|w_REG2\(2)) # (\u_0|LessThan0~0_combout\)))) # (\u_0|w_REG1\(3) & ((!\u_0|w_REG2\(2)) # ((!\u_0|w_REG2\(3)) # (\u_0|LessThan0~0_combout\)))) ) ) # ( 
-- !\u_0|w_REG1\(2) & ( (!\u_0|w_REG1\(3) & (!\u_0|w_REG2\(2) & (\u_0|LessThan0~0_combout\ & !\u_0|w_REG2\(3)))) # (\u_0|w_REG1\(3) & ((!\u_0|w_REG2\(3)) # ((!\u_0|w_REG2\(2) & \u_0|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100000010001110110000001010111111001000111011111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG2\(2),
	datab => \u_0|ALT_INV_w_REG1\(3),
	datac => \u_0|ALT_INV_LessThan0~0_combout\,
	datad => \u_0|ALT_INV_w_REG2\(3),
	dataf => \u_0|ALT_INV_w_REG1\(2),
	combout => \u_0|LessThan0~1_combout\);

-- Location: LABCELL_X88_Y12_N0
\u_0|w_XY_SUB[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[0]~29_sumout\ = SUM(( !\u_0|w_REG2\(0) $ (!\u_0|w_REG1\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u_0|w_XY_SUB[0]~30\ = CARRY(( !\u_0|w_REG2\(0) $ (!\u_0|w_REG1\(0)) ) + ( !VCC ) + ( !VCC ))
-- \u_0|w_XY_SUB[0]~31\ = SHARE((!\u_0|w_REG2\(0)) # (\u_0|w_REG1\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(0),
	datad => \u_0|ALT_INV_w_REG1\(0),
	cin => GND,
	sharein => GND,
	sumout => \u_0|w_XY_SUB[0]~29_sumout\,
	cout => \u_0|w_XY_SUB[0]~30\,
	shareout => \u_0|w_XY_SUB[0]~31\);

-- Location: LABCELL_X88_Y12_N3
\u_0|w_XY_SUB[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[1]~25_sumout\ = SUM(( !\u_0|w_REG2\(1) $ (\u_0|w_REG1\(1)) ) + ( \u_0|w_XY_SUB[0]~31\ ) + ( \u_0|w_XY_SUB[0]~30\ ))
-- \u_0|w_XY_SUB[1]~26\ = CARRY(( !\u_0|w_REG2\(1) $ (\u_0|w_REG1\(1)) ) + ( \u_0|w_XY_SUB[0]~31\ ) + ( \u_0|w_XY_SUB[0]~30\ ))
-- \u_0|w_XY_SUB[1]~27\ = SHARE((!\u_0|w_REG2\(1) & \u_0|w_REG1\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(1),
	datad => \u_0|ALT_INV_w_REG1\(1),
	cin => \u_0|w_XY_SUB[0]~30\,
	sharein => \u_0|w_XY_SUB[0]~31\,
	sumout => \u_0|w_XY_SUB[1]~25_sumout\,
	cout => \u_0|w_XY_SUB[1]~26\,
	shareout => \u_0|w_XY_SUB[1]~27\);

-- Location: LABCELL_X88_Y12_N6
\u_0|w_XY_SUB[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[2]~1_sumout\ = SUM(( !\u_0|w_REG2\(2) $ (\u_0|w_REG1\(2)) ) + ( \u_0|w_XY_SUB[1]~27\ ) + ( \u_0|w_XY_SUB[1]~26\ ))
-- \u_0|w_XY_SUB[2]~2\ = CARRY(( !\u_0|w_REG2\(2) $ (\u_0|w_REG1\(2)) ) + ( \u_0|w_XY_SUB[1]~27\ ) + ( \u_0|w_XY_SUB[1]~26\ ))
-- \u_0|w_XY_SUB[2]~3\ = SHARE((!\u_0|w_REG2\(2) & \u_0|w_REG1\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(2),
	datad => \u_0|ALT_INV_w_REG1\(2),
	cin => \u_0|w_XY_SUB[1]~26\,
	sharein => \u_0|w_XY_SUB[1]~27\,
	sumout => \u_0|w_XY_SUB[2]~1_sumout\,
	cout => \u_0|w_XY_SUB[2]~2\,
	shareout => \u_0|w_XY_SUB[2]~3\);

-- Location: LABCELL_X88_Y12_N9
\u_0|w_XY_SUB[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[3]~5_sumout\ = SUM(( !\u_0|w_REG2\(3) $ (\u_0|w_REG1\(3)) ) + ( \u_0|w_XY_SUB[2]~3\ ) + ( \u_0|w_XY_SUB[2]~2\ ))
-- \u_0|w_XY_SUB[3]~6\ = CARRY(( !\u_0|w_REG2\(3) $ (\u_0|w_REG1\(3)) ) + ( \u_0|w_XY_SUB[2]~3\ ) + ( \u_0|w_XY_SUB[2]~2\ ))
-- \u_0|w_XY_SUB[3]~7\ = SHARE((!\u_0|w_REG2\(3) & \u_0|w_REG1\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(3),
	datad => \u_0|ALT_INV_w_REG1\(3),
	cin => \u_0|w_XY_SUB[2]~2\,
	sharein => \u_0|w_XY_SUB[2]~3\,
	sumout => \u_0|w_XY_SUB[3]~5_sumout\,
	cout => \u_0|w_XY_SUB[3]~6\,
	shareout => \u_0|w_XY_SUB[3]~7\);

-- Location: LABCELL_X88_Y12_N12
\u_0|w_XY_SUB[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[4]~9_sumout\ = SUM(( !\u_0|w_REG2\(4) $ (\u_0|w_REG1\(4)) ) + ( \u_0|w_XY_SUB[3]~7\ ) + ( \u_0|w_XY_SUB[3]~6\ ))
-- \u_0|w_XY_SUB[4]~10\ = CARRY(( !\u_0|w_REG2\(4) $ (\u_0|w_REG1\(4)) ) + ( \u_0|w_XY_SUB[3]~7\ ) + ( \u_0|w_XY_SUB[3]~6\ ))
-- \u_0|w_XY_SUB[4]~11\ = SHARE((!\u_0|w_REG2\(4) & \u_0|w_REG1\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(4),
	datad => \u_0|ALT_INV_w_REG1\(4),
	cin => \u_0|w_XY_SUB[3]~6\,
	sharein => \u_0|w_XY_SUB[3]~7\,
	sumout => \u_0|w_XY_SUB[4]~9_sumout\,
	cout => \u_0|w_XY_SUB[4]~10\,
	shareout => \u_0|w_XY_SUB[4]~11\);

-- Location: LABCELL_X88_Y12_N15
\u_0|w_XY_SUB[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[5]~13_sumout\ = SUM(( !\u_0|w_REG2\(5) $ (\u_0|w_REG1\(5)) ) + ( \u_0|w_XY_SUB[4]~11\ ) + ( \u_0|w_XY_SUB[4]~10\ ))
-- \u_0|w_XY_SUB[5]~14\ = CARRY(( !\u_0|w_REG2\(5) $ (\u_0|w_REG1\(5)) ) + ( \u_0|w_XY_SUB[4]~11\ ) + ( \u_0|w_XY_SUB[4]~10\ ))
-- \u_0|w_XY_SUB[5]~15\ = SHARE((!\u_0|w_REG2\(5) & \u_0|w_REG1\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG2\(5),
	datad => \u_0|ALT_INV_w_REG1\(5),
	cin => \u_0|w_XY_SUB[4]~10\,
	sharein => \u_0|w_XY_SUB[4]~11\,
	sumout => \u_0|w_XY_SUB[5]~13_sumout\,
	cout => \u_0|w_XY_SUB[5]~14\,
	shareout => \u_0|w_XY_SUB[5]~15\);

-- Location: LABCELL_X88_Y12_N18
\u_0|w_XY_SUB[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[6]~17_sumout\ = SUM(( !\u_0|w_REG2\(6) $ (\u_0|w_REG1\(6)) ) + ( \u_0|w_XY_SUB[5]~15\ ) + ( \u_0|w_XY_SUB[5]~14\ ))
-- \u_0|w_XY_SUB[6]~18\ = CARRY(( !\u_0|w_REG2\(6) $ (\u_0|w_REG1\(6)) ) + ( \u_0|w_XY_SUB[5]~15\ ) + ( \u_0|w_XY_SUB[5]~14\ ))
-- \u_0|w_XY_SUB[6]~19\ = SHARE((!\u_0|w_REG2\(6) & \u_0|w_REG1\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(6),
	datad => \u_0|ALT_INV_w_REG1\(6),
	cin => \u_0|w_XY_SUB[5]~14\,
	sharein => \u_0|w_XY_SUB[5]~15\,
	sumout => \u_0|w_XY_SUB[6]~17_sumout\,
	cout => \u_0|w_XY_SUB[6]~18\,
	shareout => \u_0|w_XY_SUB[6]~19\);

-- Location: IOIBUF_X89_Y13_N55
\i_X[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(6),
	o => \i_X[6]~input_o\);

-- Location: FF_X87_Y12_N55
\u_1|r_STATE_REG.s_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_4~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_4~q\);

-- Location: LABCELL_X88_Y12_N39
\u_1|o_SEL_X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_SEL_X~0_combout\ = ( \u_1|r_STATE_REG.s_6~DUPLICATE_q\ ) # ( !\u_1|r_STATE_REG.s_6~DUPLICATE_q\ & ( (!\u_1|r_STATE_REG.s_5~DUPLICATE_q\) # (\u_1|r_STATE_REG.s_4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_4~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\,
	combout => \u_1|o_SEL_X~0_combout\);

-- Location: LABCELL_X88_Y12_N51
\u_0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|Equal0~0_combout\ = ( \u_0|w_REG1\(3) & ( (\u_0|w_REG2\(3) & (!\u_0|w_REG2\(2) $ (\u_0|w_REG1\(2)))) ) ) # ( !\u_0|w_REG1\(3) & ( (!\u_0|w_REG2\(3) & (!\u_0|w_REG2\(2) $ (\u_0|w_REG1\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_0|ALT_INV_w_REG2\(2),
	datac => \u_0|ALT_INV_w_REG1\(2),
	datad => \u_0|ALT_INV_w_REG2\(3),
	dataf => \u_0|ALT_INV_w_REG1\(3),
	combout => \u_0|Equal0~0_combout\);

-- Location: LABCELL_X85_Y12_N18
\u_1|s_NEXT_STATE.s_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|s_NEXT_STATE.s_1~0_combout\ = ( \i_GO~input_o\ & ( !\u_1|r_STATE_REG.s_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_i_GO~input_o\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_0~q\,
	combout => \u_1|s_NEXT_STATE.s_1~0_combout\);

-- Location: FF_X85_Y12_N19
\u_1|r_STATE_REG.s_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_1~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_1~q\);

-- Location: LABCELL_X88_Y12_N54
\u_1|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|WideOr1~combout\ = ( \u_1|r_STATE_REG.s_5~DUPLICATE_q\ ) # ( !\u_1|r_STATE_REG.s_5~DUPLICATE_q\ & ( (\u_1|r_STATE_REG.s_1~q\) # (\u_1|r_STATE_REG.s_4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_1|ALT_INV_r_STATE_REG.s_4~q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_1~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\,
	combout => \u_1|WideOr1~combout\);

-- Location: FF_X87_Y12_N11
\u_1|r_STATE_REG.s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_1|WideOr1~combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_2~q\);

-- Location: LABCELL_X88_Y12_N24
\u_1|s_NEXT_STATE.s_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|s_NEXT_STATE.s_3~0_combout\ = ( \u_0|Equal0~1_combout\ & ( \u_0|w_REG1\(4) & ( (\u_1|r_STATE_REG.s_2~q\ & ((!\u_0|w_REG2\(4)) # ((!\u_0|Equal0~2_combout\) # (!\u_0|Equal0~0_combout\)))) ) ) ) # ( !\u_0|Equal0~1_combout\ & ( \u_0|w_REG1\(4) & ( 
-- \u_1|r_STATE_REG.s_2~q\ ) ) ) # ( \u_0|Equal0~1_combout\ & ( !\u_0|w_REG1\(4) & ( (\u_1|r_STATE_REG.s_2~q\ & (((!\u_0|Equal0~2_combout\) # (!\u_0|Equal0~0_combout\)) # (\u_0|w_REG2\(4)))) ) ) ) # ( !\u_0|Equal0~1_combout\ & ( !\u_0|w_REG1\(4) & ( 
-- \u_1|r_STATE_REG.s_2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111110100000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG2\(4),
	datab => \u_0|ALT_INV_Equal0~2_combout\,
	datac => \u_0|ALT_INV_Equal0~0_combout\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_2~q\,
	datae => \u_0|ALT_INV_Equal0~1_combout\,
	dataf => \u_0|ALT_INV_w_REG1\(4),
	combout => \u_1|s_NEXT_STATE.s_3~0_combout\);

-- Location: FF_X88_Y12_N25
\u_1|r_STATE_REG.s_3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_3~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_3~DUPLICATE_q\);

-- Location: LABCELL_X88_Y12_N57
\u_1|o_LD_X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_LD_X~0_combout\ = ( !\u_1|r_STATE_REG.s_2~q\ & ( (!\u_1|r_STATE_REG.s_4~q\ & (!\u_1|r_STATE_REG.s_3~DUPLICATE_q\ & (!\u_1|r_STATE_REG.s_6~DUPLICATE_q\ & \u_1|r_STATE_REG.s_0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_1|ALT_INV_r_STATE_REG.s_4~q\,
	datab => \u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\,
	datac => \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_0~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_2~q\,
	combout => \u_1|o_LD_X~0_combout\);

-- Location: FF_X88_Y12_N20
\u_0|w_REG1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[6]~17_sumout\,
	asdata => \i_X[6]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(6));

-- Location: MLABCELL_X87_Y12_N36
\u_0|w_YX_SUB[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[2]~1_sumout\ = SUM(( !\u_0|w_REG1\(2) $ (\u_0|w_REG2\(2)) ) + ( \u_0|w_YX_SUB[1]~27\ ) + ( \u_0|w_YX_SUB[1]~26\ ))
-- \u_0|w_YX_SUB[2]~2\ = CARRY(( !\u_0|w_REG1\(2) $ (\u_0|w_REG2\(2)) ) + ( \u_0|w_YX_SUB[1]~27\ ) + ( \u_0|w_YX_SUB[1]~26\ ))
-- \u_0|w_YX_SUB[2]~3\ = SHARE((!\u_0|w_REG1\(2) & \u_0|w_REG2\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_0|ALT_INV_w_REG1\(2),
	datad => \u_0|ALT_INV_w_REG2\(2),
	cin => \u_0|w_YX_SUB[1]~26\,
	sharein => \u_0|w_YX_SUB[1]~27\,
	sumout => \u_0|w_YX_SUB[2]~1_sumout\,
	cout => \u_0|w_YX_SUB[2]~2\,
	shareout => \u_0|w_YX_SUB[2]~3\);

-- Location: MLABCELL_X87_Y12_N39
\u_0|w_YX_SUB[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[3]~5_sumout\ = SUM(( !\u_0|w_REG1\(3) $ (\u_0|w_REG2\(3)) ) + ( \u_0|w_YX_SUB[2]~3\ ) + ( \u_0|w_YX_SUB[2]~2\ ))
-- \u_0|w_YX_SUB[3]~6\ = CARRY(( !\u_0|w_REG1\(3) $ (\u_0|w_REG2\(3)) ) + ( \u_0|w_YX_SUB[2]~3\ ) + ( \u_0|w_YX_SUB[2]~2\ ))
-- \u_0|w_YX_SUB[3]~7\ = SHARE((!\u_0|w_REG1\(3) & \u_0|w_REG2\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(3),
	datad => \u_0|ALT_INV_w_REG2\(3),
	cin => \u_0|w_YX_SUB[2]~2\,
	sharein => \u_0|w_YX_SUB[2]~3\,
	sumout => \u_0|w_YX_SUB[3]~5_sumout\,
	cout => \u_0|w_YX_SUB[3]~6\,
	shareout => \u_0|w_YX_SUB[3]~7\);

-- Location: MLABCELL_X87_Y12_N42
\u_0|w_YX_SUB[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[4]~9_sumout\ = SUM(( !\u_0|w_REG1\(4) $ (\u_0|w_REG2\(4)) ) + ( \u_0|w_YX_SUB[3]~7\ ) + ( \u_0|w_YX_SUB[3]~6\ ))
-- \u_0|w_YX_SUB[4]~10\ = CARRY(( !\u_0|w_REG1\(4) $ (\u_0|w_REG2\(4)) ) + ( \u_0|w_YX_SUB[3]~7\ ) + ( \u_0|w_YX_SUB[3]~6\ ))
-- \u_0|w_YX_SUB[4]~11\ = SHARE((!\u_0|w_REG1\(4) & \u_0|w_REG2\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_0|ALT_INV_w_REG1\(4),
	datad => \u_0|ALT_INV_w_REG2\(4),
	cin => \u_0|w_YX_SUB[3]~6\,
	sharein => \u_0|w_YX_SUB[3]~7\,
	sumout => \u_0|w_YX_SUB[4]~9_sumout\,
	cout => \u_0|w_YX_SUB[4]~10\,
	shareout => \u_0|w_YX_SUB[4]~11\);

-- Location: MLABCELL_X87_Y12_N45
\u_0|w_YX_SUB[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[5]~13_sumout\ = SUM(( !\u_0|w_REG1\(5) $ (\u_0|w_REG2\(5)) ) + ( \u_0|w_YX_SUB[4]~11\ ) + ( \u_0|w_YX_SUB[4]~10\ ))
-- \u_0|w_YX_SUB[5]~14\ = CARRY(( !\u_0|w_REG1\(5) $ (\u_0|w_REG2\(5)) ) + ( \u_0|w_YX_SUB[4]~11\ ) + ( \u_0|w_YX_SUB[4]~10\ ))
-- \u_0|w_YX_SUB[5]~15\ = SHARE((!\u_0|w_REG1\(5) & \u_0|w_REG2\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(5),
	datad => \u_0|ALT_INV_w_REG2\(5),
	cin => \u_0|w_YX_SUB[4]~10\,
	sharein => \u_0|w_YX_SUB[4]~11\,
	sumout => \u_0|w_YX_SUB[5]~13_sumout\,
	cout => \u_0|w_YX_SUB[5]~14\,
	shareout => \u_0|w_YX_SUB[5]~15\);

-- Location: MLABCELL_X87_Y12_N48
\u_0|w_YX_SUB[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[6]~17_sumout\ = SUM(( !\u_0|w_REG1\(6) $ (\u_0|w_REG2\(6)) ) + ( \u_0|w_YX_SUB[5]~15\ ) + ( \u_0|w_YX_SUB[5]~14\ ))
-- \u_0|w_YX_SUB[6]~18\ = CARRY(( !\u_0|w_REG1\(6) $ (\u_0|w_REG2\(6)) ) + ( \u_0|w_YX_SUB[5]~15\ ) + ( \u_0|w_YX_SUB[5]~14\ ))
-- \u_0|w_YX_SUB[6]~19\ = SHARE((!\u_0|w_REG1\(6) & \u_0|w_REG2\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG1\(6),
	datad => \u_0|ALT_INV_w_REG2\(6),
	cin => \u_0|w_YX_SUB[5]~14\,
	sharein => \u_0|w_YX_SUB[5]~15\,
	sumout => \u_0|w_YX_SUB[6]~17_sumout\,
	cout => \u_0|w_YX_SUB[6]~18\,
	shareout => \u_0|w_YX_SUB[6]~19\);

-- Location: IOIBUF_X89_Y8_N4
\i_Y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(6),
	o => \i_Y[6]~input_o\);

-- Location: MLABCELL_X87_Y12_N0
\u_1|o_LD_Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_LD_Y~0_combout\ = ( !\u_1|r_STATE_REG.s_5~DUPLICATE_q\ & ( (!\u_1|r_STATE_REG.s_6~q\ & (!\u_1|r_STATE_REG.s_3~DUPLICATE_q\ & (!\u_1|r_STATE_REG.s_2~q\ & \u_1|r_STATE_REG.s_0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_1|ALT_INV_r_STATE_REG.s_6~q\,
	datab => \u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\,
	datac => \u_1|ALT_INV_r_STATE_REG.s_2~q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_0~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\,
	combout => \u_1|o_LD_Y~0_combout\);

-- Location: FF_X87_Y12_N50
\u_0|w_REG2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[6]~17_sumout\,
	asdata => \i_Y[6]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(6));

-- Location: LABCELL_X88_Y12_N21
\u_0|w_XY_SUB[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_XY_SUB[7]~21_sumout\ = SUM(( !\u_0|w_REG2\(7) $ (\u_0|w_REG1\(7)) ) + ( \u_0|w_XY_SUB[6]~19\ ) + ( \u_0|w_XY_SUB[6]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u_0|ALT_INV_w_REG2\(7),
	datad => \u_0|ALT_INV_w_REG1\(7),
	cin => \u_0|w_XY_SUB[6]~18\,
	sharein => \u_0|w_XY_SUB[6]~19\,
	sumout => \u_0|w_XY_SUB[7]~21_sumout\);

-- Location: IOIBUF_X89_Y9_N4
\i_X[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(7),
	o => \i_X[7]~input_o\);

-- Location: FF_X88_Y12_N23
\u_0|w_REG1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[7]~21_sumout\,
	asdata => \i_X[7]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(7));

-- Location: MLABCELL_X87_Y12_N51
\u_0|w_YX_SUB[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|w_YX_SUB[7]~21_sumout\ = SUM(( !\u_0|w_REG1\(7) $ (\u_0|w_REG2\(7)) ) + ( \u_0|w_YX_SUB[6]~19\ ) + ( \u_0|w_YX_SUB[6]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(7),
	datad => \u_0|ALT_INV_w_REG2\(7),
	cin => \u_0|w_YX_SUB[6]~18\,
	sharein => \u_0|w_YX_SUB[6]~19\,
	sumout => \u_0|w_YX_SUB[7]~21_sumout\);

-- Location: IOIBUF_X89_Y13_N4
\i_Y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(7),
	o => \i_Y[7]~input_o\);

-- Location: FF_X87_Y12_N53
\u_0|w_REG2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[7]~21_sumout\,
	asdata => \i_Y[7]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(7));

-- Location: LABCELL_X88_Y12_N42
\u_0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|LessThan0~2_combout\ = ( \u_0|w_REG1\(7) & ( \u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(6)) # ((!\u_0|w_REG2\(7)) # ((\u_0|w_REG1\(5) & !\u_0|w_REG2\(5)))) ) ) ) # ( !\u_0|w_REG1\(7) & ( \u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(7) & ((!\u_0|w_REG2\(6)) # 
-- ((\u_0|w_REG1\(5) & !\u_0|w_REG2\(5))))) ) ) ) # ( \u_0|w_REG1\(7) & ( !\u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(7)) # ((!\u_0|w_REG2\(6) & (\u_0|w_REG1\(5) & !\u_0|w_REG2\(5)))) ) ) ) # ( !\u_0|w_REG1\(7) & ( !\u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(6) & 
-- (\u_0|w_REG1\(5) & (!\u_0|w_REG2\(5) & !\u_0|w_REG2\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111111110010000010111010000000001111111110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG2\(6),
	datab => \u_0|ALT_INV_w_REG1\(5),
	datac => \u_0|ALT_INV_w_REG2\(5),
	datad => \u_0|ALT_INV_w_REG2\(7),
	datae => \u_0|ALT_INV_w_REG1\(7),
	dataf => \u_0|ALT_INV_w_REG1\(6),
	combout => \u_0|LessThan0~2_combout\);

-- Location: MLABCELL_X87_Y12_N54
\u_1|s_NEXT_STATE.s_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|s_NEXT_STATE.s_4~0_combout\ = ( \u_1|r_STATE_REG.s_3~DUPLICATE_q\ & ( \u_0|w_REG1\(4) & ( (!\u_0|LessThan0~2_combout\ & ((!\u_0|Equal0~1_combout\) # ((!\u_0|LessThan0~1_combout\ & \u_0|w_REG2\(4))))) ) ) ) # ( \u_1|r_STATE_REG.s_3~DUPLICATE_q\ & ( 
-- !\u_0|w_REG1\(4) & ( (!\u_0|LessThan0~2_combout\ & ((!\u_0|Equal0~1_combout\) # ((!\u_0|LessThan0~1_combout\) # (\u_0|w_REG2\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111000000000000000000001010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_Equal0~1_combout\,
	datab => \u_0|ALT_INV_LessThan0~1_combout\,
	datac => \u_0|ALT_INV_LessThan0~2_combout\,
	datad => \u_0|ALT_INV_w_REG2\(4),
	datae => \u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\,
	dataf => \u_0|ALT_INV_w_REG1\(4),
	combout => \u_1|s_NEXT_STATE.s_4~0_combout\);

-- Location: FF_X87_Y12_N56
\u_1|r_STATE_REG.s_4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_4~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_4~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N6
\u_1|o_SEL_Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_SEL_Y~0_combout\ = ( \u_1|r_STATE_REG.s_5~DUPLICATE_q\ ) # ( !\u_1|r_STATE_REG.s_5~DUPLICATE_q\ & ( (!\u_1|r_STATE_REG.s_4~DUPLICATE_q\) # (\u_1|r_STATE_REG.s_6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_1|ALT_INV_r_STATE_REG.s_6~q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_4~DUPLICATE_q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\,
	combout => \u_1|o_SEL_Y~0_combout\);

-- Location: FF_X87_Y12_N35
\u_0|w_REG2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[1]~25_sumout\,
	asdata => \i_Y[1]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(1));

-- Location: IOIBUF_X89_Y15_N55
\i_X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(1),
	o => \i_X[1]~input_o\);

-- Location: FF_X88_Y12_N5
\u_0|w_REG1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[1]~25_sumout\,
	asdata => \i_X[1]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(1));

-- Location: IOIBUF_X89_Y13_N21
\i_Y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(2),
	o => \i_Y[2]~input_o\);

-- Location: FF_X87_Y12_N38
\u_0|w_REG2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[2]~1_sumout\,
	asdata => \i_Y[2]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(2));

-- Location: IOIBUF_X89_Y15_N38
\i_X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(2),
	o => \i_X[2]~input_o\);

-- Location: FF_X88_Y12_N8
\u_0|w_REG1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[2]~1_sumout\,
	asdata => \i_X[2]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(2));

-- Location: IOIBUF_X89_Y11_N95
\i_Y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(3),
	o => \i_Y[3]~input_o\);

-- Location: FF_X87_Y12_N41
\u_0|w_REG2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[3]~5_sumout\,
	asdata => \i_Y[3]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(3));

-- Location: IOIBUF_X89_Y9_N38
\i_X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(3),
	o => \i_X[3]~input_o\);

-- Location: FF_X88_Y12_N11
\u_0|w_REG1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[3]~5_sumout\,
	asdata => \i_X[3]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(3));

-- Location: IOIBUF_X89_Y11_N78
\i_Y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(4),
	o => \i_Y[4]~input_o\);

-- Location: FF_X87_Y12_N44
\u_0|w_REG2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[4]~9_sumout\,
	asdata => \i_Y[4]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(4));

-- Location: IOIBUF_X89_Y15_N21
\i_X[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(4),
	o => \i_X[4]~input_o\);

-- Location: FF_X88_Y12_N14
\u_0|w_REG1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[4]~9_sumout\,
	asdata => \i_X[4]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(4));

-- Location: IOIBUF_X89_Y15_N4
\i_Y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y(5),
	o => \i_Y[5]~input_o\);

-- Location: FF_X87_Y12_N47
\u_0|w_REG2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[5]~13_sumout\,
	asdata => \i_Y[5]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(5));

-- Location: IOIBUF_X89_Y9_N55
\i_X[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(5),
	o => \i_X[5]~input_o\);

-- Location: FF_X88_Y12_N17
\u_0|w_REG1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[5]~13_sumout\,
	asdata => \i_X[5]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(5));

-- Location: MLABCELL_X87_Y12_N12
\u_0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|Equal0~1_combout\ = ( \u_0|w_REG1\(7) & ( \u_0|w_REG1\(6) & ( (\u_0|w_REG2\(7) & (\u_0|w_REG2\(6) & (!\u_0|w_REG1\(5) $ (\u_0|w_REG2\(5))))) ) ) ) # ( !\u_0|w_REG1\(7) & ( \u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(7) & (\u_0|w_REG2\(6) & (!\u_0|w_REG1\(5) $ 
-- (\u_0|w_REG2\(5))))) ) ) ) # ( \u_0|w_REG1\(7) & ( !\u_0|w_REG1\(6) & ( (\u_0|w_REG2\(7) & (!\u_0|w_REG2\(6) & (!\u_0|w_REG1\(5) $ (\u_0|w_REG2\(5))))) ) ) ) # ( !\u_0|w_REG1\(7) & ( !\u_0|w_REG1\(6) & ( (!\u_0|w_REG2\(7) & (!\u_0|w_REG2\(6) & 
-- (!\u_0|w_REG1\(5) $ (\u_0|w_REG2\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(5),
	datab => \u_0|ALT_INV_w_REG2\(5),
	datac => \u_0|ALT_INV_w_REG2\(7),
	datad => \u_0|ALT_INV_w_REG2\(6),
	datae => \u_0|ALT_INV_w_REG1\(7),
	dataf => \u_0|ALT_INV_w_REG1\(6),
	combout => \u_0|Equal0~1_combout\);

-- Location: LABCELL_X88_Y12_N30
\u_1|s_NEXT_STATE.s_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|s_NEXT_STATE.s_5~0_combout\ = ( \u_0|LessThan0~1_combout\ & ( \u_1|r_STATE_REG.s_3~DUPLICATE_q\ & ( ((\u_0|Equal0~1_combout\ & ((!\u_0|w_REG2\(4)) # (\u_0|w_REG1\(4))))) # (\u_0|LessThan0~2_combout\) ) ) ) # ( !\u_0|LessThan0~1_combout\ & ( 
-- \u_1|r_STATE_REG.s_3~DUPLICATE_q\ & ( ((\u_0|Equal0~1_combout\ & (!\u_0|w_REG2\(4) & \u_0|w_REG1\(4)))) # (\u_0|LessThan0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011011100110111001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_Equal0~1_combout\,
	datab => \u_0|ALT_INV_LessThan0~2_combout\,
	datac => \u_0|ALT_INV_w_REG2\(4),
	datad => \u_0|ALT_INV_w_REG1\(4),
	datae => \u_0|ALT_INV_LessThan0~1_combout\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_3~DUPLICATE_q\,
	combout => \u_1|s_NEXT_STATE.s_5~0_combout\);

-- Location: FF_X88_Y12_N32
\u_1|r_STATE_REG.s_5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_5~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_5~DUPLICATE_q\);

-- Location: FF_X88_Y12_N26
\u_1|r_STATE_REG.s_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_3~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_3~q\);

-- Location: MLABCELL_X87_Y12_N24
\u_1|o_CLR_X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_CLR_X~0_combout\ = ( !\u_1|r_STATE_REG.s_4~DUPLICATE_q\ & ( !\u_1|r_STATE_REG.s_3~q\ & ( (\u_1|r_STATE_REG.s_0~q\ & (!\u_1|r_STATE_REG.s_6~DUPLICATE_q\ & (!\u_1|r_STATE_REG.s_5~DUPLICATE_q\ & !\u_1|r_STATE_REG.s_2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_1|ALT_INV_r_STATE_REG.s_0~q\,
	datab => \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\,
	datac => \u_1|ALT_INV_r_STATE_REG.s_5~DUPLICATE_q\,
	datad => \u_1|ALT_INV_r_STATE_REG.s_2~q\,
	datae => \u_1|ALT_INV_r_STATE_REG.s_4~DUPLICATE_q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_3~q\,
	combout => \u_1|o_CLR_X~0_combout\);

-- Location: FF_X87_Y12_N32
\u_0|w_REG2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_YX_SUB[0]~29_sumout\,
	asdata => \i_Y[0]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_Y~0_combout\,
	ena => \u_1|o_LD_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG2\(0));

-- Location: IOIBUF_X89_Y16_N55
\i_X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X(0),
	o => \i_X[0]~input_o\);

-- Location: FF_X88_Y12_N2
\u_0|w_REG1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_0|w_XY_SUB[0]~29_sumout\,
	asdata => \i_X[0]~input_o\,
	clrn => \u_1|ALT_INV_o_CLR_X~0_combout\,
	sload => \u_1|o_SEL_X~0_combout\,
	ena => \u_1|o_LD_X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_0|w_REG1\(0));

-- Location: MLABCELL_X87_Y12_N9
\u_0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|Equal0~2_combout\ = ( \u_0|w_REG2\(1) & ( (\u_0|w_REG1\(1) & (!\u_0|w_REG1\(0) $ (\u_0|w_REG2\(0)))) ) ) # ( !\u_0|w_REG2\(1) & ( (!\u_0|w_REG1\(1) & (!\u_0|w_REG1\(0) $ (\u_0|w_REG2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000000001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_w_REG1\(0),
	datab => \u_0|ALT_INV_w_REG2\(0),
	datac => \u_0|ALT_INV_w_REG1\(1),
	dataf => \u_0|ALT_INV_w_REG2\(1),
	combout => \u_0|Equal0~2_combout\);

-- Location: MLABCELL_X87_Y12_N18
\u_1|s_NEXT_STATE.s_6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|s_NEXT_STATE.s_6~0_combout\ = ( \u_1|r_STATE_REG.s_2~q\ & ( \u_0|w_REG1\(4) & ( (\u_0|Equal0~2_combout\ & (\u_0|Equal0~1_combout\ & (\u_0|Equal0~0_combout\ & \u_0|w_REG2\(4)))) ) ) ) # ( \u_1|r_STATE_REG.s_2~q\ & ( !\u_0|w_REG1\(4) & ( 
-- (\u_0|Equal0~2_combout\ & (\u_0|Equal0~1_combout\ & (\u_0|Equal0~0_combout\ & !\u_0|w_REG2\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|ALT_INV_Equal0~2_combout\,
	datab => \u_0|ALT_INV_Equal0~1_combout\,
	datac => \u_0|ALT_INV_Equal0~0_combout\,
	datad => \u_0|ALT_INV_w_REG2\(4),
	datae => \u_1|ALT_INV_r_STATE_REG.s_2~q\,
	dataf => \u_0|ALT_INV_w_REG1\(4),
	combout => \u_1|s_NEXT_STATE.s_6~0_combout\);

-- Location: FF_X87_Y12_N19
\u_1|r_STATE_REG.s_6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_6~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_6~DUPLICATE_q\);

-- Location: FF_X88_Y12_N31
\u_1|r_STATE_REG.s_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|s_NEXT_STATE.s_5~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|r_STATE_REG.s_5~q\);

-- Location: LABCELL_X85_Y12_N51
\u_1|o_RDY~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_RDY~0_combout\ = ( \u_1|r_STATE_REG.s_4~q\ & ( \u_1|r_STATE_REG.s_5~q\ ) ) # ( !\u_1|r_STATE_REG.s_4~q\ & ( \u_1|r_STATE_REG.s_5~q\ ) ) # ( \u_1|r_STATE_REG.s_4~q\ & ( !\u_1|r_STATE_REG.s_5~q\ ) ) # ( !\u_1|r_STATE_REG.s_4~q\ & ( 
-- !\u_1|r_STATE_REG.s_5~q\ & ( !\u_1|r_STATE_REG.s_6~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_1|ALT_INV_r_STATE_REG.s_6~DUPLICATE_q\,
	datae => \u_1|ALT_INV_r_STATE_REG.s_4~q\,
	dataf => \u_1|ALT_INV_r_STATE_REG.s_5~q\,
	combout => \u_1|o_RDY~0_combout\);

-- Location: LABCELL_X17_Y49_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


