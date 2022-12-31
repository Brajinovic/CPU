----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2022 04:37:02 PM
-- Design Name: 
-- Module Name: dFlipFlop_tb - Behavioral
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

entity dFlipFlop_tb is
--  Port ( );
end dFlipFlop_tb;

architecture Behavioral of dFlipFlop_tb is
    component dFlipFlop
        Port(
            d, cp, reset, en: in std_logic;
            q, qn: out std_logic
        );
    end component;
    signal d, reset, en, q, qn: std_logic;
    signal cp: std_logic := '0';
    
    begin
        s1: dFlipFlop port map(d => d, cp => cp, reset => reset, en => en, q => q, qn => qn);
        cp <= not cp after 1 ns;
        stimulus: process
            begin
            en <= '1';
            
            d <= '1';
            wait for 10 ns;
            
            d <= '0';
            wait for 10 ns;
            
            d <= '1';
            reset <= '1';
            wait for 10 ns;
            
            reset <= '0';
            wait for 10 ns;
            
            d <= '1';
            wait for 10 ns;
            
            en <= '0';
            wait for 10 ns;
        end process; 
    
end Behavioral;
