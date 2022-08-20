----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.08.2022 08:42:21
-- Design Name: 
-- Module Name: operacoes - Behavioral
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

entity operacoes is
  generic( NUM_BITS: INTEGER := 4);
  Port ( A,B : in STD_LOGIC_VECTOR (NUM_BITS-1 downto 0);
          S: in std_logic_vector (0 to 1);
          O: out STD_LOGIC_vector (NUM_BITS-1 downto 0);
          Overflow: out std_logic;
          seg: out std_logic_vector (0 to 6);
          dp: out std_logic);
          
end operacoes;

architecture Behavioral of operacoes is
    --instanciando o decodificador
    component decodificador_7segmentos
        Port ( BCD : in std_logic_vector (3 downto 0);
                seg : out std_logic_vector (0 to 6);
                dp: out std_logic);
    end component;
    
    --criando os sinais
    signal sum_sig, sSub: signed(NUM_BITS downto 0);
    signal sSeg: std_logic_vector (0 to 6);
    signal sO, oAnd, nA: std_logic_vector (NUM_BITS-1 downto 0);
    signal sDp: std_logic ;
begin
    --Realizando as operações
    sum_sig<= signed(A(NUM_BITS-1)&A) + signed(b);
    sSub <= signed(A(NUM_BITS-1)&A) - 1;
    oAnd <= A and B;
    nA <= not(A);
    
    --Atribuindo a operação a saida
    with S select
       sO <=  oAnd when "00",
              nA when "01",
              std_logic_vector(sum_sig(NUM_BITS-1 downto 0)) when "10", --0
              std_logic_vector(sSub(NUM_BITS-1 downto 0)) when others;
              
    with S(1) select
        Overflow <= ( sum_sig(NUM_BITS)xor sum_sig(NUM_BITS-1)) when '1',
                    '0' when others;
        
     O <= sO;
     --Atribuindo as saidas do display
     display: decodificador_7segmentos port map(BCD => sO, seg =>sSeg, dp =>sDp);         
     seg <= "1111111" when S(0) ='1' else sSeg;
     dp<= '1' when S(0) ='0' else sDp;              
end Behavioral;