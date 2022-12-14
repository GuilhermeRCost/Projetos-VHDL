----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 10:09:53
-- Design Name: 
-- Module Name: decodificador_7segmentos - Behavioral
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

entity decodificador_7segmentos is
    Port ( BCD : in std_logic_vector (3 downto 0);
           Blank : in STD_LOGIC;
           seg : out std_logic_vector (7 downto 1));
end decodificador_7segmentos;

architecture Behavioral of decodificador_7segmentos is
    signal sSeg:std_logic_vector (7 downto 1);
begin
    with BCD select
        sSeg <= "0111111" when "0000",
                "0000110" when "0001",
                "1011011" when "0010",
                "1001111" when "0011",
                "1100110" when "0100",
                "1101101" when "0101",
                "1111101" when "0110",
                "0000111" when "0111",
                "1111111" when "1000",
                "1101111" when "1001",
                "1000000" when others;
                
       seg <= "0000000" when Blank = '1' else sSeg;  
    
end Behavioral;
