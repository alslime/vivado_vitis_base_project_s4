// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bd_0837_hsc_0_v_hscaler,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010-clg400-1,HLS_INPUT_CLOCK=13.468000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=9.815250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=7,HLS_SYN_DSP=0,HLS_SYN_FF=4491,HLS_SYN_LUT=5609,HLS_VERSION=2020_2}" *)

module bd_0837_hsc_0_v_hscaler (
        s_axi_CTRL_AWVALID,
        s_axi_CTRL_AWREADY,
        s_axi_CTRL_AWADDR,
        s_axi_CTRL_WVALID,
        s_axi_CTRL_WREADY,
        s_axi_CTRL_WDATA,
        s_axi_CTRL_WSTRB,
        s_axi_CTRL_ARVALID,
        s_axi_CTRL_ARREADY,
        s_axi_CTRL_ARADDR,
        s_axi_CTRL_RVALID,
        s_axi_CTRL_RREADY,
        s_axi_CTRL_RDATA,
        s_axi_CTRL_RRESP,
        s_axi_CTRL_BVALID,
        s_axi_CTRL_BREADY,
        s_axi_CTRL_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        s_axis_video_TDATA,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        m_axis_video_TDATA,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        m_axis_video_TVALID,
        m_axis_video_TREADY
);

parameter    C_S_AXI_CTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_ADDR_WIDTH = 15;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_CTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_CTRL_AWVALID;
output   s_axi_CTRL_AWREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_AWADDR;
input   s_axi_CTRL_WVALID;
output   s_axi_CTRL_WREADY;
input  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_WDATA;
input  [C_S_AXI_CTRL_WSTRB_WIDTH - 1:0] s_axi_CTRL_WSTRB;
input   s_axi_CTRL_ARVALID;
output   s_axi_CTRL_ARREADY;
input  [C_S_AXI_CTRL_ADDR_WIDTH - 1:0] s_axi_CTRL_ARADDR;
output   s_axi_CTRL_RVALID;
input   s_axi_CTRL_RREADY;
output  [C_S_AXI_CTRL_DATA_WIDTH - 1:0] s_axi_CTRL_RDATA;
output  [1:0] s_axi_CTRL_RRESP;
output   s_axi_CTRL_BVALID;
input   s_axi_CTRL_BREADY;
output  [1:0] s_axi_CTRL_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [23:0] s_axis_video_TDATA;
input  [2:0] s_axis_video_TKEEP;
input  [2:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [23:0] m_axis_video_TDATA;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;

 reg    ap_rst_n_inv;
wire   [15:0] Height;
wire   [15:0] WidthIn;
wire   [15:0] WidthOut;
wire   [7:0] ColorMode;
wire   [31:0] PixelRate;
wire   [7:0] ColorModeOut;
wire   [15:0] hfltCoeff_q0;
wire   [15:0] phasesH_q0;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    v_hscaler_entry4_U0_ap_start;
wire    v_hscaler_entry4_U0_ap_done;
wire    v_hscaler_entry4_U0_ap_continue;
wire    v_hscaler_entry4_U0_ap_idle;
wire    v_hscaler_entry4_U0_ap_ready;
wire    v_hscaler_entry4_U0_start_out;
wire    v_hscaler_entry4_U0_start_write;
wire   [7:0] v_hscaler_entry4_U0_ColorMode_out_din;
wire    v_hscaler_entry4_U0_ColorMode_out_write;
wire    v_hscaler_entry32_U0_ap_start;
wire    v_hscaler_entry32_U0_start_full_n;
wire    v_hscaler_entry32_U0_ap_done;
wire    v_hscaler_entry32_U0_ap_continue;
wire    v_hscaler_entry32_U0_ap_idle;
wire    v_hscaler_entry32_U0_ap_ready;
wire    v_hscaler_entry32_U0_start_out;
wire    v_hscaler_entry32_U0_start_write;
wire    v_hscaler_entry32_U0_ColorMode_read;
wire   [7:0] v_hscaler_entry32_U0_ColorMode_out_din;
wire    v_hscaler_entry32_U0_ColorMode_out_write;
wire   [7:0] v_hscaler_entry32_U0_ColorMode_out1_din;
wire    v_hscaler_entry32_U0_ColorMode_out1_write;
wire    Block_split1_proc_U0_ap_start;
wire    Block_split1_proc_U0_ap_done;
wire    Block_split1_proc_U0_ap_continue;
wire    Block_split1_proc_U0_ap_idle;
wire    Block_split1_proc_U0_ap_ready;
wire    Block_split1_proc_U0_ColorMode_read;
wire   [0:0] Block_split1_proc_U0_ap_return;
wire    ap_channel_done_bPassThruHcr1_channel;
wire    bPassThruHcr1_channel_full_n;
wire    Block_split12_proc_U0_ap_start;
wire    Block_split12_proc_U0_start_full_n;
wire    Block_split12_proc_U0_ap_done;
wire    Block_split12_proc_U0_ap_continue;
wire    Block_split12_proc_U0_ap_idle;
wire    Block_split12_proc_U0_ap_ready;
wire    Block_split12_proc_U0_start_out;
wire    Block_split12_proc_U0_start_write;
wire   [0:0] Block_split12_proc_U0_bPassThruHcr2_out_din;
wire    Block_split12_proc_U0_bPassThruHcr2_out_write;
wire   [0:0] Block_split12_proc_U0_bPassThruVcr_out_din;
wire    Block_split12_proc_U0_bPassThruVcr_out_write;
wire    AXIvideo2MultiPixStream_U0_ap_start;
wire    AXIvideo2MultiPixStream_U0_ap_done;
wire    AXIvideo2MultiPixStream_U0_ap_continue;
wire    AXIvideo2MultiPixStream_U0_ap_idle;
wire    AXIvideo2MultiPixStream_U0_ap_ready;
wire   [23:0] AXIvideo2MultiPixStream_U0_stream_in_din;
wire    AXIvideo2MultiPixStream_U0_stream_in_write;
wire    AXIvideo2MultiPixStream_U0_ColorMode_read;
wire    AXIvideo2MultiPixStream_U0_s_axis_video_TREADY;
wire    v_hcresampler_core26_U0_ap_start;
wire    v_hcresampler_core26_U0_ap_done;
wire    v_hcresampler_core26_U0_ap_continue;
wire    v_hcresampler_core26_U0_ap_idle;
wire    v_hcresampler_core26_U0_ap_ready;
wire    v_hcresampler_core26_U0_srcImg_read;
wire   [23:0] v_hcresampler_core26_U0_outImg_din;
wire    v_hcresampler_core26_U0_outImg_write;
wire    v_hcresampler_core26_U0_p_read;
wire    hscale_core_polyphase_U0_ap_start;
wire    hscale_core_polyphase_U0_ap_done;
wire    hscale_core_polyphase_U0_ap_continue;
wire    hscale_core_polyphase_U0_ap_idle;
wire    hscale_core_polyphase_U0_ap_ready;
wire    hscale_core_polyphase_U0_stream_upsampled_read;
wire   [8:0] hscale_core_polyphase_U0_hfltCoeff_address0;
wire    hscale_core_polyphase_U0_hfltCoeff_ce0;
wire   [10:0] hscale_core_polyphase_U0_phasesH_address0;
wire    hscale_core_polyphase_U0_phasesH_ce0;
wire   [23:0] hscale_core_polyphase_U0_stream_scaled_din;
wire    hscale_core_polyphase_U0_stream_scaled_write;
wire    v_hcresampler_core_U0_ap_start;
wire    v_hcresampler_core_U0_ap_done;
wire    v_hcresampler_core_U0_ap_continue;
wire    v_hcresampler_core_U0_ap_idle;
wire    v_hcresampler_core_U0_ap_ready;
wire    v_hcresampler_core_U0_srcImg_read;
wire   [23:0] v_hcresampler_core_U0_outImg_din;
wire    v_hcresampler_core_U0_outImg_write;
wire    v_hcresampler_core_U0_bPassThru_dout;
wire    v_hcresampler_core_U0_bPassThru_read;
wire    v_vcresampler_core_U0_ap_start;
wire    v_vcresampler_core_U0_ap_done;
wire    v_vcresampler_core_U0_ap_continue;
wire    v_vcresampler_core_U0_ap_idle;
wire    v_vcresampler_core_U0_ap_ready;
wire    v_vcresampler_core_U0_start_out;
wire    v_vcresampler_core_U0_start_write;
wire    v_vcresampler_core_U0_stream_out_422_read;
wire   [23:0] v_vcresampler_core_U0_stream_out_420_din;
wire    v_vcresampler_core_U0_stream_out_420_write;
wire    v_vcresampler_core_U0_bPassThru_read;
wire    MultiPixStream2AXIvideo_U0_ap_start;
wire    MultiPixStream2AXIvideo_U0_ap_done;
wire    MultiPixStream2AXIvideo_U0_ap_continue;
wire    MultiPixStream2AXIvideo_U0_ap_idle;
wire    MultiPixStream2AXIvideo_U0_ap_ready;
wire    MultiPixStream2AXIvideo_U0_stream_out_420_read;
wire   [23:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;
wire    MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;
wire   [2:0] MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;
wire   [2:0] MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TID;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;
wire    ap_sync_continue;
wire    ColorMode_c1_full_n;
wire   [7:0] ColorMode_c1_dout;
wire    ColorMode_c1_empty_n;
wire    ColorMode_c_full_n;
wire   [7:0] ColorMode_c_dout;
wire    ColorMode_c_empty_n;
wire    ColorMode_c17_full_n;
wire   [7:0] ColorMode_c17_dout;
wire    ColorMode_c17_empty_n;
wire   [0:0] bPassThruHcr1_channel_dout;
wire    bPassThruHcr1_channel_empty_n;
wire    bPassThruHcr2_c_full_n;
wire   [0:0] bPassThruHcr2_c_dout;
wire    bPassThruHcr2_c_empty_n;
wire    bPassThruVcr_c_full_n;
wire   [0:0] bPassThruVcr_c_dout;
wire    bPassThruVcr_c_empty_n;
wire    stream_in_full_n;
wire   [23:0] stream_in_dout;
wire    stream_in_empty_n;
wire    stream_upsampled_full_n;
wire   [23:0] stream_upsampled_dout;
wire    stream_upsampled_empty_n;
wire    stream_scaled_full_n;
wire   [23:0] stream_scaled_dout;
wire    stream_scaled_empty_n;
wire    stream_out_422_full_n;
wire   [23:0] stream_out_422_dout;
wire    stream_out_422_empty_n;
wire    stream_out_420_full_n;
wire   [23:0] stream_out_420_dout;
wire    stream_out_420_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_v_hscaler_entry4_U0_ap_ready;
wire    ap_sync_v_hscaler_entry4_U0_ap_ready;
reg    ap_sync_reg_Block_split12_proc_U0_ap_ready;
wire    ap_sync_Block_split12_proc_U0_ap_ready;
reg    ap_sync_reg_hscale_core_polyphase_U0_ap_ready;
wire    ap_sync_hscale_core_polyphase_U0_ap_ready;
wire   [0:0] start_for_v_hscaler_entry32_U0_din;
wire    start_for_v_hscaler_entry32_U0_full_n;
wire   [0:0] start_for_v_hscaler_entry32_U0_dout;
wire    start_for_v_hscaler_entry32_U0_empty_n;
wire   [0:0] start_for_Block_split1_proc_U0_din;
wire    start_for_Block_split1_proc_U0_full_n;
wire   [0:0] start_for_Block_split1_proc_U0_dout;
wire    start_for_Block_split1_proc_U0_empty_n;
wire   [0:0] start_for_AXIvideo2MultiPixStream_U0_din;
wire    start_for_AXIvideo2MultiPixStream_U0_full_n;
wire   [0:0] start_for_AXIvideo2MultiPixStream_U0_dout;
wire    start_for_AXIvideo2MultiPixStream_U0_empty_n;
wire    Block_split1_proc_U0_start_full_n;
wire    Block_split1_proc_U0_start_write;
wire   [0:0] start_for_v_hcresampler_core_U0_din;
wire    start_for_v_hcresampler_core_U0_full_n;
wire   [0:0] start_for_v_hcresampler_core_U0_dout;
wire    start_for_v_hcresampler_core_U0_empty_n;
wire   [0:0] start_for_v_vcresampler_core_U0_din;
wire    start_for_v_vcresampler_core_U0_full_n;
wire   [0:0] start_for_v_vcresampler_core_U0_dout;
wire    start_for_v_vcresampler_core_U0_empty_n;
wire    AXIvideo2MultiPixStream_U0_start_full_n;
wire    AXIvideo2MultiPixStream_U0_start_write;
wire    v_hcresampler_core26_U0_start_full_n;
wire    v_hcresampler_core26_U0_start_write;
wire    hscale_core_polyphase_U0_start_full_n;
wire    hscale_core_polyphase_U0_start_write;
wire    v_hcresampler_core_U0_start_full_n;
wire    v_hcresampler_core_U0_start_write;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_din;
wire    start_for_MultiPixStream2AXIvideo_U0_full_n;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_dout;
wire    start_for_MultiPixStream2AXIvideo_U0_empty_n;
wire    MultiPixStream2AXIvideo_U0_start_full_n;
wire    MultiPixStream2AXIvideo_U0_start_write;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_v_hscaler_entry4_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Block_split12_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_hscale_core_polyphase_U0_ap_ready = 1'b0;
end

bd_0837_hsc_0_CTRL_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_DATA_WIDTH ))
CTRL_s_axi_U(
    .AWVALID(s_axi_CTRL_AWVALID),
    .AWREADY(s_axi_CTRL_AWREADY),
    .AWADDR(s_axi_CTRL_AWADDR),
    .WVALID(s_axi_CTRL_WVALID),
    .WREADY(s_axi_CTRL_WREADY),
    .WDATA(s_axi_CTRL_WDATA),
    .WSTRB(s_axi_CTRL_WSTRB),
    .ARVALID(s_axi_CTRL_ARVALID),
    .ARREADY(s_axi_CTRL_ARREADY),
    .ARADDR(s_axi_CTRL_ARADDR),
    .RVALID(s_axi_CTRL_RVALID),
    .RREADY(s_axi_CTRL_RREADY),
    .RDATA(s_axi_CTRL_RDATA),
    .RRESP(s_axi_CTRL_RRESP),
    .BVALID(s_axi_CTRL_BVALID),
    .BREADY(s_axi_CTRL_BREADY),
    .BRESP(s_axi_CTRL_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .Height(Height),
    .WidthIn(WidthIn),
    .WidthOut(WidthOut),
    .ColorMode(ColorMode),
    .PixelRate(PixelRate),
    .ColorModeOut(ColorModeOut),
    .hfltCoeff_address0(hscale_core_polyphase_U0_hfltCoeff_address0),
    .hfltCoeff_ce0(hscale_core_polyphase_U0_hfltCoeff_ce0),
    .hfltCoeff_q0(hfltCoeff_q0),
    .phasesH_address0(hscale_core_polyphase_U0_phasesH_address0),
    .phasesH_ce0(hscale_core_polyphase_U0_phasesH_ce0),
    .phasesH_q0(phasesH_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

bd_0837_hsc_0_v_hscaler_entry4 v_hscaler_entry4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(v_hscaler_entry4_U0_ap_start),
    .start_full_n(start_for_v_hscaler_entry32_U0_full_n),
    .ap_done(v_hscaler_entry4_U0_ap_done),
    .ap_continue(v_hscaler_entry4_U0_ap_continue),
    .ap_idle(v_hscaler_entry4_U0_ap_idle),
    .ap_ready(v_hscaler_entry4_U0_ap_ready),
    .start_out(v_hscaler_entry4_U0_start_out),
    .start_write(v_hscaler_entry4_U0_start_write),
    .ColorMode(ColorMode),
    .ColorMode_out_din(v_hscaler_entry4_U0_ColorMode_out_din),
    .ColorMode_out_full_n(ColorMode_c1_full_n),
    .ColorMode_out_write(v_hscaler_entry4_U0_ColorMode_out_write)
);

bd_0837_hsc_0_v_hscaler_entry32 v_hscaler_entry32_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(v_hscaler_entry32_U0_ap_start),
    .start_full_n(v_hscaler_entry32_U0_start_full_n),
    .ap_done(v_hscaler_entry32_U0_ap_done),
    .ap_continue(v_hscaler_entry32_U0_ap_continue),
    .ap_idle(v_hscaler_entry32_U0_ap_idle),
    .ap_ready(v_hscaler_entry32_U0_ap_ready),
    .start_out(v_hscaler_entry32_U0_start_out),
    .start_write(v_hscaler_entry32_U0_start_write),
    .ColorMode_dout(ColorMode_c1_dout),
    .ColorMode_empty_n(ColorMode_c1_empty_n),
    .ColorMode_read(v_hscaler_entry32_U0_ColorMode_read),
    .ColorMode_out_din(v_hscaler_entry32_U0_ColorMode_out_din),
    .ColorMode_out_full_n(ColorMode_c_full_n),
    .ColorMode_out_write(v_hscaler_entry32_U0_ColorMode_out_write),
    .ColorMode_out1_din(v_hscaler_entry32_U0_ColorMode_out1_din),
    .ColorMode_out1_full_n(ColorMode_c17_full_n),
    .ColorMode_out1_write(v_hscaler_entry32_U0_ColorMode_out1_write)
);

bd_0837_hsc_0_Block_split1_proc Block_split1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_split1_proc_U0_ap_start),
    .ap_done(Block_split1_proc_U0_ap_done),
    .ap_continue(Block_split1_proc_U0_ap_continue),
    .ap_idle(Block_split1_proc_U0_ap_idle),
    .ap_ready(Block_split1_proc_U0_ap_ready),
    .ColorMode_dout(ColorMode_c_dout),
    .ColorMode_empty_n(ColorMode_c_empty_n),
    .ColorMode_read(Block_split1_proc_U0_ColorMode_read),
    .ap_return(Block_split1_proc_U0_ap_return)
);

