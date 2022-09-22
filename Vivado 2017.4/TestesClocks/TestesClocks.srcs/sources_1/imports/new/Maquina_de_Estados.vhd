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
           Sr : out STD_LOGIC);
end Maquina_de_Estados;

architecture Behavioral of Maquina_de_Estados is
    type state is (e1, e2,e3, e4);
    signal Ts, Tl : std_logic ;
    signal sM, sS: std_logic_vector (0 to 2) ;
    signal cState, nextState: state;
    
    --sinais para o clock
    signal clk_5s, clk_25s, sClk : std_logic := '0' ;
    signal prescaler5 : integer range 0 to 500_000_000 := 500_000_000; 
    signal counter5 : integer range 1 to 500_000_000 := 1;
    signal prescaler25 : integer range 0 to 1250_000_000 := 1250_000_000;
    signal counter25, counter25_2 : integer range 1 to 1250_000_000 := 1;
begin
    Mg <= sM(0);
    My <= sM(1);
    Mr <= sM(2);
    
    Sg <= sS(0);
    Sy <= sS(1);
    Sr <= sS(2);
    
    --atribuindo valor as saidas
    DecodificaEstado: process(cstate, sM, sS)
    begin
        case cState is
          when  e1 =>
               sM <= "100"; --verde
               sS <= "001";  --vermelho
               Tl <= '1'; 
               Ts <= '0';
          when  e2 =>
               sM <= "010"; --amarelo
               sS <= "001"; --vermelho
               Tl <= '0'; 
               Ts <= '1';
          when  e3 =>
               SM <= "001"; --vermelho
               sS <= "100"; --verde
               Tl <= '1'; 
               Ts <= '0';
          when  e4 =>
               sM <= "001"; --vermelho
               sS <= "010"; --amarelo
               Tl <= '0'; 
               Ts <= '1';
       end case;
    end process;
    
    
    --transição de estados
    armazena_estado: process(sclk, vS, cstate, nextState)
    begin
       
           if ( rising_edge(sclk) or ( (cstate = e1) and ( Vs ='1' ) ) or ( (cState =e3) and ( Vs ='0' ) ) ) then
               cState <= nextState;
           end if;  
    end process;
    
     transicao_estado: process(cstate)
          begin
              case cstate is
               when e1 => 
                        nextState <= e2;
               when e2 =>
                       nextState <= e3;
               when e3 =>
                       nextState <= e4;
               when e4 =>
                       nextState <= e1;  
               end case;
          end process;
          
      
              
        SeletorTime: process(Tl, Ts, clk)
        begin
        --Zera a contagem dos clocks
            if ( rising_edge(Tl) or rising_edge(Ts) ) then
                counter25 <= 1;
                counter25_2 <= 1;
                counter5 <= 1;
                --Seleção do clock
                if (Tl ='1') then
                    sclk <= clk_25s;
                else
                    sclk <= clk_5s;
                end if;
            end if;      
            
            if  rising_edge(clk) then 
                if  Tl ='1' then 
                  if not(counter25 = prescaler25) then 
                      counter25 <= counter25 + 1;
                  elsif (counter25_2 = prescaler25) then
                        counter25 <= 1; 
                        counter25_2 <= 1;
                        clk_25s <= not clk_25s;  
                  else
                        counter25_2 <= counter25_2 +1;
                  end if;
                
                elsif  Ts ='1' then 
                  if counter5 = prescaler5 then 
                      counter5 <= 1; 
                      clk_5s <= not clk_5s; 
                  else 
                      counter5 <= counter5 + 1; 
                  end if; 
                end if;
          end if;
        end process;
end Behavioral;
