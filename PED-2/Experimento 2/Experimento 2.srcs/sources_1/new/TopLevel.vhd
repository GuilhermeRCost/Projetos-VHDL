----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 16:19:08
-- Design Name: 
-- Module Name: TopLevel - Behavioral
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

entity TopLevel is
    Port ( Clk : in STD_LOGIC;
           Restart : in STD_LOGIC;
           B : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Len : out STD_LOGIC;
           slow : out STD_LOGIC;
           clk_out : out STD_LOGIC;
           --seg : out std_logic_vector (0 to 6);
           led: out std_logic_vector (0 to 10));
end TopLevel;

architecture Behavioral of TopLevel is
    component BlocoCombinacional
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
        end component;
        
    component BlocoDeControle 
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
               Time_ld : out STD_LOGIC;
               Time_rst: out STD_LOGIC);
    end component;
    
    component clock_1hz Port ( Clk_in : in STD_LOGIC; rst: in std_logic ; clk_out : out STD_LOGIC);  end component;
    
    --component Decodificador_7Seg Port ( BCD : in STD_LOGIC; seg : out STD_LOGIC_VECTOR (6 downto 0)); end component;
    
    signal tempo: std_logic_vector (0 to 10);
    signal srC_it_2000, swC_it_10000, sclk, sLen, sSlow, sRC_rst,  sWC_rst, sRC_ld, sWC_ld, sTime_ld, sTime_rst: STD_LOGIC := '0' ;
begin
    --saidas
    slow <= sSlow;
    len <= sLen;
    led <= tempo;
    clk_out <= sclk;
    --entradas
    --sclk <= clk;
    clock: clock_1hz port map (clk_in => clk, rst => reset, clk_out => sclk);
    
    controle: BlocoDeControle port map(Clk => sclk, Restart => restart, Reset => Reset, B => B,
                                             rC_it_2000=> srC_it_2000, wC_it_10000 => swC_it_10000,
                                             Len => sLen, slow => sSlow, RC_rst => sRC_rst, 
                                             WC_rst => sWC_rst, RC_ld => sRC_ld,WC_ld => sWC_ld,
                                             Time_ld => sTime_ld,Time_rst => sTime_rst );
                                             
    operacao: BlocoCombinacional port map (clk => sclk, RC_rst => sRC_rst, WC_rst => sWC_rst, RC_ld => sRC_ld,
                    WC_ld => sWC_ld, Time_ld => sTime_ld,Time_rst => sTime_rst,
                   rC_it_2000=> srC_it_2000, wC_it_10000 => swC_it_10000, tempo => tempo );
end Behavioral;
