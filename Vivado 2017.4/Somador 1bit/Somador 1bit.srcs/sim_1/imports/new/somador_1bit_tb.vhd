----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2022 12:36:46
-- Design Name: 
-- Module Name: somador_1bit_tb - Behavioral
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

entity somador_1bit_tb is
--  Port ( );
end somador_1bit_tb;

architecture Behavioral of somador_1bit_tb is
    component somador_1bit
        Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC);
    end component;
    
    signal sA, sB, sCin, sCout, sS: std_logic ;
begin
    uut: somador_1bit port map(A => sA, b => sB, Cin => sCin , Cout => sCout, S => sS);
    
    stimulus: process
        begin   
            Sa <= '0'; sB <='0'; sCin <='0';
            wait for 10ns;
            Sa <= '0'; sB <='0'; sCin <='1';
            wait for 10ns;
            Sa <= '0'; sB <='1'; sCin <='0';
            wait for 10ns;
            Sa <= '0'; sB <='1'; sCin <='1';
            wait for 10ns;
            Sa <= '1'; sB <='0'; sCin <='0';
            wait for 10ns;
            Sa <= '1'; sB <='0'; sCin <='1';
            wait for 10ns;
            Sa <= '1'; sB <='1'; sCin <='0';
            wait for 10ns;
            Sa <= '1'; sB <='1'; sCin <='1';
            wait ;
        end process;
end Behavioral;
