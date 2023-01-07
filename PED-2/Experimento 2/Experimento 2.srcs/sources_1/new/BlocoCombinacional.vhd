----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 16:19:08
-- Design Name: 
-- Module Name: BlocoCombinacional - Behavioral
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

entity BlocoCombinacional is
     Port (clk: in std_logic ;
           rC_it_2000 : out STD_LOGIC;
           wC_it_10000 : out STD_LOGIC;
           tempo: out std_logic_vector (0 to 10) ;
           rC_rst: in STD_LOGIC;
           wC_rst : in STD_LOGIC;
           rC_ld: in STD_LOGIC;
           wC_ld : in STD_LOGIC;
           Time_ld : in STD_LOGIC;
           Time_rst: in STD_LOGIC );
end BlocoCombinacional;

architecture Behavioral of BlocoCombinacional is
    constant prescaler : integer := 10_000;
    constant prescaler2 : integer := 2_000;
    signal sWCnt, sRCnt, display: integer range 0 to 10_000 := 0;
    --signal display: integer range 0 to 1023 := 0;
    signal sRC_it_2000, sWC_it_10000: std_logic := '0';
    
    
begin
    --saidas
    tempo <= std_logic_vector(to_unsigned(display,tempo'length));
    wC_it_10000 <= swC_it_10000;
    rC_it_2000 <= srC_it_2000;
    
    --processos
    conte:process(clk, rC_ld, rC_rst)
    begin
        if rC_rst = '1' then
            sRCnt <= 0;
        elsif (rising_edge(clk) and rC_ld ='1') then
            sRCnt <= sRCnt + 1;
        end if;
    end process;
    
    comparador1:process(sRCnt)
    begin
        if (sRCnt < prescaler2) then
            sRC_it_2000 <= '0';
        else
            sRC_it_2000 <= '1';
        end if;
    end process;
    
    aguarde:process(clk, wC_rst, wC_ld)
    begin
        if wC_rst = '1' then
            sWCnt <= 0;
        elsif (rising_edge(clk) and wC_ld ='1') then
            sWCnt <= sWCnt + 1;
        end if;
    end process;
    
    comparador2:process(sWCnt)
        begin  
            if (sWCnt < prescaler) then
                sWC_it_10000 <= '0';
            else
                sWC_it_10000 <= '1';
            end if;
    end process;
    
    mostraDisplay: process(clk, Time_rst, Time_ld)
    begin
         if Time_rst = '1' then
               display <= 0;
           elsif (rising_edge(clk) and Time_ld ='1') then
               display <= sRCnt;
           end if;
    end process;
end Behavioral;
