----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2023 13:35:42
-- Design Name: 
-- Module Name: topLevel_tb - Behavioral
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

entity topLevel_tb is
--  Port ( );
end topLevel_tb;

architecture Behavioral of topLevel_tb is
    component TopLevel 
        Port ( Clk : in STD_LOGIC;
               Restart : in STD_LOGIC;
               B : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Len : out STD_LOGIC;
               slow : out STD_LOGIC;
               clk_out : out STD_LOGIC;
               --seg : out std_logic_vector (0 to 6);
               led: out std_logic_vector (0 to 10));
    end component;
    
    signal sClk, sRestart, sB, sReset, sLen, sslow, sclk_out, sdone : STD_LOGIC := '0';
    signal sseg : std_logic_vector (0 to 6):= (others => '0');
    signal sled : std_logic_vector (0 to 10):= (others => '0');
begin
    top: TopLevel port map (Clk => sclk,  Restart => sRestart,  B => sB, Reset => sReset, Len => slen, slow => sSlow, clk_out => sclk_out, led => sled);

    clock: process
    begin
        wait for 5ns;
        sclk <= not sclk;
    end process;
    
    entradas: process
    begin
        sreset<= '1';
        wait for 3 ns;
        sreset <= '0';
        wait for 3ns;
        srestart <= '1';
        wait for 100000ns;
        wait;
    end process;
end Behavioral;
