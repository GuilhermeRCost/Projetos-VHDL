----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2022 14:05:56
-- Design Name: 
-- Module Name: Maquina_de_Estados - Behavioral
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

entity Maquina_de_Estados is
    Port ( CLK: in STD_LOGIC;
           Vs : in STD_LOGIC;
           Mg : out STD_LOGIC;
           My : out STD_LOGIC;
           Mr : out STD_LOGIC;
           Sg : out STD_LOGIC;
           Sy : out STD_LOGIC;
           Sr : out STD_LOGIC;
           clk_out: out std_logic );
end Maquina_de_Estados;

architecture Behavioral of Maquina_de_Estados is
    type state is (e1, e2,e3, e4);
    signal Ts, Tl : std_logic ;
    signal sM, sS: std_logic_vector (0 to 2) ;
    signal cState, nextState: state;
    
    --sinais para o clock
    signal clk_5s, clk_25s, sClk : std_logic := '0' ;
    signal prescaler5 : integer range 0 to 250_000_000 := 250_000_000; 
    signal counter5 : integer range 1 to 250_000_000 := 1;
    signal prescaler25 : integer range 0 to 1250_000_000 := 1250_000_000;
    signal counter25: integer range 1 to 1250_000_000 := 1;
begin
    Mg <= sM(0);
    My <= sM(1);
    Mr <= sM(2);
    
    Sg <= sS(0);
    Sy <= sS(1);
    Sr <= sS(2);
    
    --atribuindo valor as saidas
      with cState  select
          sM <= "100" when e1,  --verde
                "010" when e2,  --amarelo
                "001" when e3,  --vermelho
                "001" when e4,  --vermelho
                "000" when others ; 
     with cState  select 
          sS <=  "001" when e1, --vermelho
                 "001" when e2, --vermelho
                 "100" when e3, --verde
                 "010" when e4, --amarelo
                 "000" when others;  --vermelho
     
  --  Tl <= '1' when (Cstate = e1 or Cstate =e3) else '0';
    --Ts <= not Tl;
    
   
    --transição de estados
    armazena_estado: process(sclk, vS, cstate, nextState)
    begin
       
           if ( rising_edge(clk_5s) ) then
               cState <= nextState;
           end if;  
    end process;
    
     transicao_estado: process(cstate, Vs)
          begin
              case cstate is
               when e1 => 
                  if (Tl ='1' and Vs ='0')   then --looping
                    nextState <= e1;
                  else
                    nextState <= e2;
                  end if;
               when e2 =>
                   nextState <= e3;
               when e3 =>
                  if (Tl ='1' and Vs ='1')   then --looping
                   nextState <= e3;
                 else
                   nextState <= e4;
                 end if;
               when e4 =>
                   nextState <= e1;  
               end case;
          end process;
          
          --Escolhendo o tempo correto
   -- sclk <= clk_5s when tl ='0' else clk_25s;
    clk_out <= clk_5s;    
     
    
        SeletorTime: process(Tl, clk)
        begin
            
            if  rising_edge(clk) then 
                --if  Tl ='1' then 
                --counter5 <= 1;
                  if counter25 = prescaler25 then 
                     counter25 <= 1; 
                     tl<= '0';
                   --   clk_25s <= not clk_25s;
                  else
                        tl<='1';
                        counter25 <= counter25 +1;
                  end if;
                
                --elsif  Ts ='1' then 
                 -- counter25 <= 1;
                  if counter5 = prescaler5 then 
                      counter5 <= 1; 
                      clk_5s <= not clk_5s; 
                  else 
                      counter5 <= counter5 + 1; 
                  end if; 
                --end if;
          end if;
        end process;
end Behavioral;
