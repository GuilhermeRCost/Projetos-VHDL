----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2022 14:48:13
-- Design Name: 
-- Module Name: Clock1Hz - Behavioral
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
  
 entity clock1hz is 
      Port( 
          clk_in : in std_logic; 
          clk_1hz : out std_logic 
      ); 
  end clock1hz; 
   
  architecture Behavioral of clock1hz is 
   
      signal prescaler : integer range 0 to 50_000_000 := 50_000_000; 
      signal counter : integer range 1 to 50_000_000 := 1; 
      signal newClock : std_logic := '0'; 
   
  begin 
   
      clkDivisor : process(clk_in) 
          begin 
              if rising_edge(clk_in) then 
                  if counter = prescaler then 
                      counter <= 1; 
                      newClock <= not newClock; 
                  else 
                      counter <= counter + 1; 
                  end if; 
              end if; 
          end process; 
   
      clk_1hz <= newClock; 
   
  end Behavioral;
