----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2023 13:23:31
-- Design Name: 
-- Module Name: ConversorBinBcd - Behavioral
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

entity ConversorBinBcd is
    Port ( Bin : in std_logic_vector (10 downto 0);
           BCD : out std_logic_vector (13 downto 0));
end ConversorBinBcd;

architecture Behavioral of ConversorBinBcd is
    signal bcd_Intermediario: std_logic_vector (13 downto 0):= (others => '0');
begin
    process(Bin)
        variable i : integer:=0;
        variable bcda : unsigned(13 downto 0) := (others => '0');
        variable bint : unsigned(10 downto 0) := unsigned(bin);
    
        begin            
            for i in 0 to 10 loop  -- repeating 8 times.
                bcda(13 downto 1) := bcda(12 downto 0);  --shifting the bits.
                bcda(0) := bint(10);
                bint(10 downto 1) := bint(9 downto 0);
                bint(0) := '0';
                
                
                if(i < 10 and bcda(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
                    bcda(3 downto 0) := bcda(3 downto 0) + "0011";
                end if;
                
                if(i < 10 and bcda(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
                    bcda(7 downto 4) := bcda(7 downto 4) + "0011";
                end if;
                
                if(i < 10 and bcda(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
                    bcda(11 downto 8) := bcda(11 downto 8) + "0011";
                end if;
            end loop;
            
            bcd_Intermediario <= std_logic_vector(bcda);
        end process;
        
        bcd <= bcd_Intermediario;
end Behavioral;
