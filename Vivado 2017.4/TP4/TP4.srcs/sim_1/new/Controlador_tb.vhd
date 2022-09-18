----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2022 15:54:20
-- Design Name: 
-- Module Name: Controlador_tb - Behavioral
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

entity Controlador_tb is
--  Port ( );
end Controlador_tb;

architecture Behavioral of Controlador_tb is
    component ControleContador 
        Port (  DownUp : in STD_LOGIC;
               Load: in std_logic;
               CTENb: in std_logic;
               D : in STD_LOGIC_VECTOR (3 downto 0);
               Q : out STD_LOGIC_VECTOR (3 downto 0);
               MaxMin : out STD_LOGIC;
               RCOb : out STD_LOGIC;
               seg: out std_logic_vector (0 to 6));
    end component ;
    signal  sDownUp, sLoad, sCTENB, smaxmin, srcob: std_logic ;
    signal sd, sQ: STD_LOGIC_VECTOR (3 downto 0);
begin
    
  
    utt: ControleContador port map(DownUp => sDownUp, load => sload, ctenb=>sctenb, d=> sd,Q=> sQ, maxmin => smaxmin, RCOB => sRCOB );
    
    estimulo:process
    begin
        sDownUp <= '0'; sload <='1'; sd<="0111"; sCtenb <= '0'; wait for 2ns; sload <='0';
        wait for 2ns; sload<= '1';
        wait for 30ns;
        sDownUp<='1';
        wait for 30ns;
        sCtenb<= '1';
        wait for 20ns;
        sCtenb <= '0';
        wait;
    end process;




end Behavioral;
