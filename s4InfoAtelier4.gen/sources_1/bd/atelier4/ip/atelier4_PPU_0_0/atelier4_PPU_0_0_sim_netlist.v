// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar  9 20:08:20 2023
// Host        : Dell-G5-5590 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_PPU_0_0/atelier4_PPU_0_0_sim_netlist.v
// Design      : atelier4_PPU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "atelier4_PPU_0_0,PPU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PPU,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module atelier4_PPU_0_0
   (clk,
    reset,
    i_reg0,
    i_reg1,
    i_reg2,
    i_reg3,
    i_x_hdmi,
    i_y_hdmi,
    o_color_code_24bits);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]i_reg0;
  input [31:0]i_reg1;
  input [31:0]i_reg2;
  input [31:0]i_reg3;
  input [11:0]i_x_hdmi;
  input [11:0]i_y_hdmi;
  output [23:0]o_color_code_24bits;

  wire \<const0> ;
  wire [31:0]i_reg2;

  assign o_color_code_24bits[23:21] = i_reg2[8:6];
  assign o_color_code_24bits[20] = \<const0> ;
  assign o_color_code_24bits[19] = \<const0> ;
  assign o_color_code_24bits[18] = \<const0> ;
  assign o_color_code_24bits[17] = \<const0> ;
  assign o_color_code_24bits[16] = \<const0> ;
  assign o_color_code_24bits[15:13] = i_reg2[2:0];
  assign o_color_code_24bits[12] = \<const0> ;
  assign o_color_code_24bits[11] = \<const0> ;
  assign o_color_code_24bits[10] = \<const0> ;
  assign o_color_code_24bits[9] = \<const0> ;
  assign o_color_code_24bits[8] = \<const0> ;
  assign o_color_code_24bits[7:5] = i_reg2[5:3];
  assign o_color_code_24bits[4] = \<const0> ;
  assign o_color_code_24bits[3] = \<const0> ;
  assign o_color_code_24bits[2] = \<const0> ;
  assign o_color_code_24bits[1] = \<const0> ;
  assign o_color_code_24bits[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif