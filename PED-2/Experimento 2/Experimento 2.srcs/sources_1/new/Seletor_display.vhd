----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2023 13:44:54
-- Design Name: 
-- Module Name: Seletor_display - Behavioral
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

entity Seletor_display is
  Port (  clk : in STD_LOGIC;
          A : in STD_LOGIC_VECTOR (0 to 3);
          B : in STD_LOGIC_VECTOR (0 to 3);
          C : in STD_LOGIC_VECTOR (0 to 3);
          D : in STD_LOGIC_VECTOR (0 to 3);
          an : out STD_LOGIC_VECTOR (0 to 3);
          seg : out STD_LOGIC_VECTOR (0 to 6));
end Seletor_display;

architecture Behavioral of Seletor_display is
    component Decodificador_7Seg
        Port (
            BCD   : in STD_LOGIC_VECTOR (0 to 3); -- Number to be displayed
            seg : out STD_LOGIC_VECTOR (0 to 6)); -- Decoded vector to light up display LEDs
    end component;

    signal i : std_logic_vector(0 to 3):= (others => '0');
    signal counter : unsigned(0 to 1) := "00";
begin
    decode : Decodificador_7Seg port map (BCD => i, seg => seg);

    display_on : process(clk, D, A, C, B)
        begin
            if rising_edge(clk) then
                case counter is
                    when "00" => -- primeiro liga o primeiro display com o numero D
                         i <= D;
                         an <= "1110";
                    when "01" => -- depois liga o segundo display com o numero C
                         i <= C;
                         an <= "1101";
                    when "10" => -- depois liga o terceiro display com o numero B
                         i <= B;
                         an <= "1011";  
                    when "11" => -- depois liga o quarto display com o numero A
                         i <= A;
                         an <= "0111";
                    when others =>
                         i <= "1011";
                         an <= "1111";
                end case;
                 
                 counter <= counter + "01";
                 
            end if;
        end process;

end Behavioral;
