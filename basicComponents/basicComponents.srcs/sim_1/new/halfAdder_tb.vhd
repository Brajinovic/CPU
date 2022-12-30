----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/30/2022 11:20:45 PM
-- Design Name: 
-- Module Name: halfAdder_tb - Behavioral
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

entity halfAdder_tb is
--  Port ( );
end halfAdder_tb;

architecture Behavioral of halfAdder_tb is
    component halfAdder
        Port(
            a, b: in std_logic;
            s, cout: out std_logic
        );
    end component;
    signal a, b, s, cout: std_logic;
begin
    s1: halfAdder port map(a => a, b => b, s => s, cout => cout);
    stimulus: process
    begin
        a <= '0';
        b <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        wait for 10 ns;
    end process;
end Behavioral;
