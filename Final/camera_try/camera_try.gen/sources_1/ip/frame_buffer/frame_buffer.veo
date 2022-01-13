// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:v_frmbuf_rd:2.2
// IP Revision: 0

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
frame_buffer your_instance_name (
  .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),              // input wire [6 : 0] s_axi_CTRL_AWADDR
  .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),            // input wire s_axi_CTRL_AWVALID
  .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),            // output wire s_axi_CTRL_AWREADY
  .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),                // input wire [31 : 0] s_axi_CTRL_WDATA
  .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),                // input wire [3 : 0] s_axi_CTRL_WSTRB
  .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),              // input wire s_axi_CTRL_WVALID
  .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),              // output wire s_axi_CTRL_WREADY
  .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),                // output wire [1 : 0] s_axi_CTRL_BRESP
  .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),              // output wire s_axi_CTRL_BVALID
  .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),              // input wire s_axi_CTRL_BREADY
  .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),              // input wire [6 : 0] s_axi_CTRL_ARADDR
  .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),            // input wire s_axi_CTRL_ARVALID
  .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),            // output wire s_axi_CTRL_ARREADY
  .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),                // output wire [31 : 0] s_axi_CTRL_RDATA
  .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),                // output wire [1 : 0] s_axi_CTRL_RRESP
  .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),              // output wire s_axi_CTRL_RVALID
  .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),              // input wire s_axi_CTRL_RREADY
  .ap_clk(ap_clk),                                    // input wire ap_clk
  .ap_rst_n(ap_rst_n),                                // input wire ap_rst_n
  .interrupt(interrupt),                              // output wire interrupt
  .m_axi_mm_video_AWADDR(m_axi_mm_video_AWADDR),      // output wire [31 : 0] m_axi_mm_video_AWADDR
  .m_axi_mm_video_AWLEN(m_axi_mm_video_AWLEN),        // output wire [7 : 0] m_axi_mm_video_AWLEN
  .m_axi_mm_video_AWSIZE(m_axi_mm_video_AWSIZE),      // output wire [2 : 0] m_axi_mm_video_AWSIZE
  .m_axi_mm_video_AWBURST(m_axi_mm_video_AWBURST),    // output wire [1 : 0] m_axi_mm_video_AWBURST
  .m_axi_mm_video_AWLOCK(m_axi_mm_video_AWLOCK),      // output wire [1 : 0] m_axi_mm_video_AWLOCK
  .m_axi_mm_video_AWREGION(m_axi_mm_video_AWREGION),  // output wire [3 : 0] m_axi_mm_video_AWREGION
  .m_axi_mm_video_AWCACHE(m_axi_mm_video_AWCACHE),    // output wire [3 : 0] m_axi_mm_video_AWCACHE
  .m_axi_mm_video_AWPROT(m_axi_mm_video_AWPROT),      // output wire [2 : 0] m_axi_mm_video_AWPROT
  .m_axi_mm_video_AWQOS(m_axi_mm_video_AWQOS),        // output wire [3 : 0] m_axi_mm_video_AWQOS
  .m_axi_mm_video_AWVALID(m_axi_mm_video_AWVALID),    // output wire m_axi_mm_video_AWVALID
  .m_axi_mm_video_AWREADY(m_axi_mm_video_AWREADY),    // input wire m_axi_mm_video_AWREADY
  .m_axi_mm_video_WDATA(m_axi_mm_video_WDATA),        // output wire [127 : 0] m_axi_mm_video_WDATA
  .m_axi_mm_video_WSTRB(m_axi_mm_video_WSTRB),        // output wire [15 : 0] m_axi_mm_video_WSTRB
  .m_axi_mm_video_WLAST(m_axi_mm_video_WLAST),        // output wire m_axi_mm_video_WLAST
  .m_axi_mm_video_WVALID(m_axi_mm_video_WVALID),      // output wire m_axi_mm_video_WVALID
  .m_axi_mm_video_WREADY(m_axi_mm_video_WREADY),      // input wire m_axi_mm_video_WREADY
  .m_axi_mm_video_BRESP(m_axi_mm_video_BRESP),        // input wire [1 : 0] m_axi_mm_video_BRESP
  .m_axi_mm_video_BVALID(m_axi_mm_video_BVALID),      // input wire m_axi_mm_video_BVALID
  .m_axi_mm_video_BREADY(m_axi_mm_video_BREADY),      // output wire m_axi_mm_video_BREADY
  .m_axi_mm_video_ARADDR(m_axi_mm_video_ARADDR),      // output wire [31 : 0] m_axi_mm_video_ARADDR
  .m_axi_mm_video_ARLEN(m_axi_mm_video_ARLEN),        // output wire [7 : 0] m_axi_mm_video_ARLEN
  .m_axi_mm_video_ARSIZE(m_axi_mm_video_ARSIZE),      // output wire [2 : 0] m_axi_mm_video_ARSIZE
  .m_axi_mm_video_ARBURST(m_axi_mm_video_ARBURST),    // output wire [1 : 0] m_axi_mm_video_ARBURST
  .m_axi_mm_video_ARLOCK(m_axi_mm_video_ARLOCK),      // output wire [1 : 0] m_axi_mm_video_ARLOCK
  .m_axi_mm_video_ARREGION(m_axi_mm_video_ARREGION),  // output wire [3 : 0] m_axi_mm_video_ARREGION
  .m_axi_mm_video_ARCACHE(m_axi_mm_video_ARCACHE),    // output wire [3 : 0] m_axi_mm_video_ARCACHE
  .m_axi_mm_video_ARPROT(m_axi_mm_video_ARPROT),      // output wire [2 : 0] m_axi_mm_video_ARPROT
  .m_axi_mm_video_ARQOS(m_axi_mm_video_ARQOS),        // output wire [3 : 0] m_axi_mm_video_ARQOS
  .m_axi_mm_video_ARVALID(m_axi_mm_video_ARVALID),    // output wire m_axi_mm_video_ARVALID
  .m_axi_mm_video_ARREADY(m_axi_mm_video_ARREADY),    // input wire m_axi_mm_video_ARREADY
  .m_axi_mm_video_RDATA(m_axi_mm_video_RDATA),        // input wire [127 : 0] m_axi_mm_video_RDATA
  .m_axi_mm_video_RRESP(m_axi_mm_video_RRESP),        // input wire [1 : 0] m_axi_mm_video_RRESP
  .m_axi_mm_video_RLAST(m_axi_mm_video_RLAST),        // input wire m_axi_mm_video_RLAST
  .m_axi_mm_video_RVALID(m_axi_mm_video_RVALID),      // input wire m_axi_mm_video_RVALID
  .m_axi_mm_video_RREADY(m_axi_mm_video_RREADY),      // output wire m_axi_mm_video_RREADY
  .m_axis_video_TVALID(m_axis_video_TVALID),          // output wire m_axis_video_TVALID
  .m_axis_video_TREADY(m_axis_video_TREADY),          // input wire m_axis_video_TREADY
  .m_axis_video_TDATA(m_axis_video_TDATA),            // output wire [47 : 0] m_axis_video_TDATA
  .m_axis_video_TKEEP(m_axis_video_TKEEP),            // output wire [5 : 0] m_axis_video_TKEEP
  .m_axis_video_TSTRB(m_axis_video_TSTRB),            // output wire [5 : 0] m_axis_video_TSTRB
  .m_axis_video_TUSER(m_axis_video_TUSER),            // output wire [0 : 0] m_axis_video_TUSER
  .m_axis_video_TLAST(m_axis_video_TLAST),            // output wire [0 : 0] m_axis_video_TLAST
  .m_axis_video_TID(m_axis_video_TID),                // output wire [0 : 0] m_axis_video_TID
  .m_axis_video_TDEST(m_axis_video_TDEST)            // output wire [0 : 0] m_axis_video_TDEST
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file frame_buffer.v when simulating
// the core, frame_buffer. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

