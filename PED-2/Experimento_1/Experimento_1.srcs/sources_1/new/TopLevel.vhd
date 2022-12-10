----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2022 21:18:10
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
    Port ( CLK : in STD_LOGIC;
           a : in STD_LOGIC;
           rst: in std_logic ;
           led : out STD_LOGIC_VECTOR (0 to 2));
end TopLevel;

architecture Behavioral of TopLevel is
    component Detector_01101_Moore
        Port ( Clk : in STD_LOGIC;
               rst: in std_logic ;
               A : in STD_LOGIC;
               led1 : out STD_LOGIC);
    end component;
    
    component Detector_01111_Mealy
        Port ( Clk : in STD_LOGIC;
               rst: in std_logic ;
               A : in STD_LOGIC;
               led2 : out STD_LOGIC);
    end component;
    
    component clock_4s
         Port ( Clk_in : in STD_LOGIC;
               rst: in std_logic ;
              clk_out : out STD_LOGIC);
    end component;
    
    signal sclk: std_logic := '0';
    signal sled: std_logic_vector (0 to 1):= "00";
begin
    DividorClock: clock_4s port map (clk_in => clk, rst => rst, clk_out =>sclk);
    Moore: Detector_01101_Moore port map (clk => sclk, rst => rst, a=> a, led1 => sled(0));
    Mealy: Detector_01111_Mealy port map (clk => sclk, rst => rst, a=> a, led2 => sled(1));
    led(0) <= sled(0);
    led(1) <= sled(1);
    led(2) <= sclk;
end Behavioral;
