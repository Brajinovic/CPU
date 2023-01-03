----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2023 05:46:36 PM
-- Design Name: 
-- Module Name: eightBitComparator - Behavioral
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

entity eightBitComparator is
  Port ( 
    a, b: in std_logic_vector(7 downto 0);
    r: out std_logic_vector(7 downto 0)
  );
end eightBitComparator;

architecture Behavioral of eightBitComparator is

begin
    r <= a and b;

end Behavioral;