bd_0837_hsc_0_Block_split12_proc Block_split12_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_split12_proc_U0_ap_start),
    .start_full_n(Block_split12_proc_U0_start_full_n),
    .ap_done(Block_split12_proc_U0_ap_done),
    .ap_continue(Block_split12_proc_U0_ap_continue),
    .ap_idle(Block_split12_proc_U0_ap_idle),
    .ap_ready(Block_split12_proc_U0_ap_ready),
    .start_out(Block_split12_proc_U0_start_out),
    .start_write(Block_split12_proc_U0_start_write),
    .ColorModeOut(ColorModeOut),
    .bPassThruHcr2_out_din(Block_split12_proc_U0_bPassThruHcr2_out_din),
    .bPassThruHcr2_out_full_n(bPassThruHcr2_c_full_n),
    .bPassThruHcr2_out_write(Block_split12_proc_U0_bPassThruHcr2_out_write),
    .bPassThruVcr_out_din(Block_split12_proc_U0_bPassThruVcr_out_din),
    .bPassThruVcr_out_full_n(bPassThruVcr_c_full_n),
    .bPassThruVcr_out_write(Block_split12_proc_U0_bPassThruVcr_out_write)
);

bd_0837_hsc_0_AXIvideo2MultiPixStream AXIvideo2MultiPixStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2MultiPixStream_U0_ap_start),
    .ap_done(AXIvideo2MultiPixStream_U0_ap_done),
    .ap_continue(AXIvideo2MultiPixStream_U0_ap_continue),
    .ap_idle(AXIvideo2MultiPixStream_U0_ap_idle),
    .ap_ready(AXIvideo2MultiPixStream_U0_ap_ready),
    .stream_in_din(AXIvideo2MultiPixStream_U0_stream_in_din),
    .stream_in_full_n(stream_in_full_n),
    .stream_in_write(AXIvideo2MultiPixStream_U0_stream_in_write),
    .Height(Height),
    .WidthIn(WidthIn),
    .ColorMode_dout(ColorMode_c17_dout),
    .ColorMode_empty_n(ColorMode_c17_empty_n),
    .ColorMode_read(AXIvideo2MultiPixStream_U0_ColorMode_read),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .s_axis_video_TREADY(AXIvideo2MultiPixStream_U0_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST)
);

