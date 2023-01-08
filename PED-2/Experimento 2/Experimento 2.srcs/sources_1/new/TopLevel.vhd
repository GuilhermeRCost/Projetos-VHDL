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
use IEEE.NUMERIC_STD.ALL;

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
           an : out std_logic_vector(3 downto 0);
           slow : out STD_LOGIC;
           confereEstado: out std_logic_vector (0 to 4);
           seg : out std_logic_vector (0 to 6)
           );
end TopLevel;

architecture Behavioral of TopLevel is
    function to_bcd ( bin : std_logic_vector(10 downto 0) ) return std_logic_vector is
    variable i : integer:=0;
    variable bcd : unsigned(13 downto 0) := (others => '0');
    variable bint : unsigned(10 downto 0) := unsigned(bin);

    begin
        for i in 0 to 10 loop  -- repeating 8 times.
            bcd(13 downto 1) := bcd(12 downto 0);  --shifting the bits.
            bcd(0) := bint(10);
            bint(10 downto 1) := bint(9 downto 0);
            bint(0) := '0';
            
            
            if(i < 10 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
                bcd(3 downto 0) := bcd(3 downto 0) + "0011";
            end if;
            
            if(i < 10 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
                bcd(7 downto 4) := bcd(7 downto 4) + "0011";
            end if;
            
            if(i < 10 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
                bcd(11 downto 8) := bcd(11 downto 8) + "0011";
            end if;
        
        
        end loop;
        return std_logic_vector(bcd);
    end to_bcd;
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
               confereEstado: out std_logic_vector (0 to 4);
               Time_ld : out STD_LOGIC;
               Time_rst: out STD_LOGIC);
    end component;
    
    component clock_1hz Port ( Clk_in : in STD_LOGIC; rst: in std_logic ; clk_out : out STD_LOGIC);  end component;
    component clock240hz Port ( Clk_in : in STD_LOGIC; rst: in std_logic ; clk_out : out STD_LOGIC);  end component;
    
   component Seletor_display is
      Port (  clk : in STD_LOGIC;
              A : in STD_LOGIC_VECTOR (0 to 3);
              B : in STD_LOGIC_VECTOR (0 to 3);
              C : in STD_LOGIC_VECTOR (0 to 3);
              D : in STD_LOGIC_VECTOR (0 to 3);
              an : out STD_LOGIC_VECTOR (0 to 3);
              seg : out STD_LOGIC_VECTOR (0 to 6));
    end component;
    
    component ConversorBinBcd 
        Port ( Bin : in std_logic_vector (10 downto 0);
               BCD : out std_logic_vector (13 downto 0));
    end component;
    
    --sinais
    signal unidades, Dezenas, Centenas, Milhares : std_logic_vector(3 downto 0) := "0000";
        
    signal tempo_bin: std_logic_vector (0 to 10);
    signal tempo_bcd: std_logic_vector (13 downto 0);
    signal clk_240hz, srC_it_2000, swC_it_10000, sclk, sLen, sSlow, sRC_rst,  sWC_rst, sRC_ld, sWC_ld, sTime_ld, sTime_rst: STD_LOGIC := '0' ;
begin
    --saidas
    slow <= sSlow;
    len <= sLen;
    --led <= tempo;
    --clk_out <= sclk;
    
    --entradas
    --sclk <= clk;
    
    --clocks
    clock_1khz: clock_1hz port map (clk_in => clk, rst => reset, clk_out => sclk);
    clock_240hz: clock240hz port map (clk_in => clk, rst => reset, clk_out => clk_240hz);
    
    --bloco de controle
    controle: BlocoDeControle port map(Clk => sclk, Restart => restart, Reset => Reset, B => B,
                                             rC_it_2000=> srC_it_2000, wC_it_10000 => swC_it_10000,
                                             Len => sLen, slow => sSlow, RC_rst => sRC_rst, 
                                             WC_rst => sWC_rst, RC_ld => sRC_ld,WC_ld => sWC_ld,
                                             Time_ld => sTime_ld,Time_rst => sTime_rst, confereEstado => confereEstado );
     
    --bloco combinacional                                        
    operacao: BlocoCombinacional port map (clk => sclk, RC_rst => sRC_rst, WC_rst => sWC_rst, RC_ld => sRC_ld,
                    WC_ld => sWC_ld, Time_ld => sTime_ld,Time_rst => sTime_rst,
                   rC_it_2000=> srC_it_2000, wC_it_10000 => swC_it_10000, tempo => tempo_bin );
   
    --conversão do tempo de binário para BCD
    --conversor: ConversorBinBcd Port map ( Bin => tempo_bin, BCD => tempo_bcd);
      tempo_bcd <= to_bcd(tempo_bin);
      
    --atribuição do valor do tempo(já em bcd) em diferentes vetores, que serao usados em displays diferentes
       Milhares <= "00" & tempo_bcd(13 downto 12);
       Centenas <= tempo_bcd(11 downto 8);
       Dezenas <= tempo_bcd(7 downto 4);
       unidades <= tempo_bcd(3 downto 0);
       
    --muliplexador que atribuira valor aos displays  
    display : Seletor_display port map(clk => clk_240hz, A => Milhares, B => Centenas, C => Dezenas,
                                         D => unidades, an => an, seg => seg);

end Behavioral;
