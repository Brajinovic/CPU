----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2022 05:11:26 PM
-- Design Name: 
-- Module Name: fullAdder_tb - Behavioral
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

entity fullAdder_tb is
--  Port ( );
end fullAdder_tb;

architecture Behavioral of fullAdder_tb is
    component fullAdder
        Port(
            a, b, cin: in std_logic;
            s, cout: out std_logic
        );
    end component;
    signal a, b, cin, s, cout: std_logic :='0';
begin
    s1: fullAdder port map(a => a, b => b, cin => cin, s => s, cout => cout);
    stimulus: process
        begin
        
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
        
        
    end process;
end Behavioral;
