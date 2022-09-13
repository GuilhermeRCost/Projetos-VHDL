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
--use IEEE.NUMERIC_STD.ALL;

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
    type state is (e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,ea,eb,ec,ed,ee,ef);
    signal cState, nextState: state;
    signal smaxmin: std_logic;
begin
    maxmin <= smaxmin;
    smaxmin <= '1' when ((cState = e0) or (cState = e9)) else '0';
    RCOb <= '0' when (cState = e9) else '1';
    
    
    armazena_estado: process(clk,CTENb, load)
    begin
            if (rising_edge(clk)) then
                if (load ='0') then
                    cState <= e0;
                else 
                    if (CTENB ='0') then
                        cState <= nextState;
                    end if;
                end if;
            end if;
    end process;
    
    transicao_estado: process(cstate, smaxmin, downUp)
    begin
        case cstate is   
            when e0 =>
                smaxmin <= '1';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e1;
                end if;
            when e1 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e0;
                else
                    nextState <= e2;
                end if;
            when e2 =>
                 smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e1;
                else
                    nextState <= e3;
                end if;
            when e3 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e2;
                else
                    nextState <= e4;
                end if;
            when e4 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e3;
                else
                    nextState <= e5;
                end if;
            when e5 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e4;
                else
                    nextState <= e6;
                end if;
            when e6 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e5;
                else
                    nextState <= e7;
                end if;
            when e7 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e6;
                else
                    nextState <= e8;
                end if;
            when e8 =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e7;
                else
                    nextState <= e9;
                end if;
            when e9 =>
                smaxmin <= '1';
                if downUp = '1' then
                  nextState <= e8;
                else
                    nextState <= e0;
                end if;
            when ea =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
            when eb =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
            when ec =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
            when ed =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
            when ee =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
            when ef =>
                smaxmin <= '0';
                if downUp = '1' then
                  nextState <= e9;
                else
                    nextState <= e0;
                end if;
        end case;
    end process;
end Behavioral;
