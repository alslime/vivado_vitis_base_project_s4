-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar  9 20:08:20 2023
-- Host        : Dell-G5-5590 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_PPU_0_0/atelier4_PPU_0_0_sim_netlist.vhdl
-- Design      : atelier4_PPU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_PPU_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    i_reg0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_reg1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_reg2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_reg3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_x_hdmi : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_y_hdmi : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_color_code_24bits : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of atelier4_PPU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of atelier4_PPU_0_0 : entity is "atelier4_PPU_0_0,PPU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of atelier4_PPU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of atelier4_PPU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of atelier4_PPU_0_0 : entity is "PPU,Vivado 2020.2";
end atelier4_PPU_0_0;

architecture STRUCTURE of atelier4_PPU_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_reg2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^i_reg2\(8 downto 0) <= i_reg2(8 downto 0);
  o_color_code_24bits(23 downto 21) <= \^i_reg2\(8 downto 6);
  o_color_code_24bits(20) <= \<const0>\;
  o_color_code_24bits(19) <= \<const0>\;
  o_color_code_24bits(18) <= \<const0>\;
  o_color_code_24bits(17) <= \<const0>\;
  o_color_code_24bits(16) <= \<const0>\;
  o_color_code_24bits(15 downto 13) <= \^i_reg2\(2 downto 0);
  o_color_code_24bits(12) <= \<const0>\;
  o_color_code_24bits(11) <= \<const0>\;
  o_color_code_24bits(10) <= \<const0>\;
  o_color_code_24bits(9) <= \<const0>\;
  o_color_code_24bits(8) <= \<const0>\;
  o_color_code_24bits(7 downto 5) <= \^i_reg2\(5 downto 3);
  o_color_code_24bits(4) <= \<const0>\;
  o_color_code_24bits(3) <= \<const0>\;
  o_color_code_24bits(2) <= \<const0>\;
  o_color_code_24bits(1) <= \<const0>\;
  o_color_code_24bits(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