bd_0837_hsc_0_v_hcresampler_core26 v_hcresampler_core26_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(v_hcresampler_core26_U0_ap_start),
    .ap_done(v_hcresampler_core26_U0_ap_done),
    .ap_continue(v_hcresampler_core26_U0_ap_continue),
    .ap_idle(v_hcresampler_core26_U0_ap_idle),
    .ap_ready(v_hcresampler_core26_U0_ap_ready),
    .srcImg_dout(stream_in_dout),
    .srcImg_empty_n(stream_in_empty_n),
    .srcImg_read(v_hcresampler_core26_U0_srcImg_read),
    .height(Height),
    .width(WidthIn),
    .outImg_din(v_hcresampler_core26_U0_outImg_din),
    .outImg_full_n(stream_upsampled_full_n),
    .outImg_write(v_hcresampler_core26_U0_outImg_write),
    .p_read(v_hcresampler_core26_U0_p_read)
);

bd_0837_hsc_0_hscale_core_polyphase hscale_core_polyphase_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(hscale_core_polyphase_U0_ap_start),
    .ap_done(hscale_core_polyphase_U0_ap_done),
    .ap_continue(hscale_core_polyphase_U0_ap_continue),
    .ap_idle(hscale_core_polyphase_U0_ap_idle),
    .ap_ready(hscale_core_polyphase_U0_ap_ready),
    .stream_upsampled_dout(stream_upsampled_dout),
    .stream_upsampled_empty_n(stream_upsampled_empty_n),
    .stream_upsampled_read(hscale_core_polyphase_U0_stream_upsampled_read),
    .Height(Height),
    .WidthIn(WidthIn),
    .WidthOut(WidthOut),
    .hfltCoeff_address0(hscale_core_polyphase_U0_hfltCoeff_address0),
    .hfltCoeff_ce0(hscale_core_polyphase_U0_hfltCoeff_ce0),
    .hfltCoeff_q0(hfltCoeff_q0),
    .phasesH_address0(hscale_core_polyphase_U0_phasesH_address0),
    .phasesH_ce0(hscale_core_polyphase_U0_phasesH_ce0),
    .phasesH_q0(phasesH_q0),
    .stream_scaled_din(hscale_core_polyphase_U0_stream_scaled_din),
    .stream_scaled_full_n(stream_scaled_full_n),
    .stream_scaled_write(hscale_core_polyphase_U0_stream_scaled_write)
);

