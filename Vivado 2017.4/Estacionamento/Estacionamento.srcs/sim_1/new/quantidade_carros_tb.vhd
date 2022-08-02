----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 09:20:39
-- Design Name: 
-- Module Name: quantidade_carros_tb - Behavioral
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

entity quantidade_carros_tb is
    --Port ();
end quantidade_carros_tb;

architecture Behavioral of quantidade_carros_tb is
    component quantidade_carros
        Port ( S0 : in STD_LOGIC;
              S1 : in STD_LOGIC;
              S2 : in STD_LOGIC;
              C0 : out STD_LOGIC;
              C1 : out STD_LOGIC);
    end component ;
    signal  sS0 : std_logic ;
    signal  sS1 : std_logic ;
    signal  sS2 : std_logic ;
    signal  sC0 : std_logic ;
    signal  sC1 : std_logic ;
begin
    uut: quantidade_carros port map(S0 => sS0, 
                                    S1 => sS1, 
                                    S2 => sS2, 
                                    C0 => sC0, 
                                    C1 => sC1);
    stimulus: process 
    begin
        sS0 <= '0'; sS1 <= '0'; sS2 <= '0';
        wait for 10ns;
        sS0 <= '0'; sS1 <= '0'; sS2 <= '1';
        wait for 10ns;
        sS0 <= '0'; sS1 <= '1'; sS2 <= '0';
        wait for 10ns;
        sS0 <= '0'; sS1 <= '1'; sS2 <= '1';
        wait for 10ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '0';
        wait for 10ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '0';
        wait for 10ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '1';
        wait for 10ns;
        sS0 <= '1'; sS1 <= '1'; sS2 <= '0';
        wait for 10ns;
        sS0 <= '1'; sS1 <= '1'; sS2 <= '1';
        wait;
    end process ;
end Behavioral;
