----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2023 08:19:28 PM
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
    component alu 
        port(
            a, b: in std_logic_vector(7 downto 0);
            sel: in std_logic_vector(1 downto 0) := "00";
            r: out std_logic_vector(7 downto 0);
            cf: out std_logic 
            );
    end component;
    signal a, b, r: std_logic_vector(7 downto 0);
    signal sel: std_logic_vector(1 downto 0);
    signal cf: std_logic;
begin  
    s0: alu port map(a => a, b => b, r => r, cf => cf);
    stimulus:process
    begin
        sel <= "00";
        a <= "00001111";
        b <= "11110000";
        wait for 10 ns;                  
        sel <= "01";
        a <= "11111111";
        b <= "11110000";
        wait for 10 ns;
        sel <= "00";
        a <= "11111111";
        b <= "11110000";
        wait for 10 ns;
        sel <= "10";
        a <= "11111111";
        b <= "11110000";
        wait for 10 ns;
    end process;

end Behavioral;
