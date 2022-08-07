----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 11:33:30
-- Design Name: 
-- Module Name: somador_3bit_tb - Behavioral
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

entity somador_3bit_tb is
--  Port ( );
end somador_3bit_tb;

architecture Behavioral of somador_3bit_tb is
    component somador_3bits
        Port ( Ai : in std_logic_vector (2 downto 0);
               Bi : in std_logic_vector (2 downto 0);
               Cin : in STD_LOGIC;
               sum : out std_logic_vector (2 downto 0);
               Cout : out STD_LOGIC);
    end component ;
    
    signal sAi: std_logic_vector (2 downto 0);
    signal sBi: std_logic_vector (2 downto 0);
    signal sCin: std_logic;
    signal sSum: std_logic_vector (2 downto 0);
    signal sCout: std_logic;
begin
    bit0: somador_3bits port map(Ai => sAi, Bi => sBi, Cin => sCin, sum => sSum, Cout => sCout);
    
    stimulus: process 
        begin
          sAi <= "000"; sBi <= "000";
          wait for 10ns;
          sAi <= "000"; sBi <= "001";
          wait for 10ns;
            sAi <= "000"; sBi <= "010";
          wait for 10ns;
            sAi <= "000"; sBi <= "011";
          wait for 10ns;
            sAi <= "000"; sBi <= "100";
          wait for 10ns;   
            sAi <= "000"; sBi <= "101";
          wait for 10ns;
            sAi <= "000"; sBi <= "110";
          wait for 10ns;
            sAi <= "000"; sBi <= "111";
          wait for 10ns;
            sAi <= "001"; sBi <= "000";
          wait for 10ns;
            sAi <= "001"; sBi <= "001";
          wait for 10ns;
            sAi <= "001"; sBi <= "010";
          wait for 10ns;
            sAi <= "001"; sBi <= "011";
          wait for 10ns;
            sAi <= "001"; sBi <= "100";
          wait for 10ns;   
            sAi <= "001"; sBi <= "101";
          wait for 10ns;
            sAi <= "001"; sBi <= "110";
          wait for 10ns;
            sAi <= "001"; sBi <= "111";
          wait for 10ns;
            sAi <= "010"; sBi <= "000";
          wait for 10ns;
            sAi <= "010"; sBi <= "001";
          wait for 10ns;
            sAi <= "010"; sBi <= "010";
          wait for 10ns;
            sAi <= "010"; sBi <= "011";
          wait for 10ns;
            sAi <= "010"; sBi <= "100";
          wait for 10ns;   
            sAi <= "010"; sBi <= "101";
          wait for 10ns;
            sAi <= "010"; sBi <= "110";
          wait for 10ns;
            sAi <= "010"; sBi <= "111";
          wait for 10ns;
            sAi <= "011"; sBi <= "000";
          wait for 10ns;
            sAi <= "011"; sBi <= "001";
          wait for 10ns;
            sAi <= "011"; sBi <= "010";
          wait for 10ns;
            sAi <= "011"; sBi <= "011";
          wait for 10ns;
            sAi <= "011"; sBi <= "100";
          wait for 10ns;   
            sAi <= "011"; sBi <= "101";
          wait for 10ns;
            sAi <= "011"; sBi <= "110";
          wait for 10ns;
            sAi <= "011"; sBi <= "111";
          wait for 10ns;
          sAi <= "100"; sBi <= "000";
          wait for 10ns;
          sAi <= "100"; sBi <= "001";
          wait for 10ns;
            sAi <= "100"; sBi <= "010";
          wait for 10ns;
            sAi <= "100"; sBi <= "011";
          wait for 10ns;
            sAi <= "100"; sBi <= "100";
          wait for 10ns;   
            sAi <= "100"; sBi <= "101";
          wait for 10ns;
            sAi <= "100"; sBi <= "110";
          wait for 10ns;
            sAi <= "100"; sBi <= "111";
          wait for 10ns;
            sAi <= "101"; sBi <= "000";
          wait for 10ns;
            sAi <= "101"; sBi <= "001";
          wait for 10ns;
            sAi <= "101"; sBi <= "010";
          wait for 10ns;
            sAi <= "101"; sBi <= "011";
          wait for 10ns;
            sAi <= "101"; sBi <= "100";
          wait for 10ns;   
            sAi <= "101"; sBi <= "101";
          wait for 10ns;
            sAi <= "101"; sBi <= "110";
          wait for 10ns;
            sAi <= "101"; sBi <= "111";
          wait for 10ns;
            sAi <= "110"; sBi <= "000";
          wait for 10ns;
            sAi <= "110"; sBi <= "001";
          wait for 10ns;
            sAi <= "110"; sBi <= "010";
          wait for 10ns;
            sAi <= "110"; sBi <= "011";
          wait for 10ns;
            sAi <= "110"; sBi <= "100";
          wait for 10ns;   
            sAi <= "110"; sBi <= "101";
          wait for 10ns;
            sAi <= "110"; sBi <= "110";
          wait for 10ns;
            sAi <= "110"; sBi <= "111";
          wait for 10ns;
            sAi <= "111"; sBi <= "000";
          wait for 10ns;
            sAi <= "111"; sBi <= "001";
          wait for 10ns;
            sAi <= "111"; sBi <= "010";
          wait for 10ns;
            sAi <= "111"; sBi <= "011";
          wait for 10ns;
            sAi <= "111"; sBi <= "100";
          wait for 10ns;   
            sAi <= "111"; sBi <= "101";
          wait for 10ns;
            sAi <= "111"; sBi <= "110";
          wait for 10ns;
            sAi <= "111"; sBi <= "111";
          wait;
        end process;
        

end Behavioral;