bd_0837_hsc_0_v_hcresampler_core v_hcresampler_core_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(v_hcresampler_core_U0_ap_start),
    .ap_done(v_hcresampler_core_U0_ap_done),
    .ap_continue(v_hcresampler_core_U0_ap_continue),
    .ap_idle(v_hcresampler_core_U0_ap_idle),
    .ap_ready(v_hcresampler_core_U0_ap_ready),
    .srcImg_dout(stream_scaled_dout),
    .srcImg_empty_n(stream_scaled_empty_n),
    .srcImg_read(v_hcresampler_core_U0_srcImg_read),
    .height(Height),
    .width(WidthOut),
    .outImg_din(v_hcresampler_core_U0_outImg_din),
    .outImg_full_n(stream_out_422_full_n),
    .outImg_write(v_hcresampler_core_U0_outImg_write),
    .bPassThru_dout(v_hcresampler_core_U0_bPassThru_dout),
    .bPassThru_empty_n(bPassThruHcr2_c_empty_n),
    .bPassThru_read(v_hcresampler_core_U0_bPassThru_read)
);

bd_0837_hsc_0_v_vcresampler_core v_vcresampler_core_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(v_vcresampler_core_U0_ap_start),
    .start_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
    .ap_done(v_vcresampler_core_U0_ap_done),
    .ap_continue(v_vcresampler_core_U0_ap_continue),
    .ap_idle(v_vcresampler_core_U0_ap_idle),
    .ap_ready(v_vcresampler_core_U0_ap_ready),
    .start_out(v_vcresampler_core_U0_start_out),
    .start_write(v_vcresampler_core_U0_start_write),
    .stream_out_422_dout(stream_out_422_dout),
    .stream_out_422_empty_n(stream_out_422_empty_n),
    .stream_out_422_read(v_vcresampler_core_U0_stream_out_422_read),
    .Height(Height),
    .WidthOut(WidthOut),
    .stream_out_420_din(v_vcresampler_core_U0_stream_out_420_din),
    .stream_out_420_full_n(stream_out_420_full_n),
    .stream_out_420_write(v_vcresampler_core_U0_stream_out_420_write),
    .bPassThru_dout(bPassThruVcr_c_dout),
    .bPassThru_empty_n(bPassThruVcr_c_empty_n),
    .bPassThru_read(v_vcresampler_core_U0_bPassThru_read)
);

