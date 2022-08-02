----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 10:23:09
-- Design Name: 
-- Module Name: decodificador_7seg_tb - Behavioral
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

entity decodificador_7seg_tb is
--  Port ( );
end decodificador_7seg_tb;

architecture Behavioral of decodificador_7seg_tb is

    component decodificador_7segmentos
        Port ( BCD : in std_logic_vector (3 downto 0);
               Blank : in STD_LOGIC;
               seg : out std_logic_vector (7 downto 1));
                       
    end component;
    
    signal sBCD: std_logic_vector (3 downto 0);
    signal sBlank: std_logic;
    signal sSSeg: std_logic_vector (7 downto 1);
    
begin
    
    uut: decodificador_7segmentos port map(BCD => sBCD, Blank => sBlank, seg => sSSeg);
    
    stimulus: process
        begin   
            sBlank <= '0' ; sBCD <= "0000";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0001";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0010";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0011";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0100";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0101";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0110";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "0111";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1000";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1001";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1010";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1011";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1100";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1101";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1110";
            wait for 10ns;
            sBlank <= '0' ; sBCD <= "1111";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0000";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0001";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0010";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0011";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0100";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0101";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0110";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "0111";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1000";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1001";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1010";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1011";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1100";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1101";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1110";
            wait for 10ns;
            sBlank <= '1' ; sBCD <= "1111";
            wait;
            
        end process ;
end Behavioral;
