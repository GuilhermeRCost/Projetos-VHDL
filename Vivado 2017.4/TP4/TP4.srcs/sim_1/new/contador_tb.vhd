----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2022 10:01:11
-- Design Name: 
-- Module Name: contador_tb - Behavioral
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

entity contador_tb is
--  Port ( );
end contador_tb;

architecture Behavioral of contador_tb is
    component Contador 
        Port ( CLK : in STD_LOGIC;
               DownUp : in STD_LOGIC;
               Load: in std_logic;
               CTENb: in std_logic;
               D : in STD_LOGIC_VECTOR (3 downto 0);
               Q : out STD_LOGIC_VECTOR (3 downto 0);
               MaxMin : out STD_LOGIC;
               RCOb : out STD_LOGIC);
    end component;
begin


end Behavioral;