bd_0837_hsc_0_MultiPixStream2AXIvideo MultiPixStream2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(MultiPixStream2AXIvideo_U0_ap_start),
    .ap_done(MultiPixStream2AXIvideo_U0_ap_done),
    .ap_continue(MultiPixStream2AXIvideo_U0_ap_continue),
    .ap_idle(MultiPixStream2AXIvideo_U0_ap_idle),
    .ap_ready(MultiPixStream2AXIvideo_U0_ap_ready),
    .stream_out_420_dout(stream_out_420_dout),
    .stream_out_420_empty_n(stream_out_420_empty_n),
    .stream_out_420_read(MultiPixStream2AXIvideo_U0_stream_out_420_read),
    .Height(Height),
    .WidthOut(WidthOut),
    .ColorModeOut(ColorModeOut),
    .m_axis_video_TDATA(MultiPixStream2AXIvideo_U0_m_axis_video_TDATA),
    .m_axis_video_TVALID(MultiPixStream2AXIvideo_U0_m_axis_video_TVALID),
    .m_axis_video_TREADY(m_axis_video_TREADY),
    .m_axis_video_TKEEP(MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB),
    .m_axis_video_TUSER(MultiPixStream2AXIvideo_U0_m_axis_video_TUSER),
    .m_axis_video_TLAST(MultiPixStream2AXIvideo_U0_m_axis_video_TLAST),
    .m_axis_video_TID(MultiPixStream2AXIvideo_U0_m_axis_video_TID),
    .m_axis_video_TDEST(MultiPixStream2AXIvideo_U0_m_axis_video_TDEST)
);

