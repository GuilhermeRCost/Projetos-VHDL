----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 16:19:08
-- Design Name: 
-- Module Name: BlocoDeControle - Behavioral
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

entity BlocoDeControle is
    Port ( Clk : in STD_LOGIC;
           Restart : in STD_LOGIC;
           Reset : in STD_LOGIC;
           B : in STD_LOGIC;
           rC_it_2000 : in STD_LOGIC;
           wC_it_10000 : in STD_LOGIC;
           Len : out STD_LOGIC;
           slow : out STD_LOGIC;
           rC_rst: out STD_LOGIC;
           wC_rst : out STD_LOGIC;
           rC_ld: out STD_LOGIC;
           wC_ld : out STD_LOGIC;
           confereEstado: out std_logic_vector (0 to 4);
           Time_ld : out STD_LOGIC;
           Time_rst: out STD_LOGIC);
end BlocoDeControle;

architecture Behavioral of BlocoDeControle is
    type  state is  (init, eWait, count, eSlow, eDone);
    signal estado_atual, prox_estado: state := init; 
    
begin
    saidas: process(estado_atual)
    begin
        case estado_atual is 
            when init =>
               len <= '0';
               slow  <= '0';
               rC_rst <= '1';
               wC_rst  <= '1';
               rC_ld <= '0';
               wC_ld <= '0';
               Time_ld <= '0';
               Time_rst <= '0';
               confereEstado <= "10000";
               
            when eWait =>
                  len <= '0';
                  slow  <= '0';
                  rC_rst <= '0';
                  wC_rst  <= '0';
                  rC_ld <= '0';
                  wC_ld <= '1';
                  Time_ld <= '0';
                  Time_rst <= '1';
                  confereEstado <= "01000";
                  
            when count =>
                  len <= '1';
                  slow  <= '0';
                  rC_rst <= '0';
                  wC_rst  <= '0';
                  rC_ld <= '1';
                  wC_ld <= '0';
                  Time_ld <= '0';
                  Time_rst <= '0';
                  confereEstado <= "00100";
                  
            when eSlow =>
                len <= '0';
                slow  <= '1';
                rC_rst <= '0';
                wC_rst  <= '0';
                rC_ld <= '0';
                wC_ld <= '0';
                Time_ld <= '0';
                Time_rst <= '0';
                confereEstado <= "00010";
                
            when eDone =>
                len <= '0';
                slow <= '0';
                rC_rst <= '0';
                wC_rst  <= '1';
                rC_ld <= '1';
                wC_ld <= '0';
                Time_ld <= '1';
                Time_rst <= '0';
                confereEstado <= "00001";
                
            when others =>
               len <= '0';
               slow  <= '0';
               rC_rst <= '1';
               wC_rst  <= '1';
               rC_ld <= '0';
               wC_ld <= '0';
               Time_ld <= '0';
               Time_rst <= '0';
               confereEstado <= "11111";
        end case;
    end process;
    
    armazena_estado: process(clk, prox_estado, reset)
    begin
       if reset = '1' then
            estado_atual <= init;
       elsif (rising_edge(clk)) then
            estado_atual <= prox_estado;
        end if;
    end process;
    
    transicao_estado: process(estado_atual, B,  rC_it_2000 ,wC_it_10000, restart)
    begin
        case estado_atual is 
            when init =>
               if restart = '1' then
                prox_estado <= eWait;
               else
                prox_estado <= init;
               end if;
            when eWait =>
                  if wc_it_10000 = '1' then
                    prox_estado <= count;
                  else
                    prox_estado <= eWait;
                  end if;
            when count =>
                if ( (B = '0') and (rC_it_2000= '0') ) then
                    prox_estado <= count;
                elsif B = '1' then
                    prox_estado <= edone;
                else
                    prox_estado <= eSlow;
                end if;
            when eSlow =>
                prox_estado<= edone;
            when eDone =>
                prox_estado <= init;
            when others =>
                prox_estado <= init;
        end case;
    end process;
end Behavioral;
