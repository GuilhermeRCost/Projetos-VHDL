----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2022 16:27:34
-- Design Name: 
-- Module Name: Farois_tb - Behavioral
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

entity Farois_tb is
--  Port ( );
end Farois_tb;

architecture Behavioral of Farois_tb is
    component  Controlador_farol
        Port ( CLK : in STD_LOGIC;
               Left : in STD_LOGIC;
               Right : in STD_LOGIC;
               haz : in STD_LOGIC;
               L : out STD_LOGIC_VECTOR (0 to 2);
               R : out STD_LOGIC_VECTOR (0 to 2));
    end component;
    signal sL, SR: STD_LOGIC_VECTOR (0 to 2);
    signal sCLK, sLeft, sRight, sHaz: std_logic ;
begin
    uut: Controlador_farol port map(clk => sClk, Left => sLeft, Right => sRight, Haz => sHAz, L => sL, R=> sR);
    
    simulacao: process
    begin
        sClk <= '0'; sLeft <='0'; sRight <='0'; shaz<= '0'; wait for 5ns;
        sLeft <='1'; wait for 5ns;
        
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        
        sClk <= not(sClk); wait for 5ns;
        sLeft <='0'; sRight<='1'; wait for 5ns;
        
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        
        
        sClk <= not(sClk); wait for 5ns;
        shaz <= '1'; wait for 5ns;
        
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait for 10ns;
        sClk <= not(sClk); wait ;
    end process;
end Behavioral;