bd_0837_hsc_0_fifo_w8_d2_S ColorMode_c1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_hscaler_entry4_U0_ColorMode_out_din),
    .if_full_n(ColorMode_c1_full_n),
    .if_write(v_hscaler_entry4_U0_ColorMode_out_write),
    .if_dout(ColorMode_c1_dout),
    .if_empty_n(ColorMode_c1_empty_n),
    .if_read(v_hscaler_entry32_U0_ColorMode_read)
);

bd_0837_hsc_0_fifo_w8_d2_S ColorMode_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_hscaler_entry32_U0_ColorMode_out_din),
    .if_full_n(ColorMode_c_full_n),
    .if_write(v_hscaler_entry32_U0_ColorMode_out_write),
    .if_dout(ColorMode_c_dout),
    .if_empty_n(ColorMode_c_empty_n),
    .if_read(Block_split1_proc_U0_ColorMode_read)
);

bd_0837_hsc_0_fifo_w8_d2_S ColorMode_c17_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_hscaler_entry32_U0_ColorMode_out1_din),
    .if_full_n(ColorMode_c17_full_n),
    .if_write(v_hscaler_entry32_U0_ColorMode_out1_write),
    .if_dout(ColorMode_c17_dout),
    .if_empty_n(ColorMode_c17_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_ColorMode_read)
);

bd_0837_hsc_0_fifo_w1_d2_S bPassThruHcr1_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_split1_proc_U0_ap_return),
    .if_full_n(bPassThruHcr1_channel_full_n),
    .if_write(Block_split1_proc_U0_ap_done),
    .if_dout(bPassThruHcr1_channel_dout),
    .if_empty_n(bPassThruHcr1_channel_empty_n),
    .if_read(v_hcresampler_core26_U0_ap_ready)
);

bd_0837_hsc_0_fifo_w1_d6_S bPassThruHcr2_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_split12_proc_U0_bPassThruHcr2_out_din),
    .if_full_n(bPassThruHcr2_c_full_n),
    .if_write(Block_split12_proc_U0_bPassThruHcr2_out_write),
    .if_dout(bPassThruHcr2_c_dout),
    .if_empty_n(bPassThruHcr2_c_empty_n),
    .if_read(v_hcresampler_core_U0_bPassThru_read)
);

bd_0837_hsc_0_fifo_w1_d7_S bPassThruVcr_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_split12_proc_U0_bPassThruVcr_out_din),
    .if_full_n(bPassThruVcr_c_full_n),
    .if_write(Block_split12_proc_U0_bPassThruVcr_out_write),
    .if_dout(bPassThruVcr_c_dout),
    .if_empty_n(bPassThruVcr_c_empty_n),
    .if_read(v_vcresampler_core_U0_bPassThru_read)
);

bd_0837_hsc_0_fifo_w24_d16_S stream_in_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2MultiPixStream_U0_stream_in_din),
    .if_full_n(stream_in_full_n),
    .if_write(AXIvideo2MultiPixStream_U0_stream_in_write),
    .if_dout(stream_in_dout),
    .if_empty_n(stream_in_empty_n),
    .if_read(v_hcresampler_core26_U0_srcImg_read)
);

bd_0837_hsc_0_fifo_w24_d16_S stream_upsampled_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_hcresampler_core26_U0_outImg_din),
    .if_full_n(stream_upsampled_full_n),
    .if_write(v_hcresampler_core26_U0_outImg_write),
    .if_dout(stream_upsampled_dout),
    .if_empty_n(stream_upsampled_empty_n),
    .if_read(hscale_core_polyphase_U0_stream_upsampled_read)
);

bd_0837_hsc_0_fifo_w24_d16_S stream_scaled_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(hscale_core_polyphase_U0_stream_scaled_din),
    .if_full_n(stream_scaled_full_n),
    .if_write(hscale_core_polyphase_U0_stream_scaled_write),
    .if_dout(stream_scaled_dout),
    .if_empty_n(stream_scaled_empty_n),
    .if_read(v_hcresampler_core_U0_srcImg_read)
);

