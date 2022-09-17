----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2022 17:04:55
-- Design Name: 
-- Module Name: CLock - Behavioral
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

entity CLock is
    generic(tempo: time := 1000000000ns);
    Port ( clk_out : out STD_LOGIC);
end CLock;

architecture Behavioral of CLock is
    signal sClock : std_logic := '0'; 
  
begin 
    --Criando o sinal de clock
    sclock <= not(sclock) after tempo/2; 
    clk_out <= sClock;
end Behavioral;
