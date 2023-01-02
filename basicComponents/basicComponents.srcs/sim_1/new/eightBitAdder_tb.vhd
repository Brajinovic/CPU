----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2023 04:46:05 PM
-- Design Name: 
-- Module Name: eightBitAdder_tb - Behavioral
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

entity eightBitAdder_tb is
--  Port ( );
end eightBitAdder_tb;

architecture Behavioral of eightBitAdder_tb is
    component eightBitAdder is
        port(
            a, b: in std_logic_vector(7 downto 0);
            r: out std_logic_vector(7 downto 0);
            cf: out std_logic
            );
    end component;
    signal a, b, r: std_logic_vector(7 downto 0);
    signal cf: std_logic;
begin
    s1: eightBitAdder port map(a => a, b => b, r => r, cf => cf);
    stimulus: process
    begin
    a <= "11111111";
    b <= "00000111";
    
    wait for 10 ns;
    end process;

end Behavioral;
