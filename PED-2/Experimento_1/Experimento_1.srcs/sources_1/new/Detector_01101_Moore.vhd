----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2022 12:16:09
-- Design Name: 
-- Module Name: Detector_01101_Moore - Behavioral
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

entity Detector_01101_Moore is
    Port ( Clk : in STD_LOGIC;
           rst: in std_logic ;
           A : in STD_LOGIC;
           led1 : out STD_LOGIC);
end Detector_01101_Moore;

architecture Behavioral of Detector_01101_Moore is
    type state is (e0, e1, e2, e3 ,e4 ,e5);
    signal estado_atual, prox_estado: state := e0;
begin

    Saidas: process(estado_Atual)
        begin
            if (estado_atual = e5) then
                    led1 <= '1';
            else
                    led1 <= '0';
            end if;
    end process;
    
    ArmazenaEstado: process(clk, rst, prox_Estado)
        begin
            if rst = '1' then
                estado_atual <= e0;
            elsif rising_edge(clk) then
                estado_atual <= prox_estado;
            end if;
    end process;
    
    TransicaoEstados: process(A, estado_Atual)
        begin
            case estado_atual is
                when e0 =>
                    if a='1' then
                        prox_estado <= e0;
                    else
                        prox_estado <= e1;
                    end if;
                when e1 =>
                    if a='1' then
                        prox_estado <= e2;
                    else
                        prox_estado <= e1;
                    end if;
                when e2 =>
                    if a='1' then
                        prox_estado <= e3;
                    else
                        prox_estado <= e1;
                    end if;
                when e3 =>
                    if a='1' then
                        prox_estado <= e0;
                    else
                        prox_estado <= e4;
                    end if;
                when e4 =>
                    if a='1' then
                        prox_estado <= e5;
                    else
                        prox_estado <= e1;
                    end if;
                when e5 =>
                    if a='1' then
                        prox_estado <= e0;
                    else
                        prox_estado <= e1;
                    end if;
                when others =>
                    prox_estado <= e0;
            end case;
            
    end process;
end Behavioral;
