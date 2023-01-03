----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2023 07:51:08 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
  Port ( 
    a, b: in std_logic_vector(7 downto 0);
    sel: in std_logic_vector( 1 downto 0);
    r: out std_logic_vector(7 downto 0);
    cf: out std_logic
  );
end alu;

architecture Behavioral of alu is
    signal addition, subtraction, comparison: std_logic_vector(7 downto 0);
begin
    s0: entity work.eightBitAdder port map(a => a, b => b, r => addition, cf => cf);
    s1: entity work.eightBitSubtractor port map(a => a, b => b, r => subtraction);
    s2: entity work.eightBitComparator port map(a => a, b => b, r => comparison);
    process
    begin
        if(sel = "00")then
            r <= addition;
        elsif(sel = "01")then
            r <= subtraction;
            cf <= '0';
        elsif(sel = "10")then
            r <= comparison;
            cf <= '0';
        end if;
        wait for 10 ns;
    end process;
end Behavioral;
