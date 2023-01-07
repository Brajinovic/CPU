----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2023 09:03:51 PM
-- Design Name: 
-- Module Name: multiplexor_tb - Behavioral
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

entity multiplexor_tb is
--  Port ( );
end multiplexor_tb;

architecture Behavioral of multiplexor_tb is
    component multiplexor
        port(
            a, b, c: in std_logic_vector(7 downto 0);
            sel: in std_logic_vector(1 downto 0);
            r: out std_logic_vector(7 downto 0)
        );
    end component;
    signal a, b, c: std_logic_vector(7 downto 0);
    signal sel: std_logic_vector(1 downto 0);
    signal r: std_logic_vector(7 downto 0);
begin
    s0: multiplexor port map(a => a, b => b, c => c, sel => sel, r => r);
    
    process
    begin
        sel <= "00";
        a <= "00000001";
        b <= "00000010";
        c <= "00000011";
        wait for 10 ns;
        sel <= "01";
        a <= "00000001";
        b <= "00000010";
        c <= "00000011";
        wait for 10 ns;
        sel <= "10";
        a <= "00000001";
        b <= "00000010";
        c <= "00000011";
        wait for 10 ns;
        sel <= "11";
        a <= "00000001";
        b <= "00000010";
        c <= "00000011";
        wait for 10 ns;
        sel <= "00";
        a <= "00000001";
        b <= "00000010";
        c <= "00000011";
        wait for 10 ns;
    end process;

end Behavioral;
