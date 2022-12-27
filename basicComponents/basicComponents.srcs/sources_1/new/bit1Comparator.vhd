----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2022 03:49:58 PM
-- Design Name: 
-- Module Name: 1bitComparator - Behavioral
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

entity bit1Comparator is
    port(
        i0, i1: in std_logic;
        eq: out std_logic
    );
end bit1Comparator;

architecture Behavioral of bit1Comparator is
    signal p0, p1: std_logic;
begin
    eq <= p0 or p1;
    p0 <= (not i0) and (not i1);
    p1 <= i0 and i1;

end Behavioral;
