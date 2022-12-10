----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 09:33:17
-- Design Name: 
-- Module Name: Moore_tb - Behavioral
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

entity Moore_tb is
--  Port ( );
end Moore_tb;

architecture Behavioral of Moore_tb is
    component Detector_01101_Moore
        Port ( Clk : in STD_LOGIC;
               rst: in std_logic ;
               A : in STD_LOGIC;
               led1 : out STD_LOGIC);
    end component;
    
    signal sclk, sa, sr, sled: std_logic := '0';
begin
        Moore: Detector_01101_Moore port map (clk => sclk, rst => sr, a=> sa, led1 => sled);
        
        sinalClock: process
        begin
            wait for 5ns;
            sclk <= not sclk;
        end process;
       
        entradas: process
        begin
           sr <= '1'; wait for 6ns; --e0
           sr <= '0'; sa <= '1'; wait for 5ns; --e0
           sa <= '0'; wait for 10ns; --e0 -> e1
           sa <= '0'; wait for 10ns; --e1
           sa <= '1'; wait for 10ns; -- e1 -> e2
           sa <= '1'; wait for 10ns; -- e2 -> e3
           sa <= '0'; wait for 10ns; -- e3 -> e4
           sa <= '1'; wait for 10ns; -- e4 -> e5
           sa <= '0'; wait for 10ns; --e1
           sr <= '1'; wait ; --e1
           
        end process; 
end Behavioral;
