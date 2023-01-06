----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2023 05:49:24 PM
-- Design Name: 
-- Module Name: eightBitSubtractor_tb - Behavioral
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

entity eightBitSubtractor_tb is
--  Port ( );
end eightBitSubtractor_tb;

architecture Behavioral of eightBitSubtractor_tb is
    component eightBitSubtractor
        port(
            a, b: in std_logic_vector(7 downto 0) := "00000000";
            r: out std_logic_vector(7 downto 0)
        );
     end component;
     signal a, b, r: std_logic_vector(7 downto 0) := "00000000";
begin
    s0: eightBitSubtractor port map(a => a, b => b, r => r);
    stimulus:process
    begin
        a <= "11111111";
        b <= "11110000";
        wait for 10 ns;
    end process;
end Behavioral;
