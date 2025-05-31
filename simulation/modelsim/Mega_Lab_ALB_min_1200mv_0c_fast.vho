-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/23/2025 23:38:00"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mega_Lab_ALB IS
    PORT (
	MR : IN std_logic_vector(3 DOWNTO 0);
	MS : IN std_logic_vector(3 DOWNTO 0);
	CI : IN std_logic;
	ALB_MI : IN std_logic_vector(2 DOWNTO 0);
	F_ALB : OUT std_logic_vector(3 DOWNTO 0);
	CO : OUT std_logic;
	VO : OUT std_logic;
	NO : OUT std_logic;
	ZO : OUT std_logic
	);
END Mega_Lab_ALB;

-- Design Ports Information
-- F_ALB[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_ALB[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_ALB[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_ALB[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CO	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VO	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NO	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZO	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MS[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALB_MI[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CI	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALB_MI[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALB_MI[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MS[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MS[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MS[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mega_Lab_ALB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CI : std_logic;
SIGNAL ww_ALB_MI : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F_ALB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CO : std_logic;
SIGNAL ww_VO : std_logic;
SIGNAL ww_NO : std_logic;
SIGNAL ww_ZO : std_logic;
SIGNAL \F_ALB[0]~output_o\ : std_logic;
SIGNAL \F_ALB[1]~output_o\ : std_logic;
SIGNAL \F_ALB[2]~output_o\ : std_logic;
SIGNAL \F_ALB[3]~output_o\ : std_logic;
SIGNAL \CO~output_o\ : std_logic;
SIGNAL \VO~output_o\ : std_logic;
SIGNAL \NO~output_o\ : std_logic;
SIGNAL \ZO~output_o\ : std_logic;
SIGNAL \ALB_MI[1]~input_o\ : std_logic;
SIGNAL \ALB_MI[0]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \ALB_MI[2]~input_o\ : std_logic;
SIGNAL \MR[0]~input_o\ : std_logic;
SIGNAL \MS[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \CI~input_o\ : std_logic;
SIGNAL \SUB|Add0~1_cout\ : std_logic;
SIGNAL \SUB|Add0~2_combout\ : std_logic;
SIGNAL \ADD|Add0~1_cout\ : std_logic;
SIGNAL \ADD|Add0~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \MR[1]~input_o\ : std_logic;
SIGNAL \MS[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ADD|Add0~3\ : std_logic;
SIGNAL \ADD|Add0~4_combout\ : std_logic;
SIGNAL \SUB|Add0~3\ : std_logic;
SIGNAL \SUB|Add0~4_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \MS[2]~input_o\ : std_logic;
SIGNAL \MR[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ADD|Add0~5\ : std_logic;
SIGNAL \ADD|Add0~6_combout\ : std_logic;
SIGNAL \SUB|Add0~5\ : std_logic;
SIGNAL \SUB|Add0~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \MR[3]~input_o\ : std_logic;
SIGNAL \MS[3]~input_o\ : std_logic;
SIGNAL \SUB|Add0~7\ : std_logic;
SIGNAL \SUB|Add0~8_combout\ : std_logic;
SIGNAL \ADD|Add0~7\ : std_logic;
SIGNAL \ADD|Add0~8_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \SUB|Add0~9\ : std_logic;
SIGNAL \SUB|Add0~10_combout\ : std_logic;
SIGNAL \VO~0_combout\ : std_logic;
SIGNAL \ADD|Add0~9\ : std_logic;
SIGNAL \ADD|Add0~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CO~0_combout\ : std_logic;
SIGNAL \VO~2_combout\ : std_logic;
SIGNAL \VO~1_combout\ : std_logic;
SIGNAL \VO~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;

BEGIN

ww_MR <= MR;
ww_MS <= MS;
ww_CI <= CI;
ww_ALB_MI <= ALB_MI;
F_ALB <= ww_F_ALB;
CO <= ww_CO;
VO <= ww_VO;
NO <= ww_NO;
ZO <= ww_ZO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X28_Y0_N23
\F_ALB[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \F_ALB[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\F_ALB[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \F_ALB[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\F_ALB[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \F_ALB[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\F_ALB[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \F_ALB[3]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\CO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CO~0_combout\,
	devoe => ww_devoe,
	o => \CO~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\VO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VO~3_combout\,
	devoe => ww_devoe,
	o => \VO~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\NO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \NO~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\ZO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => \ZO~output_o\);

-- Location: IOIBUF_X11_Y0_N8
\ALB_MI[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALB_MI(1),
	o => \ALB_MI[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\ALB_MI[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALB_MI(0),
	o => \ALB_MI[0]~input_o\);

-- Location: LCCOMB_X21_Y5_N10
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \ALB_MI[1]~input_o\ $ (\ALB_MI[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALB_MI[1]~input_o\,
	datad => \ALB_MI[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X0_Y23_N1
\ALB_MI[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALB_MI(2),
	o => \ALB_MI[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\MR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR(0),
	o => \MR[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\MS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MS(0),
	o => \MS[0]~input_o\);

-- Location: LCCOMB_X21_Y5_N8
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ALB_MI[0]~input_o\ & (\MR[0]~input_o\ & \MS[0]~input_o\)) # (!\ALB_MI[0]~input_o\ & ((\MR[0]~input_o\) # (\MS[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALB_MI[0]~input_o\,
	datab => \MR[0]~input_o\,
	datac => \MS[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X0_Y9_N1
\CI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CI,
	o => \CI~input_o\);

-- Location: LCCOMB_X12_Y5_N6
\SUB|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~1_cout\ = CARRY(\CI~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CI~input_o\,
	datad => VCC,
	cout => \SUB|Add0~1_cout\);

-- Location: LCCOMB_X12_Y5_N8
\SUB|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~2_combout\ = (\MR[0]~input_o\ & ((\MS[0]~input_o\ & (!\SUB|Add0~1_cout\)) # (!\MS[0]~input_o\ & (\SUB|Add0~1_cout\ & VCC)))) # (!\MR[0]~input_o\ & ((\MS[0]~input_o\ & ((\SUB|Add0~1_cout\) # (GND))) # (!\MS[0]~input_o\ & (!\SUB|Add0~1_cout\))))
-- \SUB|Add0~3\ = CARRY((\MR[0]~input_o\ & (\MS[0]~input_o\ & !\SUB|Add0~1_cout\)) # (!\MR[0]~input_o\ & ((\MS[0]~input_o\) # (!\SUB|Add0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[0]~input_o\,
	datab => \MS[0]~input_o\,
	datad => VCC,
	cin => \SUB|Add0~1_cout\,
	combout => \SUB|Add0~2_combout\,
	cout => \SUB|Add0~3\);

-- Location: LCCOMB_X12_Y5_N20
\ADD|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~1_cout\ = CARRY(\CI~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CI~input_o\,
	datad => VCC,
	cout => \ADD|Add0~1_cout\);

-- Location: LCCOMB_X12_Y5_N22
\ADD|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~2_combout\ = (\MR[0]~input_o\ & ((\MS[0]~input_o\ & (\ADD|Add0~1_cout\ & VCC)) # (!\MS[0]~input_o\ & (!\ADD|Add0~1_cout\)))) # (!\MR[0]~input_o\ & ((\MS[0]~input_o\ & (!\ADD|Add0~1_cout\)) # (!\MS[0]~input_o\ & ((\ADD|Add0~1_cout\) # (GND)))))
-- \ADD|Add0~3\ = CARRY((\MR[0]~input_o\ & (!\MS[0]~input_o\ & !\ADD|Add0~1_cout\)) # (!\MR[0]~input_o\ & ((!\ADD|Add0~1_cout\) # (!\MS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[0]~input_o\,
	datab => \MS[0]~input_o\,
	datad => VCC,
	cin => \ADD|Add0~1_cout\,
	combout => \ADD|Add0~2_combout\,
	cout => \ADD|Add0~3\);

-- Location: LCCOMB_X26_Y5_N16
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ALB_MI[0]~input_o\ & ((\ADD|Add0~2_combout\))) # (!\ALB_MI[0]~input_o\ & (\SUB|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~2_combout\,
	datab => \ADD|Add0~2_combout\,
	datac => \ALB_MI[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X21_Y5_N28
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!\ALB_MI[2]~input_o\ & ((\Mux3~2_combout\ & (\Mux3~0_combout\)) # (!\Mux3~2_combout\ & ((\Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \ALB_MI[2]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X0_Y4_N15
\MR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR(1),
	o => \MR[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\MS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MS(1),
	o => \MS[1]~input_o\);

-- Location: LCCOMB_X12_Y5_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\MR[1]~input_o\ & ((\ALB_MI[1]~input_o\) # (\MS[1]~input_o\))) # (!\MR[1]~input_o\ & (\ALB_MI[1]~input_o\ & \MS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MR[1]~input_o\,
	datac => \ALB_MI[1]~input_o\,
	datad => \MS[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X12_Y5_N24
\ADD|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~4_combout\ = ((\MR[1]~input_o\ $ (\MS[1]~input_o\ $ (!\ADD|Add0~3\)))) # (GND)
-- \ADD|Add0~5\ = CARRY((\MR[1]~input_o\ & ((\MS[1]~input_o\) # (!\ADD|Add0~3\))) # (!\MR[1]~input_o\ & (\MS[1]~input_o\ & !\ADD|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[1]~input_o\,
	datab => \MS[1]~input_o\,
	datad => VCC,
	cin => \ADD|Add0~3\,
	combout => \ADD|Add0~4_combout\,
	cout => \ADD|Add0~5\);

-- Location: LCCOMB_X12_Y5_N10
\SUB|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~4_combout\ = ((\MR[1]~input_o\ $ (\MS[1]~input_o\ $ (\SUB|Add0~3\)))) # (GND)
-- \SUB|Add0~5\ = CARRY((\MR[1]~input_o\ & ((!\SUB|Add0~3\) # (!\MS[1]~input_o\))) # (!\MR[1]~input_o\ & (!\MS[1]~input_o\ & !\SUB|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[1]~input_o\,
	datab => \MS[1]~input_o\,
	datad => VCC,
	cin => \SUB|Add0~3\,
	combout => \SUB|Add0~4_combout\,
	cout => \SUB|Add0~5\);

-- Location: LCCOMB_X12_Y5_N2
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ALB_MI[1]~input_o\ & (\ADD|Add0~4_combout\)) # (!\ALB_MI[1]~input_o\ & ((\SUB|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD|Add0~4_combout\,
	datac => \ALB_MI[1]~input_o\,
	datad => \SUB|Add0~4_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X21_Y5_N6
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = \ALB_MI[1]~input_o\ $ (\ALB_MI[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALB_MI[1]~input_o\,
	datad => \ALB_MI[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (!\ALB_MI[2]~input_o\ & ((\Mux2~2_combout\ & (\Mux2~0_combout\)) # (!\Mux2~2_combout\ & ((\Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \ALB_MI[2]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X0_Y6_N15
\MS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MS(2),
	o => \MS[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\MR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR(2),
	o => \MR[2]~input_o\);

-- Location: LCCOMB_X12_Y5_N4
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\MS[2]~input_o\ & ((\MR[2]~input_o\) # (!\ALB_MI[0]~input_o\))) # (!\MS[2]~input_o\ & (\MR[2]~input_o\ & !\ALB_MI[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MS[2]~input_o\,
	datac => \MR[2]~input_o\,
	datad => \ALB_MI[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X12_Y5_N26
\ADD|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~6_combout\ = (\MR[2]~input_o\ & ((\MS[2]~input_o\ & (\ADD|Add0~5\ & VCC)) # (!\MS[2]~input_o\ & (!\ADD|Add0~5\)))) # (!\MR[2]~input_o\ & ((\MS[2]~input_o\ & (!\ADD|Add0~5\)) # (!\MS[2]~input_o\ & ((\ADD|Add0~5\) # (GND)))))
-- \ADD|Add0~7\ = CARRY((\MR[2]~input_o\ & (!\MS[2]~input_o\ & !\ADD|Add0~5\)) # (!\MR[2]~input_o\ & ((!\ADD|Add0~5\) # (!\MS[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[2]~input_o\,
	datab => \MS[2]~input_o\,
	datad => VCC,
	cin => \ADD|Add0~5\,
	combout => \ADD|Add0~6_combout\,
	cout => \ADD|Add0~7\);

-- Location: LCCOMB_X12_Y5_N12
\SUB|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~6_combout\ = (\MR[2]~input_o\ & ((\MS[2]~input_o\ & (!\SUB|Add0~5\)) # (!\MS[2]~input_o\ & (\SUB|Add0~5\ & VCC)))) # (!\MR[2]~input_o\ & ((\MS[2]~input_o\ & ((\SUB|Add0~5\) # (GND))) # (!\MS[2]~input_o\ & (!\SUB|Add0~5\))))
-- \SUB|Add0~7\ = CARRY((\MR[2]~input_o\ & (\MS[2]~input_o\ & !\SUB|Add0~5\)) # (!\MR[2]~input_o\ & ((\MS[2]~input_o\) # (!\SUB|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[2]~input_o\,
	datab => \MS[2]~input_o\,
	datad => VCC,
	cin => \SUB|Add0~5\,
	combout => \SUB|Add0~6_combout\,
	cout => \SUB|Add0~7\);

-- Location: LCCOMB_X21_Y5_N26
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ALB_MI[0]~input_o\ & (\ADD|Add0~6_combout\)) # (!\ALB_MI[0]~input_o\ & ((\SUB|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALB_MI[0]~input_o\,
	datac => \ADD|Add0~6_combout\,
	datad => \SUB|Add0~6_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y5_N20
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\ALB_MI[2]~input_o\ & ((\Mux3~2_combout\ & (\Mux1~0_combout\)) # (!\Mux3~2_combout\ & ((\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \ALB_MI[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X0_Y4_N22
\MR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR(3),
	o => \MR[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\MS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MS(3),
	o => \MS[3]~input_o\);

-- Location: LCCOMB_X12_Y5_N14
\SUB|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~8_combout\ = ((\MR[3]~input_o\ $ (\MS[3]~input_o\ $ (\SUB|Add0~7\)))) # (GND)
-- \SUB|Add0~9\ = CARRY((\MR[3]~input_o\ & ((!\SUB|Add0~7\) # (!\MS[3]~input_o\))) # (!\MR[3]~input_o\ & (!\MS[3]~input_o\ & !\SUB|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[3]~input_o\,
	datab => \MS[3]~input_o\,
	datad => VCC,
	cin => \SUB|Add0~7\,
	combout => \SUB|Add0~8_combout\,
	cout => \SUB|Add0~9\);

-- Location: LCCOMB_X12_Y5_N28
\ADD|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~8_combout\ = ((\MR[3]~input_o\ $ (\MS[3]~input_o\ $ (!\ADD|Add0~7\)))) # (GND)
-- \ADD|Add0~9\ = CARRY((\MR[3]~input_o\ & ((\MS[3]~input_o\) # (!\ADD|Add0~7\))) # (!\MR[3]~input_o\ & (\MS[3]~input_o\ & !\ADD|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MR[3]~input_o\,
	datab => \MS[3]~input_o\,
	datad => VCC,
	cin => \ADD|Add0~7\,
	combout => \ADD|Add0~8_combout\,
	cout => \ADD|Add0~9\);

-- Location: LCCOMB_X21_Y5_N30
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\ALB_MI[1]~input_o\ & ((\ADD|Add0~8_combout\))) # (!\ALB_MI[1]~input_o\ & (\SUB|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~8_combout\,
	datac => \ALB_MI[1]~input_o\,
	datad => \ADD|Add0~8_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X12_Y5_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\MR[3]~input_o\ & ((\ALB_MI[1]~input_o\) # (\MS[3]~input_o\))) # (!\MR[3]~input_o\ & (\ALB_MI[1]~input_o\ & \MS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MR[3]~input_o\,
	datac => \ALB_MI[1]~input_o\,
	datad => \MS[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y5_N16
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\ALB_MI[2]~input_o\ & ((\Mux2~2_combout\ & ((\Mux0~0_combout\))) # (!\Mux2~2_combout\ & (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \ALB_MI[2]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X12_Y5_N16
\SUB|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SUB|Add0~10_combout\ = !\SUB|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \SUB|Add0~9\,
	combout => \SUB|Add0~10_combout\);

-- Location: LCCOMB_X21_Y5_N2
\VO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VO~0_combout\ = (!\ALB_MI[0]~input_o\ & (!\ALB_MI[1]~input_o\ & !\ALB_MI[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALB_MI[0]~input_o\,
	datac => \ALB_MI[1]~input_o\,
	datad => \ALB_MI[2]~input_o\,
	combout => \VO~0_combout\);

-- Location: LCCOMB_X12_Y5_N30
\ADD|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ADD|Add0~10_combout\ = \ADD|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ADD|Add0~9\,
	combout => \ADD|Add0~10_combout\);

-- Location: LCCOMB_X21_Y5_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ALB_MI[0]~input_o\ & (\ALB_MI[1]~input_o\ & !\ALB_MI[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALB_MI[0]~input_o\,
	datac => \ALB_MI[1]~input_o\,
	datad => \ALB_MI[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y5_N14
\CO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CO~0_combout\ = (\SUB|Add0~10_combout\ & ((\VO~0_combout\) # ((\ADD|Add0~10_combout\ & \Equal0~0_combout\)))) # (!\SUB|Add0~10_combout\ & (((\ADD|Add0~10_combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~10_combout\,
	datab => \VO~0_combout\,
	datac => \ADD|Add0~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \CO~0_combout\);

-- Location: LCCOMB_X21_Y5_N18
\VO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VO~2_combout\ = \ADD|Add0~10_combout\ $ (\ADD|Add0~8_combout\ $ (\ADD|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD|Add0~10_combout\,
	datab => \ADD|Add0~8_combout\,
	datac => \ADD|Add0~6_combout\,
	combout => \VO~2_combout\);

-- Location: LCCOMB_X21_Y5_N24
\VO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VO~1_combout\ = \SUB|Add0~8_combout\ $ (\SUB|Add0~10_combout\ $ (\SUB|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~8_combout\,
	datac => \SUB|Add0~10_combout\,
	datad => \SUB|Add0~6_combout\,
	combout => \VO~1_combout\);

-- Location: LCCOMB_X21_Y5_N4
\VO~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VO~3_combout\ = (\Equal0~0_combout\ & ((\VO~2_combout\) # ((\VO~0_combout\ & \VO~1_combout\)))) # (!\Equal0~0_combout\ & (\VO~0_combout\ & ((\VO~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \VO~0_combout\,
	datac => \VO~2_combout\,
	datad => \VO~1_combout\,
	combout => \VO~3_combout\);

-- Location: LCCOMB_X21_Y5_N22
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Mux3~3_combout\ & (!\Mux0~2_combout\ & (!\Mux2~3_combout\ & !\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux1~2_combout\,
	combout => \Equal2~0_combout\);

ww_F_ALB(0) <= \F_ALB[0]~output_o\;

ww_F_ALB(1) <= \F_ALB[1]~output_o\;

ww_F_ALB(2) <= \F_ALB[2]~output_o\;

ww_F_ALB(3) <= \F_ALB[3]~output_o\;

ww_CO <= \CO~output_o\;

ww_VO <= \VO~output_o\;

ww_NO <= \NO~output_o\;

ww_ZO <= \ZO~output_o\;
END structure;


