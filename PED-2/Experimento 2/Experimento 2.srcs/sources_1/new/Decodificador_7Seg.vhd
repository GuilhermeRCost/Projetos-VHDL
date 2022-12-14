----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2023 12:32:56
-- Design Name: 
-- Module Name: Decodificador_7Seg - Behavioral
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

entity Decodificador_7Seg is
    Port ( BCD : in std_logic_vector (0 to 3);
           seg : out STD_LOGIC_VECTOR (0 to 6));
end Decodificador_7Seg;

architecture Behavioral of Decodificador_7Seg is

begin

    with BCD select
         Seg <= "0000001" when "0000", --0
                "1001111" when "0001", --1
                "0010010" when "0010", --2
                "0000110" when "0011", --3
                "1001100" when "0100", --4
                "0100100" when "0101", --5
                "0100000" when "0110", --6
                "0001111" when "0111", --7
                "0000000" when "1000", --8
                "0000100" when "1001", --9
                "1111111" when others; -- Blank
               

end Behavioral;
