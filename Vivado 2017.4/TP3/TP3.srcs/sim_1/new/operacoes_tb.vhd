----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2022 13:43:07
-- Design Name: 
-- Module Name: operacoes_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity operacoes_tb is
--  Port ( );
end operacoes_tb;

architecture Behavioral of operacoes_tb is
    
    component operacoes
        generic( NUM_BITS: INTEGER := 4);
        Port ( A,B : in STD_LOGIC_VECTOR (NUM_BITS-1 downto 0);
                  S: in std_logic_vector (0 to 1);
                  O: out STD_LOGIC_vector (NUM_BITS-1 downto 0);
                  Overflow: out std_logic;
                  seg: out std_logic_vector (0 to 6);
                  dp: out std_logic);
    end component;
    signal sA, sB, sO: STD_LOGIC_VECTOR (3 downto 0);
    signal sSeg: STD_LOGIC_VECTOR (0 to 6);
    signal sS: std_logic_vector(0 to 1);
    signal sOver, sDp: std_logic; 
begin

    uut: operacoes port map(S=>sS,A =>sA, B => sB, O=> sO,  Overflow => sOver, seg => sSeg, dp => sDp);
    
    stimulus: process
        begin   
         sS <= "00"; sA<="0101"; sB<="1010"; 
         wait for 10ns;
         sS <= "00"; sA<="1010"; sB<="0101";
         wait for 10ns;
         sS <= "01"; sA<="1111"; sB<="0000";
         wait for 10ns;
         sS <= "01"; sA<="0000"; sB<="1111";
         wait for 10ns;
         sS <= "10"; sA<="0111"; sB<="0111"; -- 7+7
         wait for 10ns;
         sS <= "10"; sA<="1110"; sB<="1101"; -- -2 + -3
         wait for 10ns;
         sS <= "10"; sA<="1011"; sB<="0100";-- -5 + 4
         wait for 10ns;
         sS <= "10"; sA<="0110"; sB<="1111"; -- 6 + -1
         wait for 10ns;
         sS <= "11"; sA<="0111"; sB<="0111"; -- 7 -1 
         wait for 10ns;
         sS<= "11"; sA<= "1110"; sB<= "1101"; -- -2 - 1
         wait for 10ns;
         sS <= "11"; sA<="1011"; sB<="0100"; -- -5 -1 
         wait for 10ns;
         SS <= "11"; Sa<= "0110"; sb<= "1111"; -- 6 -1 
         wait;
    end process;
end Behavioral;
