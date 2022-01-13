----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/01/13 14:37:33
-- Design Name: 
-- Module Name: vga - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga is
--  Port ( );
end vga;

architecture Behavioral of vga is
COMPONENT VGA
 PORT(
  CLK25 : IN std_logic;    
                rez_160x120 : IN std_logic;
                rez_320x240 : IN std_logic;
  Hsync : OUT std_logic;
  Vsync : OUT std_logic;
  Nblank : OUT std_logic;      
  clkout : OUT std_logic;
  activeArea : OUT std_logic;
  Nsync : OUT std_logic
  );
 END COMPONENT;
begin


end Behavioral;
