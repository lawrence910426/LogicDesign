-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Nov 18 16:40:19 2021
-- Host        : DESKTOP-P0B4VES running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top KeyboardCtrl_0 -prefix
--               KeyboardCtrl_0_ KeyboardCtrl_0_stub.vhdl
-- Design      : KeyboardCtrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyboardCtrl_0 is
  Port ( 
    key_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    is_extend : out STD_LOGIC;
    is_break : out STD_LOGIC;
    valid : out STD_LOGIC;
    err : out STD_LOGIC;
    PS2_DATA : inout STD_LOGIC;
    PS2_CLK : inout STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end KeyboardCtrl_0;

architecture stub of KeyboardCtrl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "key_in[7:0],is_extend,is_break,valid,err,PS2_DATA,PS2_CLK,rst,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "KeyboardCtrl,Vivado 2020.2";
begin
end;
