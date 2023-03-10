// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar  9 20:08:20 2023
// Host        : Dell-G5-5590 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ atelier4_PPU_0_0_stub.v
// Design      : atelier4_PPU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PPU,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, i_reg0, i_reg1, i_reg2, i_reg3, i_x_hdmi, 
  i_y_hdmi, o_color_code_24bits)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,i_reg0[31:0],i_reg1[31:0],i_reg2[31:0],i_reg3[31:0],i_x_hdmi[11:0],i_y_hdmi[11:0],o_color_code_24bits[23:0]" */;
  input clk;
  input reset;
  input [31:0]i_reg0;
  input [31:0]i_reg1;
  input [31:0]i_reg2;
  input [31:0]i_reg3;
  input [11:0]i_x_hdmi;
  input [11:0]i_y_hdmi;
  output [23:0]o_color_code_24bits;
endmodule