bd_0837_hsc_0_fifo_w24_d16_S stream_out_422_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_hcresampler_core_U0_outImg_din),
    .if_full_n(stream_out_422_full_n),
    .if_write(v_hcresampler_core_U0_outImg_write),
    .if_dout(stream_out_422_dout),
    .if_empty_n(stream_out_422_empty_n),
    .if_read(v_vcresampler_core_U0_stream_out_422_read)
);

bd_0837_hsc_0_fifo_w24_d16_S stream_out_420_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(v_vcresampler_core_U0_stream_out_420_din),
    .if_full_n(stream_out_420_full_n),
    .if_write(v_vcresampler_core_U0_stream_out_420_write),
    .if_dout(stream_out_420_dout),
    .if_empty_n(stream_out_420_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_stream_out_420_read)
);

bd_0837_hsc_0_start_for_v_hscaler_entry32_U0 start_for_v_hscaler_entry32_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_v_hscaler_entry32_U0_din),
    .if_full_n(start_for_v_hscaler_entry32_U0_full_n),
    .if_write(v_hscaler_entry4_U0_start_write),
    .if_dout(start_for_v_hscaler_entry32_U0_dout),
    .if_empty_n(start_for_v_hscaler_entry32_U0_empty_n),
    .if_read(v_hscaler_entry32_U0_ap_ready)
);

bd_0837_hsc_0_start_for_Block_split1_proc_U0 start_for_Block_split1_proc_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Block_split1_proc_U0_din),
    .if_full_n(start_for_Block_split1_proc_U0_full_n),
    .if_write(v_hscaler_entry32_U0_start_write),
    .if_dout(start_for_Block_split1_proc_U0_dout),
    .if_empty_n(start_for_Block_split1_proc_U0_empty_n),
    .if_read(Block_split1_proc_U0_ap_ready)
);

bd_0837_hsc_0_start_for_AXIvideo2MultiPixStream_U0 start_for_AXIvideo2MultiPixStream_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AXIvideo2MultiPixStream_U0_din),
    .if_full_n(start_for_AXIvideo2MultiPixStream_U0_full_n),
    .if_write(v_hscaler_entry32_U0_start_write),
    .if_dout(start_for_AXIvideo2MultiPixStream_U0_dout),
    .if_empty_n(start_for_AXIvideo2MultiPixStream_U0_empty_n),
    .if_read(AXIvideo2MultiPixStream_U0_ap_ready)
);

bd_0837_hsc_0_start_for_v_hcresampler_core_U0 start_for_v_hcresampler_core_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_v_hcresampler_core_U0_din),
    .if_full_n(start_for_v_hcresampler_core_U0_full_n),
    .if_write(Block_split12_proc_U0_start_write),
    .if_dout(start_for_v_hcresampler_core_U0_dout),
    .if_empty_n(start_for_v_hcresampler_core_U0_empty_n),
    .if_read(v_hcresampler_core_U0_ap_ready)
);

bd_0837_hsc_0_start_for_v_vcresampler_core_U0 start_for_v_vcresampler_core_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_v_vcresampler_core_U0_din),
    .if_full_n(start_for_v_vcresampler_core_U0_full_n),
    .if_write(Block_split12_proc_U0_start_write),
    .if_dout(start_for_v_vcresampler_core_U0_dout),
    .if_empty_n(start_for_v_vcresampler_core_U0_empty_n),
    .if_read(v_vcresampler_core_U0_ap_ready)
);

