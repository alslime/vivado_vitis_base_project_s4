-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar  9 20:08:20 2023
-- Host        : Dell-G5-5590 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_PPU_0_0/atelier4_PPU_0_0_stub.vhdl
-- Design      : atelier4_PPU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity atelier4_PPU_0_0 is
  Port ( 
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

end atelier4_PPU_0_0;

architecture stub of atelier4_PPU_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,i_reg0[31:0],i_reg1[31:0],i_reg2[31:0],i_reg3[31:0],i_x_hdmi[11:0],i_y_hdmi[11:0],o_color_code_24bits[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PPU,Vivado 2020.2";
begin
end;
