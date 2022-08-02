----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 09:11:37
-- Design Name: 
-- Module Name: quantidade_carros - Behavioral
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

entity quantidade_carros is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           C0 : out STD_LOGIC;
           C1 : out STD_LOGIC);
end quantidade_carros;

architecture Behavioral of quantidade_carros is

begin
    C0 <= ((not S0)and(not S1)and S2)or((not S0)and(not S2)and S1)or((not S2)and(not S1)and S0) or (S0 and S1 and S2);
    C1 <= ((not S0)and S1 and S2)or( S0 and(not S1)and S2)or(S0 and(not S2)and S1) or (S0 and S1 and S2);
end Behavioral;
