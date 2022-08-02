----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2022 09:34:32
-- Design Name: 
-- Module Name: somador_4bits - Behavioral
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

entity somador_4bits is
    Port ( A : in std_logic_vector (3 downto 0);
           B : in std_logic_vector (3 downto 0);
           Cin : in STD_LOGIC;
           S : out std_logic_vector (3 downto 0);
           Cout : out STD_LOGIC);
end somador_4bits;

architecture Behavioral of somador_4bits is
    signal i: std_logic_vector (3 downto 0);
    
    --Criando o component Somador_1bi
    component  somador_1bit
        Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC);
    end component ;
begin
    --instanciando o componente somador_1bit
       bit0: somador_1bit port map( A => A(0),B=>B(0),Cin => '0', S=>S(0), Cout => i(0));
       bit1: somador_1bit port map( A => A(1),B=>B(1),Cin => i(0), S=>S(1), Cout => i(1));
       bit2: somador_1bit port map( A => A(2),B=>B(2),Cin => i(1), S=>S(2), Cout => i(2));
       bit3: somador_1bit port map( A => A(3),B=>B(3),Cin => i(2), S=>S(3), Cout => i(3));
end Behavioral;
