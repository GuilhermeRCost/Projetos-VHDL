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
    signal sQ: std_logic_vector (3 downto 0):= "0000";
    signal sum_sig, sSub: signed(4 downto 0);
    signal smaxmin: std_logic;
begin
    --atribuindo valor as saidas
    maxmin <= smaxmin;
    Q <= sQ;
    RCOb <= '0' when ((sQ = "1001" and DownUp='0')or (sQ = "0000" and DownUp='1')) else '1';
    
    smaxmin <= '1' when ((sQ = "0000") or (sQ = "1001")) else '0';
    
    --Soma do contador
    sum_sig <= signed(sQ(3)&sQ) +1;
    sSub <= signed(sQ(3)&sQ) -1;
    
    ResetaContagem: process(load,sQ)
    begin
      if (load = '0') then
        sQ <= D;
      end if;  
    end Process;
   
   Contagem: process(clk,CTENb, load)
        begin
            if (rising_edge(clk) and CTENb ='0' and load ='1') then
                  if (DownUp='0') then
                    if ( sQ(3)='1' and (sQ(2)='1' or sQ(1)='1' or sQ(0)='1') ) then 
                        sQ <= "0000";
                    else
                        sQ <= std_logic_vector(sum_sig(3 downto 0));
                    end if;
                  else
                     if ( sQ="0000"or sQ="1010" or sQ="1011" or sQ="1100" or sQ="1101" or Sq="1110" or sQ="1111") then 
                        sQ <= "1001";
                     else
                        sQ <= std_logic_vector(sSub(3 downto 0));
                     end if;  
                  end if;
            end if;
        end process;
end Behavioral;
