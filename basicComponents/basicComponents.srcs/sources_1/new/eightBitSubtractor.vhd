----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2023 05:32:34 PM
-- Design Name: 
-- Module Name: eightBitSubtractor - Behavioral
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

entity eightBitSubtractor is
  Port ( 
    a, b: in std_logic_vector(7 downto 0):= "00000000";
    r: out std_logic_vector(7 downto 0)
  );
end eightBitSubtractor; 

architecture Behavioral of eightBitSubtractor is
    signal firstComplement: std_logic_vector(7 downto 0);
    signal secondComplement: std_logic_vector(7 downto 0);
    signal one: std_logic_vector(7 downto 0) := "00000001";
    signal cf, cf2: std_logic;
begin
    one <= "00000001";
    firstComplement <= b xor "11111111";
    s0: entity work.eightBitAdder port map(a => firstComplement, b => one, r => secondComplement, cf => cf);
    s1: entity work.eightBitAdder port map(a => a, b => secondComplement, r => r, cf => cf2);

end Behavioral;
