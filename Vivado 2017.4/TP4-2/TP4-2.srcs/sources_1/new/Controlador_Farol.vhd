----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2022 21:40:10
-- Design Name: 
-- Module Name: Controlador_Farol - Behavioral
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

entity Controlador_Farol is
    Port ( CLK : in STD_LOGIC;
           Left : in STD_LOGIC;
           Right : in STD_LOGIC;
           haz : in STD_LOGIC;
           Ll : out STD_LOGIC_VECTOR (0 to 3);
           Rl : out STD_LOGIC_VECTOR (0 to 3));
end Controlador_Farol;

architecture Behavioral of Controlador_Farol is
    type state is (IDLE,L1,L2,L3,R1,R2,R3,LR3);
    signal cState, nextState: state;
begin
    armazena_estado: process(clk,left,right,haz)
    begin
        if (rising_edge(clk)) then
            cState <= nextState;
        end if;
    end process;
    
     transicao_estado: process(cstate,left,right,haz)
       begin
           case cstate is
                --Possiveis entradas para o primeiro estado
                when IDLE =>
                    if (not(left='1' or right='1' or haz='1')) then
                    nextstate <= IDLE;
                    else
                        if (left ='1' and right='0' and haz='0') then
                            nextstate <= L1;
                         else
                            if (left ='0' and right='1' and haz='0') then
                                nextstate <= R1;
                            else
                                if (left ='0' and right='1' and haz='0') then
                                    nextstate <= LR3;
                                end if;    
                            end if;   
                        end if;
                    end if;
                when L1 =>
                   if (haz='0') then
                       nextstate <= L2;
                    else
                         nextstate <= LR3;
                   end if;
               when L2 =>
                  if (haz='0') then
                      nextstate <= L3;
                   else
                        nextstate <= LR3;
                  end if;
               when L3 =>
                  nextState <= IDLE;
               when R1 =>
                 if (haz='0') then
                     nextstate <= R2;
                  else
                       nextstate <= LR3;
                 end if;
             when R2 =>
                if (haz='0') then
                    nextstate <= R3;
                 else
                      nextstate <= LR3;
                end if;
             when R3 =>
                nextState <= IDLE;
             when LR3 =>
                nextState <= IDLE;
           end case;
        end process;
end Behavioral;
