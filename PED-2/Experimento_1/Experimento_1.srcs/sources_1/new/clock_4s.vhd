----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2022 12:16:09
-- Design Name: 
-- Module Name: clock_4s - Behavioral
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

entity clock_4s is
    Port ( Clk_in : in STD_LOGIC;
            rst: in std_logic ;
           clk_out : out STD_LOGIC);
end clock_4s;

architecture Behavioral of clock_4s is
   constant prescaler : integer := 200_000_000; 
   signal counter : integer range 0 to 200_000_000 := 0; 
   signal newClock : std_logic := '0'; 
begin
    clkDivisor : process(clk_in, rst) 
          begin 
              if rst = '1' then
                counter <= 0;
                newclock <= '0';
              elsif rising_edge(clk_in) then 
                  if counter = prescaler then 
                      counter <= 0; 
                      newClock <= not newClock; 
                  else 
                      counter <= counter + 1; 
                  end if; 
              end if; 
          end process; 
   
      clk_out <= newClock; 

end Behavioral;
