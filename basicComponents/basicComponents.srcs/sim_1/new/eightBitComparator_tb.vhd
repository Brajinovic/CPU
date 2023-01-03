----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2023 05:49:30 PM
-- Design Name: 
-- Module Name: eightBitComparator_tb - Behavioral
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

entity eightBitComparator_tb is
--  Port ( );
end eightBitComparator_tb;

architecture Behavioral of eightBitComparator_tb is
    component eightBitComparator
        port(
            a, b: in std_logic_vector(7 downto 0);
            r: out std_logic_vector(7 downto 0)
        );
    end component;
    signal a, b, r: std_logic_vector(7 downto 0);
 

begin
    s0: eightBitComparator port map(a => a, b => b, r => r);
    stimulus: process
        begin
        a <= "00001000";
        b <= "00001000";
        wait for 10 ns;
        
    end process;

end Behavioral;
