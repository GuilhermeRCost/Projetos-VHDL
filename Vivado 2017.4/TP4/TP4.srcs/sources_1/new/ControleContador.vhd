----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2022 15:11:00
-- Design Name: 
-- Module Name: ControleContador - Behavioral
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

entity ControleContador is
Port (     CLK: in std_logic ;
           DownUp : in STD_LOGIC;
           Load: in std_logic;
           CTENb: in std_logic;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           MaxMin : out STD_LOGIC;
           RCOb : out STD_LOGIC;
           seg: out std_logic_vector (0 to 6));
end ControleContador;

architecture Behavioral of ControleContador is

    --Instanciando os componentes
    component decodificador_7segmentos
        Port ( BCD : in std_logic_vector (3 downto 0);
                seg : out std_logic_vector (0 to 6) );
    end component;
    component Contador
        Port ( CLK : in STD_LOGIC;
               DownUp : in STD_LOGIC;
               Load: in std_logic;
               CTENb: in std_logic;
               D : in STD_LOGIC_VECTOR (3 downto 0);
               Q : out STD_LOGIC_VECTOR (3 downto 0);
               MaxMin : out STD_LOGIC;
               RCOb : out STD_LOGIC);
    end component;
    component clock1hz
         Port( clk_in : in std_logic; 
             clk_1hz : out std_logic 
         ); 
    end component;
    
    --sinais auxiliares
    signal sQ: std_logic_vector (3 downto 0);
    signal sSeg: std_logic_vector (0 to 6);
    signal sclock: std_logic;
begin
    --Atribuindo os componentes
    clock: clock1hz port map(clk_in => CLK, clk_1hz => sclock);
    
    CIcontador: Contador port map(Clk => sclock, DownUp => DownUp, load => load, ctenb=>ctenb, d=> d,Q=> sQ, maxmin => maxmin, RCOB => RCOB );
    display: decodificador_7segmentos port map(BCD => sQ, seg =>sSeg);  
    Q <= sQ;  
    seg<= sSeg;
end Behavioral;