bd_0837_hsc_0_start_for_MultiPixStream2AXIvideo_U0 start_for_MultiPixStream2AXIvideo_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_MultiPixStream2AXIvideo_U0_din),
    .if_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
    .if_write(v_vcresampler_core_U0_start_write),
    .if_dout(start_for_MultiPixStream2AXIvideo_U0_dout),
    .if_empty_n(start_for_MultiPixStream2AXIvideo_U0_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_split12_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_split12_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_split12_proc_U0_ap_ready <= ap_sync_Block_split12_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_hscale_core_polyphase_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_hscale_core_polyphase_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_hscale_core_polyphase_U0_ap_ready <= ap_sync_hscale_core_polyphase_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_v_hscaler_entry4_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_v_hscaler_entry4_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_v_hscaler_entry4_U0_ap_ready <= ap_sync_v_hscaler_entry4_U0_ap_ready;
        end
    end
end

assign AXIvideo2MultiPixStream_U0_ap_continue = 1'b1;

assign AXIvideo2MultiPixStream_U0_ap_start = start_for_AXIvideo2MultiPixStream_U0_empty_n;

assign AXIvideo2MultiPixStream_U0_start_full_n = 1'b1;

assign AXIvideo2MultiPixStream_U0_start_write = 1'b0;

assign Block_split12_proc_U0_ap_continue = 1'b1;

assign Block_split12_proc_U0_ap_start = ((ap_sync_reg_Block_split12_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_split12_proc_U0_start_full_n = (start_for_v_vcresampler_core_U0_full_n & start_for_v_hcresampler_core_U0_full_n);

assign Block_split1_proc_U0_ap_continue = bPassThruHcr1_channel_full_n;

assign Block_split1_proc_U0_ap_start = start_for_Block_split1_proc_U0_empty_n;

assign Block_split1_proc_U0_start_full_n = 1'b1;

assign Block_split1_proc_U0_start_write = 1'b0;

assign MultiPixStream2AXIvideo_U0_ap_continue = 1'b1;

assign MultiPixStream2AXIvideo_U0_ap_start = start_for_MultiPixStream2AXIvideo_U0_empty_n;

assign MultiPixStream2AXIvideo_U0_start_full_n = 1'b1;

assign MultiPixStream2AXIvideo_U0_start_write = 1'b0;

assign ap_channel_done_bPassThruHcr1_channel = Block_split1_proc_U0_ap_done;

assign ap_done = MultiPixStream2AXIvideo_U0_ap_done;

assign ap_idle = (v_vcresampler_core_U0_ap_idle & v_hscaler_entry4_U0_ap_idle & v_hscaler_entry32_U0_ap_idle & v_hcresampler_core_U0_ap_idle & v_hcresampler_core26_U0_ap_idle & hscale_core_polyphase_U0_ap_idle & (bPassThruHcr1_channel_empty_n ^ 1'b1) & MultiPixStream2AXIvideo_U0_ap_idle & Block_split1_proc_U0_ap_idle & Block_split12_proc_U0_ap_idle & AXIvideo2MultiPixStream_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Block_split12_proc_U0_ap_ready = (ap_sync_reg_Block_split12_proc_U0_ap_ready | Block_split12_proc_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = MultiPixStream2AXIvideo_U0_ap_done;

assign ap_sync_hscale_core_polyphase_U0_ap_ready = (hscale_core_polyphase_U0_ap_ready | ap_sync_reg_hscale_core_polyphase_U0_ap_ready);

assign ap_sync_ready = (ap_sync_v_hscaler_entry4_U0_ap_ready & ap_sync_hscale_core_polyphase_U0_ap_ready & ap_sync_Block_split12_proc_U0_ap_ready);

assign ap_sync_v_hscaler_entry4_U0_ap_ready = (v_hscaler_entry4_U0_ap_ready | ap_sync_reg_v_hscaler_entry4_U0_ap_ready);

assign hscale_core_polyphase_U0_ap_continue = 1'b1;

assign hscale_core_polyphase_U0_ap_start = ((ap_sync_reg_hscale_core_polyphase_U0_ap_ready ^ 1'b1) & ap_start);

assign hscale_core_polyphase_U0_start_full_n = 1'b1;

assign hscale_core_polyphase_U0_start_write = 1'b0;

assign m_axis_video_TDATA = MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;

assign m_axis_video_TDEST = MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;

assign m_axis_video_TID = MultiPixStream2AXIvideo_U0_m_axis_video_TID;

assign m_axis_video_TKEEP = MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;

assign m_axis_video_TLAST = MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;

assign m_axis_video_TSTRB = MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;

assign m_axis_video_TUSER = MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;

assign m_axis_video_TVALID = MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;

assign s_axis_video_TREADY = AXIvideo2MultiPixStream_U0_s_axis_video_TREADY;

assign start_for_AXIvideo2MultiPixStream_U0_din = 1'b1;

assign start_for_Block_split1_proc_U0_din = 1'b1;

assign start_for_MultiPixStream2AXIvideo_U0_din = 1'b1;

assign start_for_v_hcresampler_core_U0_din = 1'b1;

assign start_for_v_hscaler_entry32_U0_din = 1'b1;

assign start_for_v_vcresampler_core_U0_din = 1'b1;

assign v_hcresampler_core26_U0_ap_continue = 1'b1;

assign v_hcresampler_core26_U0_ap_start = bPassThruHcr1_channel_empty_n;

assign v_hcresampler_core26_U0_p_read = bPassThruHcr1_channel_dout;

assign v_hcresampler_core26_U0_start_full_n = 1'b1;

assign v_hcresampler_core26_U0_start_write = 1'b0;

assign v_hcresampler_core_U0_ap_continue = 1'b1;

assign v_hcresampler_core_U0_ap_start = start_for_v_hcresampler_core_U0_empty_n;

assign v_hcresampler_core_U0_bPassThru_dout = bPassThruHcr2_c_dout;

assign v_hcresampler_core_U0_start_full_n = 1'b1;

assign v_hcresampler_core_U0_start_write = 1'b0;

assign v_hscaler_entry32_U0_ap_continue = 1'b1;

assign v_hscaler_entry32_U0_ap_start = start_for_v_hscaler_entry32_U0_empty_n;

assign v_hscaler_entry32_U0_start_full_n = (start_for_Block_split1_proc_U0_full_n & start_for_AXIvideo2MultiPixStream_U0_full_n);

assign v_hscaler_entry4_U0_ap_continue = 1'b1;

assign v_hscaler_entry4_U0_ap_start = ((ap_sync_reg_v_hscaler_entry4_U0_ap_ready ^ 1'b1) & ap_start);

assign v_vcresampler_core_U0_ap_continue = 1'b1;

assign v_vcresampler_core_U0_ap_start = start_for_v_vcresampler_core_U0_empty_n;


// synthesis translate_off
`include "bd_0837_hsc_0_hls_deadlock_detector.vh"
// synthesis translate_on

endmodule //bd_0837_hsc_0_v_hscaler

