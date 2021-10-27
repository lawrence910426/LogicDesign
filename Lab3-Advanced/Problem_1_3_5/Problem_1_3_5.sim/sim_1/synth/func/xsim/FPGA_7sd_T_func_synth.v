// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct 27 01:16:46 2021
// Host        : DESKTOP-P0B4VES running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/home/github/LogicDesign/Lab3-Advanced/Problem_1_3_5/Problem_1_3_5.sim/sim_1/synth/func/xsim/FPGA_7sd_T_func_synth.v
// Design      : FPGA
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Clock_Divider
   (clk_pingpong,
    clk_IBUF,
    SR,
    \clk_counter_reg[31]_0 );
  output clk_pingpong;
  input clk_IBUF;
  input [0:0]SR;
  input \clk_counter_reg[31]_0 ;

  wire [0:0]SR;
  wire clk_IBUF;
  wire [31:0]clk_counter;
  wire clk_counter1_carry__0_n_0;
  wire clk_counter1_carry__0_n_1;
  wire clk_counter1_carry__0_n_2;
  wire clk_counter1_carry__0_n_3;
  wire clk_counter1_carry__1_n_0;
  wire clk_counter1_carry__1_n_1;
  wire clk_counter1_carry__1_n_2;
  wire clk_counter1_carry__1_n_3;
  wire clk_counter1_carry__2_n_0;
  wire clk_counter1_carry__2_n_1;
  wire clk_counter1_carry__2_n_2;
  wire clk_counter1_carry__2_n_3;
  wire clk_counter1_carry__3_n_0;
  wire clk_counter1_carry__3_n_1;
  wire clk_counter1_carry__3_n_2;
  wire clk_counter1_carry__3_n_3;
  wire clk_counter1_carry__4_n_0;
  wire clk_counter1_carry__4_n_1;
  wire clk_counter1_carry__4_n_2;
  wire clk_counter1_carry__4_n_3;
  wire clk_counter1_carry__5_n_0;
  wire clk_counter1_carry__5_n_1;
  wire clk_counter1_carry__5_n_2;
  wire clk_counter1_carry__5_n_3;
  wire clk_counter1_carry__6_n_2;
  wire clk_counter1_carry__6_n_3;
  wire clk_counter1_carry_n_0;
  wire clk_counter1_carry_n_1;
  wire clk_counter1_carry_n_2;
  wire clk_counter1_carry_n_3;
  wire \clk_counter[0]_i_1__0_n_0 ;
  wire \clk_counter[10]_i_1__0_n_0 ;
  wire \clk_counter[11]_i_1__0_n_0 ;
  wire \clk_counter[12]_i_1__0_n_0 ;
  wire \clk_counter[13]_i_1__0_n_0 ;
  wire \clk_counter[14]_i_1__0_n_0 ;
  wire \clk_counter[15]_i_1__0_n_0 ;
  wire \clk_counter[16]_i_1__0_n_0 ;
  wire \clk_counter[17]_i_1__0_n_0 ;
  wire \clk_counter[18]_i_1__0_n_0 ;
  wire \clk_counter[19]_i_1__0_n_0 ;
  wire \clk_counter[1]_i_1__0_n_0 ;
  wire \clk_counter[20]_i_1__0_n_0 ;
  wire \clk_counter[21]_i_1__0_n_0 ;
  wire \clk_counter[22]_i_1__0_n_0 ;
  wire \clk_counter[23]_i_1__0_n_0 ;
  wire \clk_counter[24]_i_1__0_n_0 ;
  wire \clk_counter[25]_i_1__0_n_0 ;
  wire \clk_counter[26]_i_1__0_n_0 ;
  wire \clk_counter[27]_i_1__0_n_0 ;
  wire \clk_counter[28]_i_1__0_n_0 ;
  wire \clk_counter[29]_i_1__0_n_0 ;
  wire \clk_counter[2]_i_1__0_n_0 ;
  wire \clk_counter[30]_i_1__0_n_0 ;
  wire \clk_counter[31]_i_1__0_n_0 ;
  wire \clk_counter[31]_i_2_n_0 ;
  wire \clk_counter[31]_i_3_n_0 ;
  wire \clk_counter[31]_i_4_n_0 ;
  wire \clk_counter[31]_i_5_n_0 ;
  wire \clk_counter[31]_i_6__0_n_0 ;
  wire \clk_counter[31]_i_7_n_0 ;
  wire \clk_counter[3]_i_1__0_n_0 ;
  wire \clk_counter[4]_i_1__0_n_0 ;
  wire \clk_counter[5]_i_1__0_n_0 ;
  wire \clk_counter[6]_i_1__0_n_0 ;
  wire \clk_counter[7]_i_1__0_n_0 ;
  wire \clk_counter[8]_i_1__0_n_0 ;
  wire \clk_counter[9]_i_1__0_n_0 ;
  wire \clk_counter_reg[31]_0 ;
  wire clk_pingpong;
  wire [31:1]data0;
  wire \value[3]_i_12_n_0 ;
  wire \value[3]_i_13_n_0 ;
  wire \value[3]_i_14_n_0 ;
  wire \value[3]_i_15_n_0 ;
  wire \value[3]_i_7_n_0 ;
  wire \value[3]_i_8_n_0 ;
  wire \value[3]_i_9_n_0 ;
  wire [3:2]NLW_clk_counter1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_counter1_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry
       (.CI(1'b0),
        .CO({clk_counter1_carry_n_0,clk_counter1_carry_n_1,clk_counter1_carry_n_2,clk_counter1_carry_n_3}),
        .CYINIT(clk_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__0
       (.CI(clk_counter1_carry_n_0),
        .CO({clk_counter1_carry__0_n_0,clk_counter1_carry__0_n_1,clk_counter1_carry__0_n_2,clk_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__1
       (.CI(clk_counter1_carry__0_n_0),
        .CO({clk_counter1_carry__1_n_0,clk_counter1_carry__1_n_1,clk_counter1_carry__1_n_2,clk_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__2
       (.CI(clk_counter1_carry__1_n_0),
        .CO({clk_counter1_carry__2_n_0,clk_counter1_carry__2_n_1,clk_counter1_carry__2_n_2,clk_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__3
       (.CI(clk_counter1_carry__2_n_0),
        .CO({clk_counter1_carry__3_n_0,clk_counter1_carry__3_n_1,clk_counter1_carry__3_n_2,clk_counter1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__4
       (.CI(clk_counter1_carry__3_n_0),
        .CO({clk_counter1_carry__4_n_0,clk_counter1_carry__4_n_1,clk_counter1_carry__4_n_2,clk_counter1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clk_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__5
       (.CI(clk_counter1_carry__4_n_0),
        .CO({clk_counter1_carry__5_n_0,clk_counter1_carry__5_n_1,clk_counter1_carry__5_n_2,clk_counter1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(clk_counter[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__6
       (.CI(clk_counter1_carry__5_n_0),
        .CO({NLW_clk_counter1_carry__6_CO_UNCONNECTED[3:2],clk_counter1_carry__6_n_2,clk_counter1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_counter1_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,clk_counter[31:29]}));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \clk_counter[0]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(clk_counter[0]),
        .O(\clk_counter[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[10]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[10]),
        .O(\clk_counter[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[11]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[11]),
        .O(\clk_counter[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[12]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[12]),
        .O(\clk_counter[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[13]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[13]),
        .O(\clk_counter[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[14]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[14]),
        .O(\clk_counter[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[15]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[15]),
        .O(\clk_counter[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[16]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[16]),
        .O(\clk_counter[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[17]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[17]),
        .O(\clk_counter[17]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[18]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[18]),
        .O(\clk_counter[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[19]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[19]),
        .O(\clk_counter[19]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[1]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[1]),
        .O(\clk_counter[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[20]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[20]),
        .O(\clk_counter[20]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[21]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[21]),
        .O(\clk_counter[21]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[22]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[22]),
        .O(\clk_counter[22]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[23]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[23]),
        .O(\clk_counter[23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[24]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[24]),
        .O(\clk_counter[24]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[25]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[25]),
        .O(\clk_counter[25]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[26]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[26]),
        .O(\clk_counter[26]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[27]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[27]),
        .O(\clk_counter[27]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[28]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[28]),
        .O(\clk_counter[28]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[29]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[29]),
        .O(\clk_counter[29]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[2]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[2]),
        .O(\clk_counter[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[30]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[30]),
        .O(\clk_counter[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[31]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[31]),
        .O(\clk_counter[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \clk_counter[31]_i_2 
       (.I0(\clk_counter[31]_i_4_n_0 ),
        .I1(clk_counter[9]),
        .I2(clk_counter[31]),
        .I3(\value[3]_i_7_n_0 ),
        .I4(clk_counter[27]),
        .I5(clk_counter[28]),
        .O(\clk_counter[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_counter[31]_i_3 
       (.I0(\clk_counter[31]_i_5_n_0 ),
        .I1(clk_counter[25]),
        .I2(clk_counter[17]),
        .I3(clk_counter[19]),
        .I4(clk_counter[30]),
        .I5(\clk_counter[31]_i_6__0_n_0 ),
        .O(\clk_counter[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_counter[31]_i_4 
       (.I0(clk_counter[10]),
        .I1(clk_counter[11]),
        .O(\clk_counter[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_counter[31]_i_5 
       (.I0(clk_counter[21]),
        .I1(clk_counter[20]),
        .I2(clk_counter[23]),
        .I3(clk_counter[22]),
        .O(\clk_counter[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \clk_counter[31]_i_6__0 
       (.I0(clk_counter[26]),
        .I1(clk_counter[15]),
        .I2(clk_counter[24]),
        .I3(clk_counter[16]),
        .I4(\clk_counter[31]_i_7_n_0 ),
        .O(\clk_counter[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_counter[31]_i_7 
       (.I0(clk_counter[13]),
        .I1(clk_counter[14]),
        .I2(clk_counter[18]),
        .I3(clk_counter[8]),
        .O(\clk_counter[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[3]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[3]),
        .O(\clk_counter[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[4]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[4]),
        .O(\clk_counter[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[5]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[5]),
        .O(\clk_counter[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[6]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[6]),
        .O(\clk_counter[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[7]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[7]),
        .O(\clk_counter[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[8]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[8]),
        .O(\clk_counter[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_counter[9]_i_1__0 
       (.I0(\clk_counter[31]_i_2_n_0 ),
        .I1(\clk_counter[31]_i_3_n_0 ),
        .I2(clk_counter[29]),
        .I3(clk_counter[12]),
        .I4(data0[9]),
        .O(\clk_counter[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[0]_i_1__0_n_0 ),
        .Q(clk_counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[10]_i_1__0_n_0 ),
        .Q(clk_counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[11]_i_1__0_n_0 ),
        .Q(clk_counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[12]_i_1__0_n_0 ),
        .Q(clk_counter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[13]_i_1__0_n_0 ),
        .Q(clk_counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[14]_i_1__0_n_0 ),
        .Q(clk_counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[15]_i_1__0_n_0 ),
        .Q(clk_counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[16]_i_1__0_n_0 ),
        .Q(clk_counter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[17]_i_1__0_n_0 ),
        .Q(clk_counter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[18] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[18]_i_1__0_n_0 ),
        .Q(clk_counter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[19] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[19]_i_1__0_n_0 ),
        .Q(clk_counter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[1]_i_1__0_n_0 ),
        .Q(clk_counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[20] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[20]_i_1__0_n_0 ),
        .Q(clk_counter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[21] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[21]_i_1__0_n_0 ),
        .Q(clk_counter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[22] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[22]_i_1__0_n_0 ),
        .Q(clk_counter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[23] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[23]_i_1__0_n_0 ),
        .Q(clk_counter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[24] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[24]_i_1__0_n_0 ),
        .Q(clk_counter[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[25] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[25]_i_1__0_n_0 ),
        .Q(clk_counter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[26] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[26]_i_1__0_n_0 ),
        .Q(clk_counter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[27] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[27]_i_1__0_n_0 ),
        .Q(clk_counter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[28] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[28]_i_1__0_n_0 ),
        .Q(clk_counter[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[29] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[29]_i_1__0_n_0 ),
        .Q(clk_counter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[2]_i_1__0_n_0 ),
        .Q(clk_counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[30] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[30]_i_1__0_n_0 ),
        .Q(clk_counter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[31] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[31]_i_1__0_n_0 ),
        .Q(clk_counter[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[3]_i_1__0_n_0 ),
        .Q(clk_counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[4]_i_1__0_n_0 ),
        .Q(clk_counter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[5]_i_1__0_n_0 ),
        .Q(clk_counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[6]_i_1__0_n_0 ),
        .Q(clk_counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[7]_i_1__0_n_0 ),
        .Q(clk_counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[8]_i_1__0_n_0 ),
        .Q(clk_counter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(\clk_counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\clk_counter[9]_i_1__0_n_0 ),
        .Q(clk_counter[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[3]_i_12 
       (.I0(clk_counter[4]),
        .I1(clk_counter[5]),
        .I2(clk_counter[6]),
        .I3(clk_counter[7]),
        .O(\value[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[3]_i_13 
       (.I0(clk_counter[20]),
        .I1(clk_counter[21]),
        .I2(clk_counter[22]),
        .I3(clk_counter[23]),
        .O(\value[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \value[3]_i_14 
       (.I0(clk_counter[27]),
        .I1(clk_counter[26]),
        .I2(clk_counter[25]),
        .I3(clk_counter[24]),
        .I4(\value[3]_i_15_n_0 ),
        .O(\value[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[3]_i_15 
       (.I0(clk_counter[28]),
        .I1(clk_counter[29]),
        .I2(clk_counter[31]),
        .I3(clk_counter[30]),
        .O(\value[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \value[3]_i_2 
       (.I0(\value[3]_i_7_n_0 ),
        .I1(\value[3]_i_8_n_0 ),
        .I2(clk_IBUF),
        .I3(clk_counter[8]),
        .I4(clk_counter[9]),
        .I5(\value[3]_i_9_n_0 ),
        .O(clk_pingpong));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \value[3]_i_7 
       (.I0(clk_counter[3]),
        .I1(clk_counter[2]),
        .I2(clk_counter[1]),
        .I3(clk_counter[0]),
        .I4(\value[3]_i_12_n_0 ),
        .O(\value[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \value[3]_i_8 
       (.I0(clk_counter[10]),
        .I1(clk_counter[11]),
        .I2(clk_counter[12]),
        .I3(clk_counter[13]),
        .I4(clk_counter[15]),
        .I5(clk_counter[14]),
        .O(\value[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \value[3]_i_9 
       (.I0(\value[3]_i_13_n_0 ),
        .I1(clk_counter[16]),
        .I2(clk_counter[17]),
        .I3(clk_counter[18]),
        .I4(clk_counter[19]),
        .I5(\value[3]_i_14_n_0 ),
        .O(\value[3]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "Clock_Divider" *) 
module Clock_Divider__parameterized0
   (CLK,
    clk_IBUF,
    SR,
    \clk_counter_reg[0]_0 );
  output CLK;
  input clk_IBUF;
  input [0:0]SR;
  input \clk_counter_reg[0]_0 ;

  wire CLK;
  wire [0:0]SR;
  wire clk_IBUF;
  wire clk_counter1_carry__0_n_0;
  wire clk_counter1_carry__0_n_1;
  wire clk_counter1_carry__0_n_2;
  wire clk_counter1_carry__0_n_3;
  wire clk_counter1_carry__0_n_4;
  wire clk_counter1_carry__0_n_5;
  wire clk_counter1_carry__0_n_6;
  wire clk_counter1_carry__0_n_7;
  wire clk_counter1_carry__1_n_0;
  wire clk_counter1_carry__1_n_1;
  wire clk_counter1_carry__1_n_2;
  wire clk_counter1_carry__1_n_3;
  wire clk_counter1_carry__1_n_4;
  wire clk_counter1_carry__1_n_5;
  wire clk_counter1_carry__1_n_6;
  wire clk_counter1_carry__1_n_7;
  wire clk_counter1_carry__2_n_0;
  wire clk_counter1_carry__2_n_1;
  wire clk_counter1_carry__2_n_2;
  wire clk_counter1_carry__2_n_3;
  wire clk_counter1_carry__2_n_4;
  wire clk_counter1_carry__2_n_5;
  wire clk_counter1_carry__2_n_6;
  wire clk_counter1_carry__2_n_7;
  wire clk_counter1_carry__3_n_0;
  wire clk_counter1_carry__3_n_1;
  wire clk_counter1_carry__3_n_2;
  wire clk_counter1_carry__3_n_3;
  wire clk_counter1_carry__3_n_4;
  wire clk_counter1_carry__3_n_5;
  wire clk_counter1_carry__3_n_6;
  wire clk_counter1_carry__3_n_7;
  wire clk_counter1_carry__4_n_0;
  wire clk_counter1_carry__4_n_1;
  wire clk_counter1_carry__4_n_2;
  wire clk_counter1_carry__4_n_3;
  wire clk_counter1_carry__4_n_4;
  wire clk_counter1_carry__4_n_5;
  wire clk_counter1_carry__4_n_6;
  wire clk_counter1_carry__4_n_7;
  wire clk_counter1_carry__5_n_0;
  wire clk_counter1_carry__5_n_1;
  wire clk_counter1_carry__5_n_2;
  wire clk_counter1_carry__5_n_3;
  wire clk_counter1_carry__5_n_4;
  wire clk_counter1_carry__5_n_5;
  wire clk_counter1_carry__5_n_6;
  wire clk_counter1_carry__5_n_7;
  wire clk_counter1_carry__6_n_2;
  wire clk_counter1_carry__6_n_3;
  wire clk_counter1_carry__6_n_5;
  wire clk_counter1_carry__6_n_6;
  wire clk_counter1_carry__6_n_7;
  wire clk_counter1_carry_n_0;
  wire clk_counter1_carry_n_1;
  wire clk_counter1_carry_n_2;
  wire clk_counter1_carry_n_3;
  wire clk_counter1_carry_n_4;
  wire clk_counter1_carry_n_5;
  wire clk_counter1_carry_n_6;
  wire clk_counter1_carry_n_7;
  wire \clk_counter[0]_i_1_n_0 ;
  wire \clk_counter[10]_i_1_n_0 ;
  wire \clk_counter[11]_i_1_n_0 ;
  wire \clk_counter[12]_i_1_n_0 ;
  wire \clk_counter[13]_i_1_n_0 ;
  wire \clk_counter[14]_i_1_n_0 ;
  wire \clk_counter[15]_i_1_n_0 ;
  wire \clk_counter[16]_i_1_n_0 ;
  wire \clk_counter[17]_i_1_n_0 ;
  wire \clk_counter[18]_i_1_n_0 ;
  wire \clk_counter[19]_i_1_n_0 ;
  wire \clk_counter[1]_i_1_n_0 ;
  wire \clk_counter[20]_i_1_n_0 ;
  wire \clk_counter[21]_i_1_n_0 ;
  wire \clk_counter[22]_i_1_n_0 ;
  wire \clk_counter[23]_i_1_n_0 ;
  wire \clk_counter[24]_i_1_n_0 ;
  wire \clk_counter[25]_i_1_n_0 ;
  wire \clk_counter[26]_i_1_n_0 ;
  wire \clk_counter[27]_i_1_n_0 ;
  wire \clk_counter[28]_i_1_n_0 ;
  wire \clk_counter[29]_i_1_n_0 ;
  wire \clk_counter[2]_i_1_n_0 ;
  wire \clk_counter[30]_i_1_n_0 ;
  wire \clk_counter[31]_i_1_n_0 ;
  wire \clk_counter[31]_i_2__0_n_0 ;
  wire \clk_counter[31]_i_3__0_n_0 ;
  wire \clk_counter[31]_i_4__0_n_0 ;
  wire \clk_counter[31]_i_5__0_n_0 ;
  wire \clk_counter[31]_i_6_n_0 ;
  wire \clk_counter[3]_i_1_n_0 ;
  wire \clk_counter[4]_i_1_n_0 ;
  wire \clk_counter[5]_i_1_n_0 ;
  wire \clk_counter[6]_i_1_n_0 ;
  wire \clk_counter[7]_i_1_n_0 ;
  wire \clk_counter[8]_i_1_n_0 ;
  wire \clk_counter[9]_i_1_n_0 ;
  wire \clk_counter_reg[0]_0 ;
  wire \clk_counter_reg_n_0_[0] ;
  wire \clk_counter_reg_n_0_[10] ;
  wire \clk_counter_reg_n_0_[11] ;
  wire \clk_counter_reg_n_0_[12] ;
  wire \clk_counter_reg_n_0_[13] ;
  wire \clk_counter_reg_n_0_[14] ;
  wire \clk_counter_reg_n_0_[15] ;
  wire \clk_counter_reg_n_0_[16] ;
  wire \clk_counter_reg_n_0_[17] ;
  wire \clk_counter_reg_n_0_[18] ;
  wire \clk_counter_reg_n_0_[19] ;
  wire \clk_counter_reg_n_0_[1] ;
  wire \clk_counter_reg_n_0_[20] ;
  wire \clk_counter_reg_n_0_[21] ;
  wire \clk_counter_reg_n_0_[22] ;
  wire \clk_counter_reg_n_0_[23] ;
  wire \clk_counter_reg_n_0_[24] ;
  wire \clk_counter_reg_n_0_[25] ;
  wire \clk_counter_reg_n_0_[26] ;
  wire \clk_counter_reg_n_0_[27] ;
  wire \clk_counter_reg_n_0_[28] ;
  wire \clk_counter_reg_n_0_[29] ;
  wire \clk_counter_reg_n_0_[2] ;
  wire \clk_counter_reg_n_0_[30] ;
  wire \clk_counter_reg_n_0_[31] ;
  wire \clk_counter_reg_n_0_[3] ;
  wire \clk_counter_reg_n_0_[4] ;
  wire \clk_counter_reg_n_0_[5] ;
  wire \clk_counter_reg_n_0_[6] ;
  wire \clk_counter_reg_n_0_[7] ;
  wire \clk_counter_reg_n_0_[8] ;
  wire \clk_counter_reg_n_0_[9] ;
  wire \reg_AN[1]_i_3_n_0 ;
  wire \reg_AN[1]_i_4_n_0 ;
  wire \reg_AN[1]_i_5_n_0 ;
  wire \reg_AN[1]_i_6_n_0 ;
  wire \reg_AN[1]_i_7_n_0 ;
  wire \reg_AN[1]_i_8_n_0 ;
  wire \reg_AN[1]_i_9_n_0 ;
  wire [3:2]NLW_clk_counter1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_counter1_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry
       (.CI(1'b0),
        .CO({clk_counter1_carry_n_0,clk_counter1_carry_n_1,clk_counter1_carry_n_2,clk_counter1_carry_n_3}),
        .CYINIT(\clk_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry_n_4,clk_counter1_carry_n_5,clk_counter1_carry_n_6,clk_counter1_carry_n_7}),
        .S({\clk_counter_reg_n_0_[4] ,\clk_counter_reg_n_0_[3] ,\clk_counter_reg_n_0_[2] ,\clk_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__0
       (.CI(clk_counter1_carry_n_0),
        .CO({clk_counter1_carry__0_n_0,clk_counter1_carry__0_n_1,clk_counter1_carry__0_n_2,clk_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__0_n_4,clk_counter1_carry__0_n_5,clk_counter1_carry__0_n_6,clk_counter1_carry__0_n_7}),
        .S({\clk_counter_reg_n_0_[8] ,\clk_counter_reg_n_0_[7] ,\clk_counter_reg_n_0_[6] ,\clk_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__1
       (.CI(clk_counter1_carry__0_n_0),
        .CO({clk_counter1_carry__1_n_0,clk_counter1_carry__1_n_1,clk_counter1_carry__1_n_2,clk_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__1_n_4,clk_counter1_carry__1_n_5,clk_counter1_carry__1_n_6,clk_counter1_carry__1_n_7}),
        .S({\clk_counter_reg_n_0_[12] ,\clk_counter_reg_n_0_[11] ,\clk_counter_reg_n_0_[10] ,\clk_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__2
       (.CI(clk_counter1_carry__1_n_0),
        .CO({clk_counter1_carry__2_n_0,clk_counter1_carry__2_n_1,clk_counter1_carry__2_n_2,clk_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__2_n_4,clk_counter1_carry__2_n_5,clk_counter1_carry__2_n_6,clk_counter1_carry__2_n_7}),
        .S({\clk_counter_reg_n_0_[16] ,\clk_counter_reg_n_0_[15] ,\clk_counter_reg_n_0_[14] ,\clk_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__3
       (.CI(clk_counter1_carry__2_n_0),
        .CO({clk_counter1_carry__3_n_0,clk_counter1_carry__3_n_1,clk_counter1_carry__3_n_2,clk_counter1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__3_n_4,clk_counter1_carry__3_n_5,clk_counter1_carry__3_n_6,clk_counter1_carry__3_n_7}),
        .S({\clk_counter_reg_n_0_[20] ,\clk_counter_reg_n_0_[19] ,\clk_counter_reg_n_0_[18] ,\clk_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__4
       (.CI(clk_counter1_carry__3_n_0),
        .CO({clk_counter1_carry__4_n_0,clk_counter1_carry__4_n_1,clk_counter1_carry__4_n_2,clk_counter1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__4_n_4,clk_counter1_carry__4_n_5,clk_counter1_carry__4_n_6,clk_counter1_carry__4_n_7}),
        .S({\clk_counter_reg_n_0_[24] ,\clk_counter_reg_n_0_[23] ,\clk_counter_reg_n_0_[22] ,\clk_counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__5
       (.CI(clk_counter1_carry__4_n_0),
        .CO({clk_counter1_carry__5_n_0,clk_counter1_carry__5_n_1,clk_counter1_carry__5_n_2,clk_counter1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter1_carry__5_n_4,clk_counter1_carry__5_n_5,clk_counter1_carry__5_n_6,clk_counter1_carry__5_n_7}),
        .S({\clk_counter_reg_n_0_[28] ,\clk_counter_reg_n_0_[27] ,\clk_counter_reg_n_0_[26] ,\clk_counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter1_carry__6
       (.CI(clk_counter1_carry__5_n_0),
        .CO({NLW_clk_counter1_carry__6_CO_UNCONNECTED[3:2],clk_counter1_carry__6_n_2,clk_counter1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_counter1_carry__6_O_UNCONNECTED[3],clk_counter1_carry__6_n_5,clk_counter1_carry__6_n_6,clk_counter1_carry__6_n_7}),
        .S({1'b0,\clk_counter_reg_n_0_[31] ,\clk_counter_reg_n_0_[30] ,\clk_counter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter[31]_i_2__0_n_0 ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .O(\clk_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[10]_i_1 
       (.I0(clk_counter1_carry__1_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[11]_i_1 
       (.I0(clk_counter1_carry__1_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[12]_i_1 
       (.I0(clk_counter1_carry__1_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[13]_i_1 
       (.I0(clk_counter1_carry__2_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[14]_i_1 
       (.I0(clk_counter1_carry__2_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[15]_i_1 
       (.I0(clk_counter1_carry__2_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[16]_i_1 
       (.I0(clk_counter1_carry__2_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[17]_i_1 
       (.I0(clk_counter1_carry__3_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[18]_i_1 
       (.I0(clk_counter1_carry__3_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[19]_i_1 
       (.I0(clk_counter1_carry__3_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter1_carry_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[20]_i_1 
       (.I0(clk_counter1_carry__3_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[21]_i_1 
       (.I0(clk_counter1_carry__4_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[22]_i_1 
       (.I0(clk_counter1_carry__4_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[23]_i_1 
       (.I0(clk_counter1_carry__4_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[24]_i_1 
       (.I0(clk_counter1_carry__4_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[25]_i_1 
       (.I0(clk_counter1_carry__5_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[26]_i_1 
       (.I0(clk_counter1_carry__5_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[27]_i_1 
       (.I0(clk_counter1_carry__5_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[28]_i_1 
       (.I0(clk_counter1_carry__5_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[29]_i_1 
       (.I0(clk_counter1_carry__6_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[2]_i_1 
       (.I0(clk_counter1_carry_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[30]_i_1 
       (.I0(clk_counter1_carry__6_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[31]_i_1 
       (.I0(clk_counter1_carry__6_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_counter[31]_i_2__0 
       (.I0(\clk_counter[31]_i_3__0_n_0 ),
        .I1(\clk_counter_reg_n_0_[31] ),
        .I2(\clk_counter_reg_n_0_[5] ),
        .I3(\clk_counter_reg_n_0_[29] ),
        .I4(\clk_counter_reg_n_0_[7] ),
        .I5(\clk_counter[31]_i_4__0_n_0 ),
        .O(\clk_counter[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \clk_counter[31]_i_3__0 
       (.I0(\clk_counter_reg_n_0_[15] ),
        .I1(\clk_counter_reg_n_0_[4] ),
        .I2(\reg_AN[1]_i_4_n_0 ),
        .I3(\clk_counter[31]_i_5__0_n_0 ),
        .I4(\clk_counter_reg_n_0_[13] ),
        .I5(\clk_counter_reg_n_0_[12] ),
        .O(\clk_counter[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_counter[31]_i_4__0 
       (.I0(\clk_counter_reg_n_0_[10] ),
        .I1(\clk_counter_reg_n_0_[11] ),
        .I2(\clk_counter_reg_n_0_[27] ),
        .I3(\clk_counter_reg_n_0_[28] ),
        .I4(\clk_counter[31]_i_6_n_0 ),
        .O(\clk_counter[31]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \clk_counter[31]_i_5__0 
       (.I0(\clk_counter_reg_n_0_[8] ),
        .I1(\clk_counter_reg_n_0_[6] ),
        .I2(\clk_counter_reg_n_0_[14] ),
        .I3(\clk_counter_reg_n_0_[9] ),
        .I4(\clk_counter_reg_n_0_[24] ),
        .I5(\clk_counter_reg_n_0_[30] ),
        .O(\clk_counter[31]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_counter[31]_i_6 
       (.I0(\clk_counter_reg_n_0_[26] ),
        .I1(\clk_counter_reg_n_0_[25] ),
        .I2(\clk_counter_reg_n_0_[3] ),
        .I3(\clk_counter_reg_n_0_[2] ),
        .I4(\clk_counter_reg_n_0_[1] ),
        .I5(\clk_counter_reg_n_0_[0] ),
        .O(\clk_counter[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[3]_i_1 
       (.I0(clk_counter1_carry_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[4]_i_1 
       (.I0(clk_counter1_carry_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[5]_i_1 
       (.I0(clk_counter1_carry__0_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[6]_i_1 
       (.I0(clk_counter1_carry__0_n_6),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[7]_i_1 
       (.I0(clk_counter1_carry__0_n_5),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[8]_i_1 
       (.I0(clk_counter1_carry__0_n_4),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[9]_i_1 
       (.I0(clk_counter1_carry__1_n_7),
        .I1(\clk_counter[31]_i_2__0_n_0 ),
        .O(\clk_counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[0]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[10]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[11]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[12]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[13]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[14]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[15]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[16]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[17]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[18] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[18]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[19] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[19]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[1]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[20] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[20]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[21] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[21]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[22] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[22]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[23] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[23]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[24] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[24]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[25] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[25]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[26] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[26]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[27] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[27]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[28] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[28]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[29] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[29]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[2]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[30] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[30]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[31] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[31]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[3]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[4]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[5]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[6]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[7]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[8]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(\clk_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clk_counter[9]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000002)) 
    \reg_AN[1]_i_2 
       (.I0(\reg_AN[1]_i_3_n_0 ),
        .I1(\clk_counter_reg_n_0_[31] ),
        .I2(\clk_counter_reg_n_0_[30] ),
        .I3(\reg_AN[1]_i_4_n_0 ),
        .I4(\reg_AN[1]_i_5_n_0 ),
        .O(CLK));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \reg_AN[1]_i_3 
       (.I0(\reg_AN[1]_i_6_n_0 ),
        .I1(clk_IBUF),
        .I2(\clk_counter_reg_n_0_[4] ),
        .I3(\clk_counter_reg_n_0_[5] ),
        .I4(\reg_AN[1]_i_7_n_0 ),
        .I5(\reg_AN[1]_i_8_n_0 ),
        .O(\reg_AN[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg_AN[1]_i_4 
       (.I0(\clk_counter_reg_n_0_[19] ),
        .I1(\clk_counter_reg_n_0_[18] ),
        .I2(\clk_counter_reg_n_0_[17] ),
        .I3(\clk_counter_reg_n_0_[16] ),
        .I4(\reg_AN[1]_i_9_n_0 ),
        .O(\reg_AN[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_AN[1]_i_5 
       (.I0(\clk_counter_reg_n_0_[29] ),
        .I1(\clk_counter_reg_n_0_[28] ),
        .I2(\clk_counter_reg_n_0_[27] ),
        .I3(\clk_counter_reg_n_0_[26] ),
        .I4(\clk_counter_reg_n_0_[24] ),
        .I5(\clk_counter_reg_n_0_[25] ),
        .O(\reg_AN[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_AN[1]_i_6 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[2] ),
        .I3(\clk_counter_reg_n_0_[3] ),
        .O(\reg_AN[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \reg_AN[1]_i_7 
       (.I0(\clk_counter_reg_n_0_[9] ),
        .I1(\clk_counter_reg_n_0_[8] ),
        .I2(\clk_counter_reg_n_0_[7] ),
        .I3(\clk_counter_reg_n_0_[6] ),
        .O(\reg_AN[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \reg_AN[1]_i_8 
       (.I0(\clk_counter_reg_n_0_[10] ),
        .I1(\clk_counter_reg_n_0_[11] ),
        .I2(\clk_counter_reg_n_0_[12] ),
        .I3(\clk_counter_reg_n_0_[13] ),
        .I4(\clk_counter_reg_n_0_[15] ),
        .I5(\clk_counter_reg_n_0_[14] ),
        .O(\reg_AN[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_AN[1]_i_9 
       (.I0(\clk_counter_reg_n_0_[20] ),
        .I1(\clk_counter_reg_n_0_[21] ),
        .I2(\clk_counter_reg_n_0_[22] ),
        .I3(\clk_counter_reg_n_0_[23] ),
        .O(\reg_AN[1]_i_9_n_0 ));
endmodule

(* display_latency = "50000" *) (* pingpong_latency = "100000000" *) 
(* NotValidForBitStream *)
module FPGA
   (clk,
    rst,
    enable,
    flip,
    max,
    min,
    AN,
    seg);
  input clk;
  input rst;
  input enable;
  input flip;
  input [3:0]max;
  input [3:0]min;
  output [3:0]AN;
  output [6:0]seg;

  wire [3:0]AN;
  wire [3:0]AN_OBUF;
  wire Chip_n_1;
  wire Chip_n_2;
  wire Chip_n_3;
  wire Chip_n_4;
  wire Chip_n_5;
  wire Chip_n_6;
  wire Chip_n_7;
  wire _7sd_n_2;
  wire _7sd_n_3;
  wire clk;
  wire clk_7sd;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_pingpong;
  wire direction;
  wire enable;
  wire enable_IBUF;
  wire flip;
  wire flip_IBUF;
  wire [3:0]max;
  wire [3:0]max_IBUF;
  wire [3:0]min;
  wire [3:0]min_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [5:4]sel0;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  Parameterized_Ping_Pong_Counter Chip
       (.D({Chip_n_1,Chip_n_2,Chip_n_3,Chip_n_4,Chip_n_5,Chip_n_6,Chip_n_7}),
        .SR(rst_IBUF),
        .clk_pingpong(clk_pingpong),
        .direction(direction),
        .enable_IBUF(enable_IBUF),
        .flip_IBUF(flip_IBUF),
        .max_IBUF(max_IBUF),
        .min_IBUF(min_IBUF),
        .\output_7sd_reg[5] (_7sd_n_2),
        .\output_7sd_reg[5]_0 (_7sd_n_3),
        .sel0(sel0));
  FPGA_7sd _7sd
       (.CLK(clk_7sd),
        .D({Chip_n_1,Chip_n_2,Chip_n_3,Chip_n_4,Chip_n_5,Chip_n_6,Chip_n_7}),
        .Q(AN_OBUF),
        .SR(rst_IBUF),
        .direction(direction),
        .\output_7sd_reg[6]_0 (seg_OBUF),
        .\reg_AN_reg[0]_0 (_7sd_n_3),
        .\reg_AN_reg[1]_0 (_7sd_n_2),
        .sel0(sel0));
  Clock_Divider__parameterized0 _7sd_clk_gen
       (.CLK(clk_7sd),
        .SR(rst_IBUF),
        .clk_IBUF(clk_IBUF),
        .\clk_counter_reg[0]_0 (clk_IBUF_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  IBUF flip_IBUF_inst
       (.I(flip),
        .O(flip_IBUF));
  IBUF \max_IBUF[0]_inst 
       (.I(max[0]),
        .O(max_IBUF[0]));
  IBUF \max_IBUF[1]_inst 
       (.I(max[1]),
        .O(max_IBUF[1]));
  IBUF \max_IBUF[2]_inst 
       (.I(max[2]),
        .O(max_IBUF[2]));
  IBUF \max_IBUF[3]_inst 
       (.I(max[3]),
        .O(max_IBUF[3]));
  IBUF \min_IBUF[0]_inst 
       (.I(min[0]),
        .O(min_IBUF[0]));
  IBUF \min_IBUF[1]_inst 
       (.I(min[1]),
        .O(min_IBUF[1]));
  IBUF \min_IBUF[2]_inst 
       (.I(min[2]),
        .O(min_IBUF[2]));
  IBUF \min_IBUF[3]_inst 
       (.I(min[3]),
        .O(min_IBUF[3]));
  Clock_Divider pp_clk_gen
       (.SR(rst_IBUF),
        .clk_IBUF(clk_IBUF),
        .\clk_counter_reg[31]_0 (clk_IBUF_BUFG),
        .clk_pingpong(clk_pingpong));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
endmodule

module FPGA_7sd
   (sel0,
    \reg_AN_reg[1]_0 ,
    \reg_AN_reg[0]_0 ,
    Q,
    \output_7sd_reg[6]_0 ,
    direction,
    SR,
    CLK,
    D);
  output [1:0]sel0;
  output \reg_AN_reg[1]_0 ;
  output \reg_AN_reg[0]_0 ;
  output [3:0]Q;
  output [6:0]\output_7sd_reg[6]_0 ;
  input direction;
  input [0:0]SR;
  input CLK;
  input [6:0]D;

  wire CLK;
  wire [6:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire direction;
  wire [6:0]\output_7sd_reg[6]_0 ;
  wire [3:0]output_AN0;
  wire \reg_AN[0]_i_1_n_0 ;
  wire \reg_AN[1]_i_1_n_0 ;
  wire \reg_AN_reg[0]_0 ;
  wire \reg_AN_reg[1]_0 ;
  wire [1:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \output_7sd[5]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(direction),
        .O(\reg_AN_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \output_7sd[6]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\reg_AN_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\output_7sd_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\output_7sd_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\output_7sd_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\output_7sd_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\output_7sd_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\output_7sd_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7sd_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\output_7sd_reg[6]_0 [6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \output_AN[0]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(output_AN0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \output_AN[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(output_AN0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \output_AN[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(output_AN0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \output_AN[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(output_AN0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \output_AN_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(output_AN0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_AN_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(output_AN0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_AN_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(output_AN0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_AN_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(output_AN0[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_AN[0]_i_1 
       (.I0(sel0[0]),
        .I1(SR),
        .O(\reg_AN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \reg_AN[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(SR),
        .O(\reg_AN[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_AN_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reg_AN[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_AN_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reg_AN[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
endmodule

module Parameterized_Ping_Pong_Counter
   (direction,
    D,
    SR,
    clk_pingpong,
    min_IBUF,
    max_IBUF,
    enable_IBUF,
    flip_IBUF,
    sel0,
    \output_7sd_reg[5] ,
    \output_7sd_reg[5]_0 );
  output direction;
  output [6:0]D;
  input [0:0]SR;
  input clk_pingpong;
  input [3:0]min_IBUF;
  input [3:0]max_IBUF;
  input enable_IBUF;
  input flip_IBUF;
  input [1:0]sel0;
  input \output_7sd_reg[5] ;
  input \output_7sd_reg[5]_0 ;

  wire [6:0]D;
  wire [0:0]SR;
  wire clk_pingpong;
  wire dir_i_1_n_0;
  wire dir_i_3_n_0;
  wire dir_i_4_n_0;
  wire dir_i_5_n_0;
  wire dir_i_6_n_0;
  wire dir_new;
  wire direction;
  wire enable_IBUF;
  wire flip_IBUF;
  wire [3:0]max_IBUF;
  wire [3:0]min_IBUF;
  wire [3:0]out;
  wire \output_7sd[1]_i_2_n_0 ;
  wire \output_7sd[1]_i_3_n_0 ;
  wire \output_7sd[3]_i_2_n_0 ;
  wire \output_7sd[4]_i_2_n_0 ;
  wire \output_7sd[6]_i_3_n_0 ;
  wire \output_7sd_reg[5] ;
  wire \output_7sd_reg[5]_0 ;
  wire [1:0]sel0;
  wire \value[0]_i_1_n_0 ;
  wire \value[1]_i_1_n_0 ;
  wire \value[1]_i_2_n_0 ;
  wire \value[2]_i_1_n_0 ;
  wire \value[2]_i_2_n_0 ;
  wire \value[2]_i_3_n_0 ;
  wire \value[2]_i_4_n_0 ;
  wire \value[3]_i_10_n_0 ;
  wire \value[3]_i_11_n_0 ;
  wire \value[3]_i_1_n_0 ;
  wire \value[3]_i_3_n_0 ;
  wire \value[3]_i_4_n_0 ;
  wire \value[3]_i_5_n_0 ;
  wire \value[3]_i_6_n_0 ;

  LUT5 #(
    .INIT(32'hFFFE0002)) 
    dir_i_1
       (.I0(dir_new),
        .I1(\value[3]_i_3_n_0 ),
        .I2(\value[2]_i_3_n_0 ),
        .I3(\value[3]_i_6_n_0 ),
        .I4(direction),
        .O(dir_i_1_n_0));
  LUT6 #(
    .INIT(64'hF88807770777F888)) 
    dir_i_2
       (.I0(dir_i_3_n_0),
        .I1(dir_i_4_n_0),
        .I2(dir_i_5_n_0),
        .I3(dir_i_6_n_0),
        .I4(direction),
        .I5(flip_IBUF),
        .O(dir_new));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dir_i_3
       (.I0(min_IBUF[0]),
        .I1(out[0]),
        .I2(min_IBUF[3]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(min_IBUF[2]),
        .O(dir_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h09)) 
    dir_i_4
       (.I0(out[1]),
        .I1(min_IBUF[1]),
        .I2(direction),
        .O(dir_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dir_i_5
       (.I0(max_IBUF[0]),
        .I1(out[0]),
        .I2(max_IBUF[3]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(max_IBUF[2]),
        .O(dir_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    dir_i_6
       (.I0(out[1]),
        .I1(max_IBUF[1]),
        .I2(direction),
        .O(dir_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    dir_reg
       (.C(clk_pingpong),
        .CE(1'b1),
        .D(dir_i_1_n_0),
        .Q(direction),
        .S(SR));
  LUT6 #(
    .INIT(64'hBBFBFBBFBBBBFBBF)) 
    \output_7sd[0]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAABAEEEAAAAA)) 
    \output_7sd[1]_i_1 
       (.I0(\output_7sd[1]_i_2_n_0 ),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h414D4D4141414D41)) 
    \output_7sd[1]_i_2 
       (.I0(direction),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(out[2]),
        .I4(\output_7sd[1]_i_3_n_0 ),
        .I5(out[0]),
        .O(\output_7sd[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \output_7sd[1]_i_3 
       (.I0(out[1]),
        .I1(out[3]),
        .O(\output_7sd[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8200000000)) 
    \output_7sd[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[3]),
        .I3(\output_7sd_reg[5] ),
        .I4(out[0]),
        .I5(\output_7sd[3]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF6F4F0F600000000)) 
    \output_7sd[3]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(\output_7sd_reg[5] ),
        .I3(out[1]),
        .I4(out[3]),
        .I5(\output_7sd[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBEB2BEB2BEB2B2B2)) 
    \output_7sd[3]_i_2 
       (.I0(direction),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\output_7sd[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEABA)) 
    \output_7sd[4]_i_1 
       (.I0(\output_7sd[4]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(direction),
        .I3(sel0[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0004000000000040)) 
    \output_7sd[4]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[3]),
        .I5(out[2]),
        .O(\output_7sd[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00009400)) 
    \output_7sd[5]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\output_7sd_reg[5] ),
        .I5(\output_7sd_reg[5]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF6F0F0F600000000)) 
    \output_7sd[6]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(\output_7sd_reg[5] ),
        .I3(out[1]),
        .I4(out[3]),
        .I5(\output_7sd[6]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h7D717D717D717171)) 
    \output_7sd[6]_i_3 
       (.I0(direction),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\output_7sd[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBAB00004454)) 
    \value[0]_i_1 
       (.I0(\value[3]_i_6_n_0 ),
        .I1(\value[3]_i_5_n_0 ),
        .I2(\value[3]_i_4_n_0 ),
        .I3(min_IBUF[3]),
        .I4(\value[3]_i_3_n_0 ),
        .I5(out[0]),
        .O(\value[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \value[1]_i_1 
       (.I0(\value[1]_i_2_n_0 ),
        .I1(\value[3]_i_3_n_0 ),
        .I2(\value[2]_i_3_n_0 ),
        .I3(\value[3]_i_6_n_0 ),
        .I4(out[1]),
        .O(\value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \value[1]_i_2 
       (.I0(out[0]),
        .I1(dir_new),
        .I2(out[1]),
        .O(\value[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \value[2]_i_1 
       (.I0(\value[2]_i_2_n_0 ),
        .I1(\value[3]_i_3_n_0 ),
        .I2(\value[2]_i_3_n_0 ),
        .I3(\value[3]_i_6_n_0 ),
        .I4(out[2]),
        .O(\value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \value[2]_i_2 
       (.I0(out[0]),
        .I1(dir_new),
        .I2(out[2]),
        .I3(out[1]),
        .O(\value[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00B0B0BB)) 
    \value[2]_i_3 
       (.I0(min_IBUF[3]),
        .I1(\value[3]_i_4_n_0 ),
        .I2(min_IBUF[2]),
        .I3(\value[2]_i_2_n_0 ),
        .I4(\value[2]_i_4_n_0 ),
        .O(\value[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h066F9F9F)) 
    \value[2]_i_4 
       (.I0(out[1]),
        .I1(dir_new),
        .I2(min_IBUF[1]),
        .I3(min_IBUF[0]),
        .I4(out[0]),
        .O(\value[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFAFF00005010)) 
    \value[3]_i_1 
       (.I0(\value[3]_i_3_n_0 ),
        .I1(min_IBUF[3]),
        .I2(\value[3]_i_4_n_0 ),
        .I3(\value[3]_i_5_n_0 ),
        .I4(\value[3]_i_6_n_0 ),
        .I5(out[3]),
        .O(\value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFEC22C)) 
    \value[3]_i_10 
       (.I0(max_IBUF[0]),
        .I1(out[0]),
        .I2(dir_new),
        .I3(out[1]),
        .I4(max_IBUF[1]),
        .O(\value[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \value[3]_i_11 
       (.I0(min_IBUF[2]),
        .I1(max_IBUF[2]),
        .I2(max_IBUF[1]),
        .I3(min_IBUF[1]),
        .I4(max_IBUF[0]),
        .I5(min_IBUF[0]),
        .O(\value[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h71FF00FFFFFF71FF)) 
    \value[3]_i_3 
       (.I0(\value[3]_i_10_n_0 ),
        .I1(max_IBUF[2]),
        .I2(\value[2]_i_2_n_0 ),
        .I3(enable_IBUF),
        .I4(\value[3]_i_4_n_0 ),
        .I5(max_IBUF[3]),
        .O(\value[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \value[3]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(dir_new),
        .I3(out[3]),
        .I4(out[2]),
        .O(\value[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444D4DDD4DDD4DDD)) 
    \value[3]_i_5 
       (.I0(min_IBUF[2]),
        .I1(\value[2]_i_2_n_0 ),
        .I2(\value[1]_i_2_n_0 ),
        .I3(min_IBUF[1]),
        .I4(min_IBUF[0]),
        .I5(out[0]),
        .O(\value[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4CDD)) 
    \value[3]_i_6 
       (.I0(\value[3]_i_11_n_0 ),
        .I1(min_IBUF[3]),
        .I2(\value[3]_i_4_n_0 ),
        .I3(max_IBUF[3]),
        .O(\value[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[0] 
       (.C(clk_pingpong),
        .CE(1'b1),
        .D(\value[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[1] 
       (.C(clk_pingpong),
        .CE(1'b1),
        .D(\value[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[2] 
       (.C(clk_pingpong),
        .CE(1'b1),
        .D(\value[2]_i_1_n_0 ),
        .Q(out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg[3] 
       (.C(clk_pingpong),
        .CE(1'b1),
        .D(\value[3]_i_1_n_0 ),
        .Q(out[3]),
        .R(SR));
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
