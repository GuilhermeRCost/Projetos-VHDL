----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2022 08:37:23
-- Design Name: 
-- Module Name: Contador - Behavioral
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

entity Contador is
    Port ( CLK : in STD_LOGIC;
           DownUp : in STD_LOGIC;
           Load: in std_logic;
           CTENb: in std_logic;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           MaxMin : out STD_LOGIC;
           RCOb : out STD_LOGIC);
end Contador;

architecture Behavioral of Contador is
    signal sQ: signed (4 downto 0):= "00000";
    signal smaxmin: std_logic;
begin
    --atribuindo valor as saidas
    maxmin <= smaxmin;
    with load select Q <=
        D when '0',
        std_logic_vector(sQ(3 downto 0)) when others ;
        
    RCOb <= '1' when ((sQ = 9 and DownUp='0')or (sQ = 0 and DownUp='1')) else '0';
    
    smaxmin <= '1' when ((sQ = 0) or (sQ = 9)) else '0';
   
   Contagem: process(clk,CTENb, load, SQ, DownUp, D)
        begin
            if (load ='0') then
                sQ <= signed(D(3)&D);
            elsif (rising_edge(clk) and CTENb ='0') then
                  if (DownUp='0') then
                    if ( sQ >= 9 ) then 
                        sQ <= "00000";
                    else
                        sQ <= sQ + 1;
                    end if;
                  else
                     if ( sQ <= 0) then 
                        sQ <= "01001";
                     else
                        sQ <= sQ -1;
                     end if;  
                  end if;
            end if;
        end process;
end Behavioral;
