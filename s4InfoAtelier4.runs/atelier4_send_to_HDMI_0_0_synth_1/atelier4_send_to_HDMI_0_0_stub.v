// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar  9 19:17:50 2023
// Host        : Dell-G5-5590 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ atelier4_send_to_HDMI_0_0_stub.v
// Design      : atelier4_send_to_HDMI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "send_to_HDMI,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, i_x_hdmi, i_y_hdmi, o_dataValid, 
  o_dataPixel, i_color_code_24bits_of_pixel_to_send)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,i_x_hdmi[11:0],i_y_hdmi[11:0],o_dataValid,o_dataPixel[23:0],i_color_code_24bits_of_pixel_to_send[23:0]" */;
  input clk;
  input rstn;
  input [11:0]i_x_hdmi;
  input [11:0]i_y_hdmi;
  output o_dataValid;
  output [23:0]o_dataPixel;
  input [23:0]i_color_code_24bits_of_pixel_to_send;
endmodule
